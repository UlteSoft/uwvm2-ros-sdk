/// @file records.swift
/// @brief Preserve the complete original dobot/ros2_v4 canonical value domain.
/// @details The selected domain contains 250 complete record/components and 554 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Dobot_msgs_v4MsgRobotStatus: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_eee706b4ec3949d677c44797c59b343856c3fee77526ffc53ed2d4b5f94f62de"
  public static let nativeType = "dobot_msgs_v4/msg/RobotStatus"
  public static let nativeIdentity: String? = nil
  public var `is_enable`: Bool = false
  public var `is_connected`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`is_enable`)
    try w.boolean(self.`is_connected`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4MsgRobotStatus {
    var v = Ros2Dobot_msgs_v4MsgRobotStatus()
    v.`is_enable` = try r.boolean()
    v.`is_connected` = try r.boolean()
    return v
  }
}
public struct Ros2Dobot_msgs_v4MsgToolVectorActual: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_2d0771f8fdeb4e475f6e411b0193f8ecc4aaba32e344f16b641d3c5bbe682b4d"
  public static let nativeType = "dobot_msgs_v4/msg/ToolVectorActual"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4MsgToolVectorActual {
    var v = Ros2Dobot_msgs_v4MsgToolVectorActual()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAI_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bdbc80f3e76a6774e837d87435329a76b10e34cc5d9cb18b98050dc3359159bb"
  public static let nativeType = "dobot_msgs_v4/srv/AI_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAI_Request {
    var v = Ros2Dobot_msgs_v4SrvAI_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAI_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5fbdce37610593de2a03d2f49cc02766663a8622a20f8e2347454e778ea075b4"
  public static let nativeType = "dobot_msgs_v4/srv/AI_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAI_Response {
    var v = Ros2Dobot_msgs_v4SrvAI_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAO_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5078d8712b23ba062ad643216ba7e1affdf4bf590b183ad14b536081d45ab3e5"
  public static let nativeType = "dobot_msgs_v4/srv/AO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAO_Request {
    var v = Ros2Dobot_msgs_v4SrvAO_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAO_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8011a322470545bc19910e6d56fb7254c3d82799a5080d751ea6ae042b658c9c"
  public static let nativeType = "dobot_msgs_v4/srv/AO_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAO_Response {
    var v = Ros2Dobot_msgs_v4SrvAO_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAOInstant_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_628b66109b5b38d9db98cdc855626f7213909027f511674c2653b72483ac3414"
  public static let nativeType = "dobot_msgs_v4/srv/AOInstant_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAOInstant_Request
  {
    var v = Ros2Dobot_msgs_v4SrvAOInstant_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAOInstant_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f4647c9dfddea33b375f95ef624306bf28d127245a4576f8840973cc63dca5e8"
  public static let nativeType = "dobot_msgs_v4/srv/AOInstant_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAOInstant_Response
  {
    var v = Ros2Dobot_msgs_v4SrvAOInstant_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAccJ_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_248a82af3c8962079ec85dd3f8ade486f0887d49e8a357df575f98f47ffef734"
  public static let nativeType = "dobot_msgs_v4/srv/AccJ_Request"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAccJ_Request {
    var v = Ros2Dobot_msgs_v4SrvAccJ_Request()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAccJ_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9be895251d37fb27d4831f43cd8266e4d706de267d7c3940c1dd67a741daa588"
  public static let nativeType = "dobot_msgs_v4/srv/AccJ_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAccJ_Response {
    var v = Ros2Dobot_msgs_v4SrvAccJ_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAccL_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bcd179d618549545e1b376f277a5adcae950aa3175613f9d77a75faf4d625d79"
  public static let nativeType = "dobot_msgs_v4/srv/AccL_Request"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAccL_Request {
    var v = Ros2Dobot_msgs_v4SrvAccL_Request()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvAccL_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1303a7daae664e089cd34186755f63a48f351e378a42f13eb14b574b29739920"
  public static let nativeType = "dobot_msgs_v4/srv/AccL_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvAccL_Response {
    var v = Ros2Dobot_msgs_v4SrvAccL_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvArc_Request: Canonical {
  public static let maximumWireBytes = 4261
  public static let codecIdentity =
    "UWVMROS1_3b6cd15f881546de8f56ceee68e65730452c66b5114cfbf6b769917adf1d7fb0"
  public static let nativeType = "dobot_msgs_v4/srv/Arc_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `d2`: Double = 0
  public var `e2`: Double = 0
  public var `f2`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    try w.float64(self.`d2`)
    try w.float64(self.`e2`)
    try w.float64(self.`f2`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvArc_Request {
    var v = Ros2Dobot_msgs_v4SrvArc_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    v.`d2` = try r.float64()
    v.`e2` = try r.float64()
    v.`f2` = try r.float64()
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvArc_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e018ed128ffdad09c6c99ce071b191d7fe55f806026249a8d3172e55a00bfc58"
  public static let nativeType = "dobot_msgs_v4/srv/Arc_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvArc_Response {
    var v = Ros2Dobot_msgs_v4SrvArc_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvBrakeControl_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e6a5156fbf4ad3e5934d8944aa1a2d2558a869e85484117ed7d7005cc7fe4aff"
  public static let nativeType = "dobot_msgs_v4/srv/BrakeControl_Request"
  public static let nativeIdentity: String? = nil
  public var `axis_id`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axis_id`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvBrakeControl_Request
  {
    var v = Ros2Dobot_msgs_v4SrvBrakeControl_Request()
    v.`axis_id` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvBrakeControl_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e614c144b2ffa2db3c2bdd51ee91c8764dcbeba212b0a6fa84b115bcdd90066d"
  public static let nativeType = "dobot_msgs_v4/srv/BrakeControl_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvBrakeControl_Response
  {
    var v = Ros2Dobot_msgs_v4SrvBrakeControl_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCP_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5b50f0e2818dcb92b710256b11f5dac64514ceda991b539d39e250fa7ebcaead"
  public static let nativeType = "dobot_msgs_v4/srv/CP_Request"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCP_Request {
    var v = Ros2Dobot_msgs_v4SrvCP_Request()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCP_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0a5b672966243045235fa5fd51f9aaad2dd127baf8223dbd7fa4fe10dc9d0c62"
  public static let nativeType = "dobot_msgs_v4/srv/CP_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCP_Response {
    var v = Ros2Dobot_msgs_v4SrvCP_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCalcTool_Request: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_4962e0dd8c306af10844fe93e0cad24f290bae794ed8730d38a3540b50e261b5"
  public static let nativeType = "dobot_msgs_v4/srv/CalcTool_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `matrix`: Int32 = 0
  public var `offset`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`matrix`)
    try w.string(self.`offset`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCalcTool_Request {
    var v = Ros2Dobot_msgs_v4SrvCalcTool_Request()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCalcTool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7809dd31ed483c5a1edaf7d5ccdc60741a9936739c2eef6608180580a91461de"
  public static let nativeType = "dobot_msgs_v4/srv/CalcTool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCalcTool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvCalcTool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCalcUser_Request: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_4064b15154e37f79d354d6553feab616d162f0b2401dec4ebeebe85572e6b735"
  public static let nativeType = "dobot_msgs_v4/srv/CalcUser_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `matrix`: Int32 = 0
  public var `offset`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`matrix`)
    try w.string(self.`offset`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCalcUser_Request {
    var v = Ros2Dobot_msgs_v4SrvCalcUser_Request()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCalcUser_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_082fa64dc008e07ace128e2681f18c3eec3ad0a3af15f07915868dd04a8f2196"
  public static let nativeType = "dobot_msgs_v4/srv/CalcUser_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCalcUser_Response
  {
    var v = Ros2Dobot_msgs_v4SrvCalcUser_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovC_Request: Canonical {
  public static let maximumWireBytes = 4308
  public static let codecIdentity =
    "UWVMROS1_8fe5accb27df28e70af66f59cec2d3366c0c5d7f17bef94ddd86446a69054312"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovC_Request"
  public static let nativeIdentity: String? = nil
  public var `point1_j1`: Double = 0
  public var `point1_j2`: Double = 0
  public var `point1_j3`: Double = 0
  public var `point1_j4`: Double = 0
  public var `point1_j5`: Double = 0
  public var `point1_j6`: Double = 0
  public var `point2_j1`: Double = 0
  public var `point2_j2`: Double = 0
  public var `point2_j3`: Double = 0
  public var `point2_j4`: Double = 0
  public var `point2_j5`: Double = 0
  public var `point2_j6`: Double = 0
  public var `point3_j1`: Double = 0
  public var `point3_j2`: Double = 0
  public var `point3_j3`: Double = 0
  public var `point3_j4`: Double = 0
  public var `point3_j5`: Double = 0
  public var `point3_j6`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`point1_j1`)
    try w.float64(self.`point1_j2`)
    try w.float64(self.`point1_j3`)
    try w.float64(self.`point1_j4`)
    try w.float64(self.`point1_j5`)
    try w.float64(self.`point1_j6`)
    try w.float64(self.`point2_j1`)
    try w.float64(self.`point2_j2`)
    try w.float64(self.`point2_j3`)
    try w.float64(self.`point2_j4`)
    try w.float64(self.`point2_j5`)
    try w.float64(self.`point2_j6`)
    try w.float64(self.`point3_j1`)
    try w.float64(self.`point3_j2`)
    try w.float64(self.`point3_j3`)
    try w.float64(self.`point3_j4`)
    try w.float64(self.`point3_j5`)
    try w.float64(self.`point3_j6`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovC_Request
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovC_Request()
    v.`point1_j1` = try r.float64()
    v.`point1_j2` = try r.float64()
    v.`point1_j3` = try r.float64()
    v.`point1_j4` = try r.float64()
    v.`point1_j5` = try r.float64()
    v.`point1_j6` = try r.float64()
    v.`point2_j1` = try r.float64()
    v.`point2_j2` = try r.float64()
    v.`point2_j3` = try r.float64()
    v.`point2_j4` = try r.float64()
    v.`point2_j5` = try r.float64()
    v.`point2_j6` = try r.float64()
    v.`point3_j1` = try r.float64()
    v.`point3_j2` = try r.float64()
    v.`point3_j3` = try r.float64()
    v.`point3_j4` = try r.float64()
    v.`point3_j5` = try r.float64()
    v.`point3_j6` = try r.float64()
    let rawcount18 = try r.integer(UInt32.self)
    guard rawcount18 <= 16 else { throw RosError(22) }
    let count18 = Int(rawcount18)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovC_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_4ff22013962988c5d1a2660d90b0f0b5df9353f0352842567ab5355a6ce2c504"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovC_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovC_Response
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovC_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request: Canonical {
  public static let maximumWireBytes = 4260
  public static let codecIdentity =
    "UWVMROS1_4edc7c7b03747ade62995528fb8a0a54fd4ab166b427e8f2856117651d212e83"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovJ_Request"
  public static let nativeIdentity: String? = nil
  public var `point1_j1`: Double = 0
  public var `point1_j2`: Double = 0
  public var `point1_j3`: Double = 0
  public var `point1_j4`: Double = 0
  public var `point1_j5`: Double = 0
  public var `point1_j6`: Double = 0
  public var `point2_j1`: Double = 0
  public var `point2_j2`: Double = 0
  public var `point2_j3`: Double = 0
  public var `point2_j4`: Double = 0
  public var `point2_j5`: Double = 0
  public var `point2_j6`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`point1_j1`)
    try w.float64(self.`point1_j2`)
    try w.float64(self.`point1_j3`)
    try w.float64(self.`point1_j4`)
    try w.float64(self.`point1_j5`)
    try w.float64(self.`point1_j6`)
    try w.float64(self.`point2_j1`)
    try w.float64(self.`point2_j2`)
    try w.float64(self.`point2_j3`)
    try w.float64(self.`point2_j4`)
    try w.float64(self.`point2_j5`)
    try w.float64(self.`point2_j6`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request()
    v.`point1_j1` = try r.float64()
    v.`point1_j2` = try r.float64()
    v.`point1_j3` = try r.float64()
    v.`point1_j4` = try r.float64()
    v.`point1_j5` = try r.float64()
    v.`point1_j6` = try r.float64()
    v.`point2_j1` = try r.float64()
    v.`point2_j2` = try r.float64()
    v.`point2_j3` = try r.float64()
    v.`point2_j4` = try r.float64()
    v.`point2_j5` = try r.float64()
    v.`point2_j6` = try r.float64()
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 16 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_57242fb5b7c9947263615b398a413491c9c643a61f9f7ad0e385fa8edb23b842"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovJ_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovL_Request: Canonical {
  public static let maximumWireBytes = 4260
  public static let codecIdentity =
    "UWVMROS1_cc1d518a7841cc1e6ae2dc6fe5af528957806e9ced225fc5ebec644b4775c022"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovL_Request"
  public static let nativeIdentity: String? = nil
  public var `point1_j1`: Double = 0
  public var `point1_j2`: Double = 0
  public var `point1_j3`: Double = 0
  public var `point1_j4`: Double = 0
  public var `point1_j5`: Double = 0
  public var `point1_j6`: Double = 0
  public var `point2_j1`: Double = 0
  public var `point2_j2`: Double = 0
  public var `point2_j3`: Double = 0
  public var `point2_j4`: Double = 0
  public var `point2_j5`: Double = 0
  public var `point2_j6`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`point1_j1`)
    try w.float64(self.`point1_j2`)
    try w.float64(self.`point1_j3`)
    try w.float64(self.`point1_j4`)
    try w.float64(self.`point1_j5`)
    try w.float64(self.`point1_j6`)
    try w.float64(self.`point2_j1`)
    try w.float64(self.`point2_j2`)
    try w.float64(self.`point2_j3`)
    try w.float64(self.`point2_j4`)
    try w.float64(self.`point2_j5`)
    try w.float64(self.`point2_j6`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovL_Request
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovL_Request()
    v.`point1_j1` = try r.float64()
    v.`point1_j2` = try r.float64()
    v.`point1_j3` = try r.float64()
    v.`point1_j4` = try r.float64()
    v.`point1_j5` = try r.float64()
    v.`point1_j6` = try r.float64()
    v.`point2_j1` = try r.float64()
    v.`point2_j2` = try r.float64()
    v.`point2_j3` = try r.float64()
    v.`point2_j4` = try r.float64()
    v.`point2_j5` = try r.float64()
    v.`point2_j6` = try r.float64()
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 16 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCheckOddMovL_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_13fc61c35c8f6a6a0cc56cc7aa5b72060d757a61c9c388992d1e3eee2db8f6da"
  public static let nativeType = "dobot_msgs_v4/srv/CheckOddMovL_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvCheckOddMovL_Response
  {
    var v = Ros2Dobot_msgs_v4SrvCheckOddMovL_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCircle_Request: Canonical {
  public static let maximumWireBytes = 4265
  public static let codecIdentity =
    "UWVMROS1_43b8e7a31172e3b965dfc6ef6d1c8867c6151a2ffecce5416c56d4c15a95ca6e"
  public static let nativeType = "dobot_msgs_v4/srv/Circle_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `d2`: Double = 0
  public var `e2`: Double = 0
  public var `f2`: Double = 0
  public var `count`: Int32 = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    try w.float64(self.`d2`)
    try w.float64(self.`e2`)
    try w.float64(self.`f2`)
    try w.integer(self.`count`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCircle_Request {
    var v = Ros2Dobot_msgs_v4SrvCircle_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    v.`d2` = try r.float64()
    v.`e2` = try r.float64()
    v.`f2` = try r.float64()
    v.`count` = try r.integer(Int32.self)
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 16 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvCircle_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9f6bc32bc392e71c29f09360619c6157e2b5b06221ab124f4930cb3abce9ca31"
  public static let nativeType = "dobot_msgs_v4/srv/Circle_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvCircle_Response {
    var v = Ros2Dobot_msgs_v4SrvCircle_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvClearError_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b1688c12ed6b3a7d1dd48aa672424d279eeb28e19d63417e95daa991c8d0dbc6"
  public static let nativeType = "dobot_msgs_v4/srv/ClearError_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvClearError_Request
  {
    var v = Ros2Dobot_msgs_v4SrvClearError_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvClearError_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7e609ead650473c695d52a83ff28e19bebd3e04672c38eedd32077bc8f5f3b71"
  public static let nativeType = "dobot_msgs_v4/srv/ClearError_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvClearError_Response
  {
    var v = Ros2Dobot_msgs_v4SrvClearError_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvContinue_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c1dc157f99d5d6bbd3ac0c035b601f651c8daaf5d8a4f0d56d1cc338e588e20a"
  public static let nativeType = "dobot_msgs_v4/srv/Continue_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvContinue_Request {
    var v = Ros2Dobot_msgs_v4SrvContinue_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvContinue_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_691cb70f5534d1a2786105456dd8a2fa1a587952b570b746f4ca2ff7f98fb897"
  public static let nativeType = "dobot_msgs_v4/srv/Continue_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvContinue_Response
  {
    var v = Ros2Dobot_msgs_v4SrvContinue_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDI_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eb44c535be237d52a065df43829612a2e5d95b29223580dc03f134c1e249bdfc"
  public static let nativeType = "dobot_msgs_v4/srv/DI_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDI_Request {
    var v = Ros2Dobot_msgs_v4SrvDI_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDI_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_eaef4431d8260336925a2351d62a3257488b5984f509e445bf62c66fe1f46fa2"
  public static let nativeType = "dobot_msgs_v4/srv/DI_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDI_Response {
    var v = Ros2Dobot_msgs_v4SrvDI_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDIGroup_Request: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_45a371932213f97947cd5240b831d5713aa6288210ce7201d84a6c19ce5c082f"
  public static let nativeType = "dobot_msgs_v4/srv/DIGroup_Request"
  public static let nativeIdentity: String? = nil
  public var `args`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`args`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDIGroup_Request {
    var v = Ros2Dobot_msgs_v4SrvDIGroup_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`args` = []
    v.`args`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`args`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDIGroup_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_8353adc015354e736091c4350a030f44506659d2024f4a06d076b02b31e37650"
  public static let nativeType = "dobot_msgs_v4/srv/DIGroup_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDIGroup_Response {
    var v = Ros2Dobot_msgs_v4SrvDIGroup_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDIGroupDEC_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_05aed569214589409cc5e8b99482cd7ddaf4fc7fecd761030b27f17f4c5e17a8"
  public static let nativeType = "dobot_msgs_v4/srv/DIGroupDEC_Request"
  public static let nativeIdentity: String? = nil
  public var `group`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`group`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDIGroupDEC_Request
  {
    var v = Ros2Dobot_msgs_v4SrvDIGroupDEC_Request()
    v.`group` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDIGroupDEC_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_81cac737811c76967ba0d4c09654e7f9b2fc7131505b82c74594f0bfa76b4d40"
  public static let nativeType = "dobot_msgs_v4/srv/DIGroupDEC_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDIGroupDEC_Response
  {
    var v = Ros2Dobot_msgs_v4SrvDIGroupDEC_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDO_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_a881682fa874e49e7732ccc5a28dd07c48c3f7669aba865393eaa9912164c431"
  public static let nativeType = "dobot_msgs_v4/srv/DO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public var `time`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
    try w.integer(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDO_Request {
    var v = Ros2Dobot_msgs_v4SrvDO_Request()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    v.`time` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDO_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_245660015aa11d9c53c31131157a3447b947963c8759a1137ecba9bfd05378d5"
  public static let nativeType = "dobot_msgs_v4/srv/DO_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDO_Response {
    var v = Ros2Dobot_msgs_v4SrvDO_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOGroup_Request: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_98f0df1adff5f79f5dee48e9e6c3fb3fe1dc31f536c73e3c6eaaaf5f556a7823"
  public static let nativeType = "dobot_msgs_v4/srv/DOGroup_Request"
  public static let nativeIdentity: String? = nil
  public var `args`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`args`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDOGroup_Request {
    var v = Ros2Dobot_msgs_v4SrvDOGroup_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`args` = []
    v.`args`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`args`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOGroup_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4c34aafaa069fc5738e9d4d7c2625e387977110db900bba8151ebbafe42b20db"
  public static let nativeType = "dobot_msgs_v4/srv/DOGroup_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDOGroup_Response {
    var v = Ros2Dobot_msgs_v4SrvDOGroup_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOGroupDEC_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2402f7f4195746e5c3fa2993a0f9100d05dc4f24546866f65268898cb118c3d8"
  public static let nativeType = "dobot_msgs_v4/srv/DOGroupDEC_Request"
  public static let nativeIdentity: String? = nil
  public var `group`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`group`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDOGroupDEC_Request
  {
    var v = Ros2Dobot_msgs_v4SrvDOGroupDEC_Request()
    v.`group` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOGroupDEC_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_497c31bed5a6d9b634beb984ebc4ceb9ba1cf64be30d63844a33bd7f231b5c9f"
  public static let nativeType = "dobot_msgs_v4/srv/DOGroupDEC_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDOGroupDEC_Response
  {
    var v = Ros2Dobot_msgs_v4SrvDOGroupDEC_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOInstant_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5052cd81fbe27ce716965aa008daec0c8c052cdcca5355dc3b71b16655b41cd7"
  public static let nativeType = "dobot_msgs_v4/srv/DOInstant_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDOInstant_Request
  {
    var v = Ros2Dobot_msgs_v4SrvDOInstant_Request()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDOInstant_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c654a28a690ca9412e2967ab9ff1cd5c831ce42ab2f38cf813bbe44465daf998"
  public static let nativeType = "dobot_msgs_v4/srv/DOInstant_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvDOInstant_Response
  {
    var v = Ros2Dobot_msgs_v4SrvDOInstant_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDisableRobot_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7882b1f1429c23acbe145b8ce69596107d451a85a47e8215f5f27ee909d80c87"
  public static let nativeType = "dobot_msgs_v4/srv/DisableRobot_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDisableRobot_Request
  {
    var v = Ros2Dobot_msgs_v4SrvDisableRobot_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDisableRobot_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_785b8a705af89d59fbe4055cd50414024ddf8d95e01ae16d32f17cca5d10f878"
  public static let nativeType = "dobot_msgs_v4/srv/DisableRobot_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDisableRobot_Response
  {
    var v = Ros2Dobot_msgs_v4SrvDisableRobot_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDragSensivity_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_bdd47b9cde315a72fbf0d4ce40d44bc6fdc6d0706f94cbba7c51454232e8652a"
  public static let nativeType = "dobot_msgs_v4/srv/DragSensivity_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDragSensivity_Request
  {
    var v = Ros2Dobot_msgs_v4SrvDragSensivity_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvDragSensivity_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_128b7bef7b3fddf68eba6aeeaeac41d450bedab6bf3d18be366f456970f7fecb"
  public static let nativeType = "dobot_msgs_v4/srv/DragSensivity_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvDragSensivity_Response
  {
    var v = Ros2Dobot_msgs_v4SrvDragSensivity_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEmergencyStop_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c3613b55e06feb34dc533222386ac1f680e50218325331fe1a23d6d0f926a4a6"
  public static let nativeType = "dobot_msgs_v4/srv/EmergencyStop_Request"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEmergencyStop_Request
  {
    var v = Ros2Dobot_msgs_v4SrvEmergencyStop_Request()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEmergencyStop_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_97e6abce2a240c971cc4281894dc339642aa6bd5e87099696f66ed20bbd265b9"
  public static let nativeType = "dobot_msgs_v4/srv/EmergencyStop_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEmergencyStop_Response
  {
    var v = Ros2Dobot_msgs_v4SrvEmergencyStop_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableFTSensor_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eedf535c97390b7221afb06203a23b2e515fdc6d84d0458a2440270939c81896"
  public static let nativeType = "dobot_msgs_v4/srv/EnableFTSensor_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableFTSensor_Request
  {
    var v = Ros2Dobot_msgs_v4SrvEnableFTSensor_Request()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableFTSensor_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a706bb66974028716f4c39597ad0d103f8e31264cf137cb9ab173955e892c68e"
  public static let nativeType = "dobot_msgs_v4/srv/EnableFTSensor_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableFTSensor_Response
  {
    var v = Ros2Dobot_msgs_v4SrvEnableFTSensor_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableRobot_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1b6c1b223ff41b41fe94b4279c7659913f8bb9bcbf2deca33db3560833c3395d"
  public static let nativeType = "dobot_msgs_v4/srv/EnableRobot_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableRobot_Request
  {
    var v = Ros2Dobot_msgs_v4SrvEnableRobot_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableRobot_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e12accb5c027987874ee96f644bb325770f7c4aab56b85ae4c1b318402299f3f"
  public static let nativeType = "dobot_msgs_v4/srv/EnableRobot_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableRobot_Response
  {
    var v = Ros2Dobot_msgs_v4SrvEnableRobot_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2bb1a6b02d736fed3c8efd58a154bd1f5531f78e77ed97d41bc1a009021bd6bd"
  public static let nativeType = "dobot_msgs_v4/srv/EnableSafeSkin_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request
  {
    var v = Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_41602848b5137aea415e29ccfcaf413f098050f535f6b4030bd8e42efac7665c"
  public static let nativeType = "dobot_msgs_v4/srv/EnableSafeSkin_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response
  {
    var v = Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEndRTOffset_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_33b058e6146ce66391d69a891b0c06fe86c92d6923a0db32845d1629c7f5ce45"
  public static let nativeType = "dobot_msgs_v4/srv/EndRTOffset_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEndRTOffset_Request
  {
    var v = Ros2Dobot_msgs_v4SrvEndRTOffset_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvEndRTOffset_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4327bcad0a32d1c6d9f46b27f106f10d9264c0aaefe9ec657c23e0890c803659"
  public static let nativeType = "dobot_msgs_v4/srv/EndRTOffset_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvEndRTOffset_Response
  {
    var v = Ros2Dobot_msgs_v4SrvEndRTOffset_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ae2cac85626fcfc41d0db663f11e16441be6aef482e44905ecf808b9e35c2aff"
  public static let nativeType = "dobot_msgs_v4/srv/FCCollisionSwitch_Request"
  public static let nativeIdentity: String? = nil
  public var `enable`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request()
    v.`enable` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1bf6878cb66870fd62fcd4f860aea8e2dcc9b49e1951227946395c4182118602"
  public static let nativeType = "dobot_msgs_v4/srv/FCCollisionSwitch_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCForceMode_Request: Canonical {
  public static let maximumWireBytes = 60
  public static let codecIdentity =
    "UWVMROS1_347d80606d3f49539d04e22f4cb496f6500a3cb61f58984e8866a3ca87ae0f54"
  public static let nativeType = "dobot_msgs_v4/srv/FCForceMode_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public var `fx`: Int32 = 0
  public var `fy`: Int32 = 0
  public var `fz`: Int32 = 0
  public var `frx`: Int32 = 0
  public var `fry`: Int32 = 0
  public var `frz`: Int32 = 0
  public var `reference`: Int32 = -1
  public var `user`: Int32 = -1
  public var `tool`: Int32 = -1
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
    try w.integer(self.`fx`)
    try w.integer(self.`fy`)
    try w.integer(self.`fz`)
    try w.integer(self.`frx`)
    try w.integer(self.`fry`)
    try w.integer(self.`frz`)
    try w.integer(self.`reference`)
    try w.integer(self.`user`)
    try w.integer(self.`tool`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCForceMode_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCForceMode_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    v.`fx` = try r.integer(Int32.self)
    v.`fy` = try r.integer(Int32.self)
    v.`fz` = try r.integer(Int32.self)
    v.`frx` = try r.integer(Int32.self)
    v.`fry` = try r.integer(Int32.self)
    v.`frz` = try r.integer(Int32.self)
    v.`reference` = try r.integer(Int32.self)
    v.`user` = try r.integer(Int32.self)
    v.`tool` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCForceMode_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2531c8825fa91b29951a24f9d120fc6a3f7528dec2c342da49775b90e200c117"
  public static let nativeType = "dobot_msgs_v4/srv/FCForceMode_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCForceMode_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCForceMode_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCOff_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d17a82f5baa60795c8acac38b00fde67a0f4d867033b3110011c2e6bc43deb3e"
  public static let nativeType = "dobot_msgs_v4/srv/FCOff_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvFCOff_Request {
    var v = Ros2Dobot_msgs_v4SrvFCOff_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCOff_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_56192a7914a1838ca52a4638fc02254111dadc27e5a27d6d6e836a6f28a90497"
  public static let nativeType = "dobot_msgs_v4/srv/FCOff_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvFCOff_Response {
    var v = Ros2Dobot_msgs_v4SrvFCOff_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetDamping_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_31401b97a4ed6d45287aaaf6fdf4c71ec7b3480eb82ba2ef1def506c6627cc89"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetDamping_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetDamping_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetDamping_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetDamping_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1c380e2b7f9afe2fbc307f9af41e9f4fd94e037cef4293e120852680f8809e15"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetDamping_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetDamping_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetDamping_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetDeviation_Request: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_eec644d0993c1018f004c88b542b93da026cfc08bb3ec1b8d95f46489a0e0b51"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetDeviation_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public var `controltype`: Int32 = -1
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
    try w.integer(self.`controltype`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetDeviation_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetDeviation_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    v.`controltype` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetDeviation_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eaf9f396da64133c29f4ac19e7a5f9f656a1b133af71e32e7e9e9d66281c6d40"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetDeviation_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetDeviation_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetDeviation_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForce_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_7493fc71d24b454ee591581b5e344f5c01fd5ff049ded7b4b0094fe79819c105"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForce_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvFCSetForce_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForce_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForce_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_68bfe61ae9d274f3e61687b09d241c2552d9ec2bea02ad2352d108ed3f4019ba"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForce_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetForce_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForce_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_402fd98a518905b5bbb101e808b0e8152a544dc8eadab38899350c1c64dbeee7"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForceLimit_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a4087b717706babf5c3a324a1db478642f2e036b33a7fe14754caa202c4ed817"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForceLimit_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_10ecd33899ae99e0e6bc3768ebc9ab10daf2576ce247fc7ddf105745682bc940"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a3ae8b80fd5c157d301c2fa33d26f9718a144f0db34bf02c3bfa8dc2239f5c85"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetMass_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_088044ba8a56b2a9d5f039bb63bc5d504b04f31c017495321c48b8f4722d8ca3"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetMass_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvFCSetMass_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetMass_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetMass_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a6ba05a607a916335ac87ed5b41891438c444cd2df7c3f6ce5272d57436be3b6"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetMass_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvFCSetMass_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetMass_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetStiffness_Request: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_3bbb929308cafc25ac4c90ba32b20af933d45f3c7c61d9c49d7a64e92050fae9"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetStiffness_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetStiffness_Request
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetStiffness_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvFCSetStiffness_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7565e01faff246688f0c89b94f291c5b4da04ca79700bcbe63345d37a265d1b8"
  public static let nativeType = "dobot_msgs_v4/srv/FCSetStiffness_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvFCSetStiffness_Response
  {
    var v = Ros2Dobot_msgs_v4SrvFCSetStiffness_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvForceDriveMode_Request: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_aa09ac56979c790df88d8fb0afc7c327aa367baf60b472732e85efa2dfb66126"
  public static let nativeType = "dobot_msgs_v4/srv/ForceDriveMode_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Int32 = 0
  public var `y`: Int32 = 0
  public var `z`: Int32 = 0
  public var `rx`: Int32 = 0
  public var `ry`: Int32 = 0
  public var `rz`: Int32 = 0
  public var `user`: Int32 = -1
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`z`)
    try w.integer(self.`rx`)
    try w.integer(self.`ry`)
    try w.integer(self.`rz`)
    try w.integer(self.`user`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvForceDriveMode_Request
  {
    var v = Ros2Dobot_msgs_v4SrvForceDriveMode_Request()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`z` = try r.integer(Int32.self)
    v.`rx` = try r.integer(Int32.self)
    v.`ry` = try r.integer(Int32.self)
    v.`rz` = try r.integer(Int32.self)
    v.`user` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvForceDriveMode_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5eee21e54b22fe8fcdaed4fdaec7547e24223d6e37defe69222264a4b8dd3c6c"
  public static let nativeType = "dobot_msgs_v4/srv/ForceDriveMode_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvForceDriveMode_Response
  {
    var v = Ros2Dobot_msgs_v4SrvForceDriveMode_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_435dbee1e046067bfb927a0017648d9a0b8e515b0e289302fbbb46ef18ff4ee1"
  public static let nativeType = "dobot_msgs_v4/srv/ForceDriveSpeed_Request"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request
  {
    var v = Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d080dd4734667b1a4ce220e35957da4e080eab446c2f3d94725aceea6fe2b918"
  public static let nativeType = "dobot_msgs_v4/srv/ForceDriveSpeed_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response
  {
    var v = Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetAO_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e80faf08e52a92738db8426c2df23c5360e5efc2f301eb1c233872cec5b03c02"
  public static let nativeType = "dobot_msgs_v4/srv/GetAO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetAO_Request {
    var v = Ros2Dobot_msgs_v4SrvGetAO_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetAO_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_e55d3bf20a4305ad6125818cdb2380340afa7cd5f2e5d6350d2c8049b2520665"
  public static let nativeType = "dobot_msgs_v4/srv/GetAO_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetAO_Response {
    var v = Ros2Dobot_msgs_v4SrvGetAO_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetAngle_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c5cef38ae26f22408200cbedc759065a50b98823d68752aee96ec5bb996d0791"
  public static let nativeType = "dobot_msgs_v4/srv/GetAngle_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetAngle_Request {
    var v = Ros2Dobot_msgs_v4SrvGetAngle_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetAngle_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_1a8aad09efa2936be21e855bf0e258430954e9cd56ec97ae0fddbcd60316a3fa"
  public static let nativeType = "dobot_msgs_v4/srv/GetAngle_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetAngle_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetAngle_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetCoils_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_3b0c5613397c1e25669dd730bca4bfab5c89c9184691145a68224ec8e816cafe"
  public static let nativeType = "dobot_msgs_v4/srv/GetCoils_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetCoils_Request {
    var v = Ros2Dobot_msgs_v4SrvGetCoils_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetCoils_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_e1e2d843e743d8b7c502fc1438aef0ecd143ea6a51259473c62ba8854d256423"
  public static let nativeType = "dobot_msgs_v4/srv/GetCoils_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetCoils_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetCoils_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4702dc010e7dbf7b30975380598d466e2cdff81254748e7ff082a8a2b1ac75d6"
  public static let nativeType = "dobot_msgs_v4/srv/GetCurrentCommandId_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_d6c974daf9cd8e932b2703eff8b1ef824250f1a46b02ea24896da2f28554651b"
  public static let nativeType = "dobot_msgs_v4/srv/GetCurrentCommandId_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDO_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8a86fc4c758f3fda42ab46f5dcee90a64367d3a72fc71f3114ee703977bd0845"
  public static let nativeType = "dobot_msgs_v4/srv/GetDO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetDO_Request {
    var v = Ros2Dobot_msgs_v4SrvGetDO_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDO_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_f297f6291b049b2b494a482c2015d078bd5c8b8ab959ce0cdfe7d9197dd7b2ec"
  public static let nativeType = "dobot_msgs_v4/srv/GetDO_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetDO_Response {
    var v = Ros2Dobot_msgs_v4SrvGetDO_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDOGroup_Request: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_2f6687ad1635eac46215c0d31adc6ca141933ff8690443ffc665ca250dd53272"
  public static let nativeType = "dobot_msgs_v4/srv/GetDOGroup_Request"
  public static let nativeIdentity: String? = nil
  public var `index_group`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`index_group`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`index_group`.count))
    for e in self.`index_group` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetDOGroup_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetDOGroup_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`index_group` = []
    v.`index_group`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`index_group`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDOGroup_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_bd99607ad22d6b0a802b4a5bb986de95020acb10bde51c186fce9388e30f834b"
  public static let nativeType = "dobot_msgs_v4/srv/GetDOGroup_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetDOGroup_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetDOGroup_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f0ab9c764d7c8e5a54a53192530d1cb68aa9fcee20c2784fe97fdd4d9c398aed"
  public static let nativeType = "dobot_msgs_v4/srv/GetDOGroupDEC_Request"
  public static let nativeIdentity: String? = nil
  public var `group`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`group`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request()
    v.`group` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a77468074bad22900ccfc92a285ec968b065671dfdc56758ca5af319e5270967"
  public static let nativeType = "dobot_msgs_v4/srv/GetDOGroupDEC_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetError_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_dcc1abdb063c9e9d54f1de870df5b3147b7d6ab3717f70336e18de43bd7beb68"
  public static let nativeType = "dobot_msgs_v4/srv/GetError_Request"
  public static let nativeIdentity: String? = nil
  public var `language`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`language`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetError_Request {
    var v = Ros2Dobot_msgs_v4SrvGetError_Request()
    v.`language` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetError_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_1c980b444e4e71c178e5dbf1156cd70f58177b7a2267546912e4f719e95584d8"
  public static let nativeType = "dobot_msgs_v4/srv/GetError_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetError_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetError_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetErrorID_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e07250dedd39c3d3ba3b50ea2a585dd38219449c7793f0cc304cb839c9c3a2eb"
  public static let nativeType = "dobot_msgs_v4/srv/GetErrorID_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetErrorID_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetErrorID_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetErrorID_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_577dda014c2a5f5409b67bfb68c10812e2d5da1ea04d31545a7081b1b55ff0de"
  public static let nativeType = "dobot_msgs_v4/srv/GetErrorID_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetErrorID_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetErrorID_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetForce_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c25b42bb0f38b0f611a04602a00da76f410abbfb524dd1790a658068dd57d490"
  public static let nativeType = "dobot_msgs_v4/srv/GetForce_Request"
  public static let nativeIdentity: String? = nil
  public var `tool`: Int32 = -1
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`tool`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetForce_Request {
    var v = Ros2Dobot_msgs_v4SrvGetForce_Request()
    v.`tool` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetForce_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_3d557e76b135fde34e7978948d9fd00ea402ec6aaef3e40ad4fa769f16a6e23a"
  public static let nativeType = "dobot_msgs_v4/srv/GetForce_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetForce_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetForce_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetHoldRegs_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_05cca038598bcf95c62c13920afd392d2e10cf320abec879d941b47fab2adaa1"
  public static let nativeType = "dobot_msgs_v4/srv/GetHoldRegs_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `val_type`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`val_type`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetHoldRegs_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetHoldRegs_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`val_type` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetHoldRegs_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_400fb0dc428c94545bb348023209a5903f609cf43896885d540e054f5bc6870f"
  public static let nativeType = "dobot_msgs_v4/srv/GetHoldRegs_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetHoldRegs_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetHoldRegs_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInBits_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_0ae044a88038228f76c9b2e6b8477797bbde2adf3453cf2b8d406fa11fdd676d"
  public static let nativeType = "dobot_msgs_v4/srv/GetInBits_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetInBits_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetInBits_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInBits_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_fe612d58b5215dd0528436df1b962460ab006a00a85ca51d0626eac8cba3442b"
  public static let nativeType = "dobot_msgs_v4/srv/GetInBits_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetInBits_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetInBits_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInRegs_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_35ebc727edd3789dbb5c71ae403408c7d8998de0f150a183909274161c51a004"
  public static let nativeType = "dobot_msgs_v4/srv/GetInRegs_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `val_type`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`val_type`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetInRegs_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetInRegs_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`val_type` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInRegs_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_12f6551ed525b636f176db49f2ef060a4467f8c3265c90ccfddbb3e2419dd4d7"
  public static let nativeType = "dobot_msgs_v4/srv/GetInRegs_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetInRegs_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetInRegs_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputBool_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8cb60d63252fee7d2640b39ab9273a591d3e95a9392197fd14cfb24e92fd0d78"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputBool_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputBool_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputBool_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputBool_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_6ad8535a417098495d7934dfc6c722aab76737448f024df3b1f9fa66b669d3e1"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputBool_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputBool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputBool_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputFloat_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_db95cdfbc919beb1cdd511e4041a6f8d51b1261a1d542bf5dc7c3299f7955b69"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputFloat_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputFloat_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputFloat_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_e8c8c5db8f89fe88409abfa474e2825efd6daebf8c818b5cf2e5d3e06e169057"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputFloat_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputFloat_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputInt_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f5489590da6a7c9c66fa17439e4e163c45f668083c0e3506433f45edd912ac75"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputInt_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputInt_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetInputInt_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_1e0edd9be016e722b2421c32d50d739be0913cc648a7c9722c5319f6d87cd974"
  public static let nativeType = "dobot_msgs_v4/srv/GetInputInt_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetInputInt_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetInputInt_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputBool_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ae241253db833cc88fe41e76aedf59d5f04ecb6cb830bddf972e720496009cc7"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputBool_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputBool_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputBool_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputBool_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a45ff2c772129c849356b9322a4638850c511ceaa4a9baba0eb021ae92b3b0e0"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputBool_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputBool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputBool_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputFloat_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2426d08e3ef1a54486ed97d82f8df204a86d44dc2b1e305027de16d53ff4407f"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputFloat_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputFloat_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputFloat_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_28d795b33927ebd6f3346e47f8e1439fd747c12bca2698a5ae2bb5c131992f1e"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputFloat_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputFloat_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputInt_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e6df285298a742802f892b40303bb5a7f86e34bc66804c84216daf5e2cb20aa1"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputInt_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputInt_Request()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetOutputInt_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_06affe317be333b3f4be657ce2260e04e92936965a1f2250bfdd8d19462b4474"
  public static let nativeType = "dobot_msgs_v4/srv/GetOutputInt_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetOutputInt_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetOutputInt_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetPose_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_fff7c6517cef4df5570bbbb4bb5ce3feeb9d051bf7ba02d292836d3dd7bde76d"
  public static let nativeType = "dobot_msgs_v4/srv/GetPose_Request"
  public static let nativeIdentity: String? = nil
  public var `user`: Int32 = 0
  public var `tool`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`user`)
    try w.integer(self.`tool`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetPose_Request {
    var v = Ros2Dobot_msgs_v4SrvGetPose_Request()
    v.`user` = try r.integer(Int32.self)
    v.`tool` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetPose_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_bd64b61a545f7054e870f4abb48850ed4a668ac2435fd96d094c2888428c7c25"
  public static let nativeType = "dobot_msgs_v4/srv/GetPose_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetPose_Response {
    var v = Ros2Dobot_msgs_v4SrvGetPose_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetStartPose_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_943e44aedcb9f14338b3f5293aa7e2da2286429c0405724c1a510839aedbac33"
  public static let nativeType = "dobot_msgs_v4/srv/GetStartPose_Request"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetStartPose_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetStartPose_Request()
    v.`trace_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetStartPose_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_e751bf2c42b1f8883976e00998ef19de2ca852cdc655ec73d542700edccee658"
  public static let nativeType = "dobot_msgs_v4/srv/GetStartPose_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvGetStartPose_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetStartPose_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetToolDO_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_28e04bd9937b355386ad49f0bccc5c4dea6315abe1aed86b2f7a19d5cf528d80"
  public static let nativeType = "dobot_msgs_v4/srv/GetToolDO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetToolDO_Request
  {
    var v = Ros2Dobot_msgs_v4SrvGetToolDO_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvGetToolDO_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_9dd61b31af67f1fd28eed26aaac5b5d514c63fcebeeb84f834aecbba687571da"
  public static let nativeType = "dobot_msgs_v4/srv/GetToolDO_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvGetToolDO_Response
  {
    var v = Ros2Dobot_msgs_v4SrvGetToolDO_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvInverseKin_Request: Canonical {
  public static let maximumWireBytes = 1088
  public static let codecIdentity =
    "UWVMROS1_453350aa14f30de7cfd0eba9ee114885ade509fec936fd60d9e69b8082e5d6ff"
  public static let nativeType = "dobot_msgs_v4/srv/InverseKin_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `use_joint_near`: String = ""
  public var `joint_near`: String = ""
  public var `user`: String = ""
  public var `tool`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    try w.string(self.`use_joint_near`, bound: 256)
    try w.string(self.`joint_near`, bound: 256)
    try w.string(self.`user`, bound: 256)
    try w.string(self.`tool`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvInverseKin_Request
  {
    var v = Ros2Dobot_msgs_v4SrvInverseKin_Request()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    v.`use_joint_near` = try r.string(bound: 256)
    v.`joint_near` = try r.string(bound: 256)
    v.`user` = try r.string(bound: 256)
    v.`tool` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvInverseKin_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a699faaa2a3e0bfb4fa8cd6c8eddb56d5046f6216e40776b463612489a743fc6"
  public static let nativeType = "dobot_msgs_v4/srv/InverseKin_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvInverseKin_Response
  {
    var v = Ros2Dobot_msgs_v4SrvInverseKin_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvInverseSolution_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_274887c4d2477282d5af7681f8f36506dc46a03daed353587b5f279e817c5643"
  public static let nativeType = "dobot_msgs_v4/srv/InverseSolution_Request"
  public static let nativeIdentity: String? = nil
  public var `parameter`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`parameter`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvInverseSolution_Request
  {
    var v = Ros2Dobot_msgs_v4SrvInverseSolution_Request()
    v.`parameter` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvInverseSolution_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_653b734654c75bcd4b6b46b03e5d0664d60dac4a4dd780cf52b423f60dcf7652"
  public static let nativeType = "dobot_msgs_v4/srv/InverseSolution_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvInverseSolution_Response
  {
    var v = Ros2Dobot_msgs_v4SrvInverseSolution_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusClose_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eb5220db23dbc6775a4cf5584fb399daf7e9e10bc6e6270b6e13cfa0ef49a8c3"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusClose_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusClose_Request
  {
    var v = Ros2Dobot_msgs_v4SrvModbusClose_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusClose_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9313e560d4b6e1166bf72567f104805d709e726df438356e40dc23660248bde3"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusClose_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusClose_Response
  {
    var v = Ros2Dobot_msgs_v4SrvModbusClose_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusCreate_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_3b541505ec07934c4512dbfcedba59ec1fe0d949e939092fadbe7383419ba56c"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusCreate_Request"
  public static let nativeIdentity: String? = nil
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `slave_id`: Int32 = 0
  public var `is_rtu`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`slave_id`)
    try w.integer(self.`is_rtu`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusCreate_Request
  {
    var v = Ros2Dobot_msgs_v4SrvModbusCreate_Request()
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`slave_id` = try r.integer(Int32.self)
    v.`is_rtu` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusCreate_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_36f9bbbc4f5b9f216e058be3ee8f9dddd15499e12fcd53beea4c8ddc989e9d5c"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusCreate_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusCreate_Response
  {
    var v = Ros2Dobot_msgs_v4SrvModbusCreate_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request: Canonical {
  public static let maximumWireBytes = 276
  public static let codecIdentity =
    "UWVMROS1_697e4ed564330dd90288c1c4e2e48d033de56f1fbe97767218e83702e2908bb2"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusRTUCreate_Request"
  public static let nativeIdentity: String? = nil
  public var `slave_id`: Int32 = 0
  public var `baud`: Int32 = 0
  public var `parity`: String = ""
  public var `data_bit`: Int32 = 0
  public var `stop_bit`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`slave_id`)
    try w.integer(self.`baud`)
    try w.string(self.`parity`, bound: 256)
    try w.integer(self.`data_bit`)
    try w.integer(self.`stop_bit`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request
  {
    var v = Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request()
    v.`slave_id` = try r.integer(Int32.self)
    v.`baud` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`data_bit` = try r.integer(Int32.self)
    v.`stop_bit` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_98c64f86eadc06070f03a4c104dd21b978829f43879f55e6fcae2129bb248be1"
  public static let nativeType = "dobot_msgs_v4/srv/ModbusRTUCreate_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response
  {
    var v = Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovJ_Request: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_d819c2c114cd2570f8d81cea0222424a7515476af96f0d11512c932750abccbe"
  public static let nativeType = "dobot_msgs_v4/srv/MovJ_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovJ_Request {
    var v = Ros2Dobot_msgs_v4SrvMovJ_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovJ_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_2ccfa44ef4f25f155e2099281467906b5de650b38f0d97ce416a96c835f85aab"
  public static let nativeType = "dobot_msgs_v4/srv/MovJ_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovJ_Response {
    var v = Ros2Dobot_msgs_v4SrvMovJ_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovJIO_Request: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_f0106d3117558821cf789297cafffc7a799cde05cae7bd5bde8f1c7f3f211fe2"
  public static let nativeType = "dobot_msgs_v4/srv/MovJIO_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `mdis`: [String] = []
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`mdis`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`mdis`.count))
    for e in self.`mdis` {
      try w.string(e, bound: 256)
    }
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovJIO_Request {
    var v = Ros2Dobot_msgs_v4SrvMovJIO_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`mdis` = []
    v.`mdis`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`mdis`.append(try r.string(bound: 256))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovJIO_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d6425e2d05a322f9bc270ba95d55cfba3515455addca126d4a4b8f4d5db23eac"
  public static let nativeType = "dobot_msgs_v4/srv/MovJIO_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovJIO_Response {
    var v = Ros2Dobot_msgs_v4SrvMovJIO_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovL_Request: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_2ec610142d58db65c4e47a3c031ffe323e1ca56b014c3c1223b855b080f7a091"
  public static let nativeType = "dobot_msgs_v4/srv/MovL_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovL_Request {
    var v = Ros2Dobot_msgs_v4SrvMovL_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovL_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_7a1be520caacfbf7ecaeb4dcbf2f2ed332697166fe552e18585ea2d2b0480c9d"
  public static let nativeType = "dobot_msgs_v4/srv/MovL_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovL_Response {
    var v = Ros2Dobot_msgs_v4SrvMovL_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovLIO_Request: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_3dcc51388c6641ba5d30a4aba80f860f7fff3b13c5792ea8702a3a3a7731bf74"
  public static let nativeType = "dobot_msgs_v4/srv/MovLIO_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `mdis`: [String] = []
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`mdis`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`mdis`.count))
    for e in self.`mdis` {
      try w.string(e, bound: 256)
    }
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovLIO_Request {
    var v = Ros2Dobot_msgs_v4SrvMovLIO_Request()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`mdis` = []
    v.`mdis`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`mdis`.append(try r.string(bound: 256))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMovLIO_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0910c4af671b5df85dca50e157e0989da74f4bc3f66f1186620d1ffe459a87c0"
  public static let nativeType = "dobot_msgs_v4/srv/MovLIO_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMovLIO_Response {
    var v = Ros2Dobot_msgs_v4SrvMovLIO_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMoveJog_Request: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_d57cb14991c382b3e1772a46203a675c7b79d84eb5fd9566a3ac935218d41c25"
  public static let nativeType = "dobot_msgs_v4/srv/MoveJog_Request"
  public static let nativeIdentity: String? = nil
  public var `axis_id`: String = ""
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`axis_id`, bound: 256)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMoveJog_Request {
    var v = Ros2Dobot_msgs_v4SrvMoveJog_Request()
    v.`axis_id` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvMoveJog_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d93bc3f5fb6116a55272d5cf6849afc25582712a794265e83b9e0fe5a65ef35c"
  public static let nativeType = "dobot_msgs_v4/srv/MoveJog_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvMoveJog_Response {
    var v = Ros2Dobot_msgs_v4SrvMoveJog_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPause_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c3745f783b956f2152565dedf056f115bf9acce50bb6b500ad7f8518a6aad54e"
  public static let nativeType = "dobot_msgs_v4/srv/Pause_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvPause_Request {
    var v = Ros2Dobot_msgs_v4SrvPause_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPause_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3a7b398b7db5664aa6ec64b70a9431b7df090feed6590859f1201c90135a0561"
  public static let nativeType = "dobot_msgs_v4/srv/Pause_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvPause_Response {
    var v = Ros2Dobot_msgs_v4SrvPause_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPositiveKin_Request: Canonical {
  public static let maximumWireBytes = 568
  public static let codecIdentity =
    "UWVMROS1_6937bac982dd49d9ec8bd2dde09a8bbd70f3e0ba2a8e1a9f3a07b2fbc27e5ecc"
  public static let nativeType = "dobot_msgs_v4/srv/PositiveKin_Request"
  public static let nativeIdentity: String? = nil
  public var `j1`: Double = 0
  public var `j2`: Double = 0
  public var `j3`: Double = 0
  public var `j4`: Double = 0
  public var `j5`: Double = 0
  public var `j6`: Double = 0
  public var `user`: String = ""
  public var `tool`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`j1`)
    try w.float64(self.`j2`)
    try w.float64(self.`j3`)
    try w.float64(self.`j4`)
    try w.float64(self.`j5`)
    try w.float64(self.`j6`)
    try w.string(self.`user`, bound: 256)
    try w.string(self.`tool`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvPositiveKin_Request
  {
    var v = Ros2Dobot_msgs_v4SrvPositiveKin_Request()
    v.`j1` = try r.float64()
    v.`j2` = try r.float64()
    v.`j3` = try r.float64()
    v.`j4` = try r.float64()
    v.`j5` = try r.float64()
    v.`j6` = try r.float64()
    v.`user` = try r.string(bound: 256)
    v.`tool` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPositiveKin_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_171fd891727b9d6678bf8254f94694579bd8408a4b67ce35a5027e62819b4192"
  public static let nativeType = "dobot_msgs_v4/srv/PositiveKin_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvPositiveKin_Response
  {
    var v = Ros2Dobot_msgs_v4SrvPositiveKin_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPowerOn_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d77f237d6bb081c5ebec66cb7cdf36c3d3d6a192b9ee9c4941c61b06cfa32843"
  public static let nativeType = "dobot_msgs_v4/srv/PowerOn_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvPowerOn_Request {
    var v = Ros2Dobot_msgs_v4SrvPowerOn_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvPowerOn_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_07d11cce0fa126965ac2ef3f600199c444121dcf0251bc4f0555ed7efefe9e50"
  public static let nativeType = "dobot_msgs_v4/srv/PowerOn_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvPowerOn_Response {
    var v = Ros2Dobot_msgs_v4SrvPowerOn_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelJointMovJ_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_4b10f4dd4f4bde0e5979802416a3b78b7fa3ccf3bcbe94b532a230d4f754c4bd"
  public static let nativeType = "dobot_msgs_v4/srv/RelJointMovJ_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelJointMovJ_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRelJointMovJ_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelJointMovJ_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2ee9287af0dc45374f44537bca294dcf04a8feab5b427a7b0961ab54c3577a30"
  public static let nativeType = "dobot_msgs_v4/srv/RelJointMovJ_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelJointMovJ_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRelJointMovJ_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovJTool_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_9f720103df63dd8e3686c4d2f6c829f0392d691d63fb929bc8a87677aba55410"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovJTool_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovJTool_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovJTool_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovJTool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_414787fb60b733af9bb23b33ea873217d34e8d73ae90b58b015f6010971481fe"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovJTool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovJTool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovJTool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovJUser_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_85424e710627d5ddf69f7d409ded4d71b7fea61f23413f76c3d6a3f2fb60e2e3"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovJUser_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovJUser_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovJUser_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovJUser_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7f99924765e3e229d7370e30b8bcb6c6bb0dd802725b42d2039e29e574ee7005"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovJUser_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovJUser_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovJUser_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovLTool_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_745dfec46b2b24e0bdad62d53517268df5ab840453a92a0db9d03fa192b3a45c"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovLTool_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovLTool_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovLTool_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovLTool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_29ec56e4091c8ecdb438d1d9d64c3e51da96a5c08b3f42eddfb89d8e901439ee"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovLTool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovLTool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovLTool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovLUser_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_4e7ebfa61453ceac9bf84d4837880ec9bf2887028086513fbd2ad67c54cac000"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovLUser_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovLUser_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovLUser_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRelMovLUser_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b6cda3abba1421d8ba5d34d815e8a57ffce5395e9375d2a1e56ed57e6fa914b7"
  public static let nativeType = "dobot_msgs_v4/srv/RelMovLUser_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRelMovLUser_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRelMovLUser_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRequestControl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_403c7651979ef6d74972fbd5ae126bcb322e01e119aee550a763050e45f19195"
  public static let nativeType = "dobot_msgs_v4/srv/RequestControl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRequestControl_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRequestControl_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRequestControl_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_17a6369b96ae52c3af449d42334c88ae104c8cd330d4c9a814e4aaa2f1ddd068"
  public static let nativeType = "dobot_msgs_v4/srv/RequestControl_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvRequestControl_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRequestControl_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvResetRobot_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_db70e9f338c97dc76c6edf6c8d72175da80d88231d92590079464ded5029314e"
  public static let nativeType = "dobot_msgs_v4/srv/ResetRobot_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvResetRobot_Request
  {
    var v = Ros2Dobot_msgs_v4SrvResetRobot_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvResetRobot_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d90445c37f315fe8bbdaac6b35bb063a3724d71488ab5149038e68fb00b4ca7d"
  public static let nativeType = "dobot_msgs_v4/srv/ResetRobot_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvResetRobot_Response
  {
    var v = Ros2Dobot_msgs_v4SrvResetRobot_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRobotMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0474e68e529b30bb9b353ce9309f6d600b701aeab23767077108b958c957d670"
  public static let nativeType = "dobot_msgs_v4/srv/RobotMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRobotMode_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRobotMode_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRobotMode_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_5e81b9352938bb0114725cb4d2231da39e4bb9b5855d96cab96af404bb9cb2d0"
  public static let nativeType = "dobot_msgs_v4/srv/RobotMode_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_return`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_return`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRobotMode_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRobotMode_Response()
    v.`robot_return` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRunScript_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_2db52f777b0fd0f6cb88c160e5e80ad5a44e9a4bfbd526589e769e5164647511"
  public static let nativeType = "dobot_msgs_v4/srv/RunScript_Request"
  public static let nativeIdentity: String? = nil
  public var `project_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`project_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRunScript_Request
  {
    var v = Ros2Dobot_msgs_v4SrvRunScript_Request()
    v.`project_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRunScript_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9e67e2d3fdde32e4f4e63762ef6fea3347190af1147c6fc64663a8a6e40eac88"
  public static let nativeType = "dobot_msgs_v4/srv/RunScript_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRunScript_Response
  {
    var v = Ros2Dobot_msgs_v4SrvRunScript_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRunTo_Request: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_bbf5b5160ec7012cb9055ce6ccfeb9a21e711b5619967a65adc1e83d2ad032da"
  public static let nativeType = "dobot_msgs_v4/srv/RunTo_Request"
  public static let nativeIdentity: String? = nil
  public var `a1`: Double = 0
  public var `b1`: Double = 0
  public var `c1`: Double = 0
  public var `d1`: Double = 0
  public var `e1`: Double = 0
  public var `f1`: Double = 0
  public var `move_type`: Int32 = 0
  public var `user`: Int32 = -1
  public var `tool`: Int32 = -1
  public var `a`: Int32 = -1
  public var `v`: Int32 = -1
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a1`)
    try w.float64(self.`b1`)
    try w.float64(self.`c1`)
    try w.float64(self.`d1`)
    try w.float64(self.`e1`)
    try w.float64(self.`f1`)
    try w.integer(self.`move_type`)
    try w.integer(self.`user`)
    try w.integer(self.`tool`)
    try w.integer(self.`a`)
    try w.integer(self.`v`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRunTo_Request {
    var v = Ros2Dobot_msgs_v4SrvRunTo_Request()
    v.`a1` = try r.float64()
    v.`b1` = try r.float64()
    v.`c1` = try r.float64()
    v.`d1` = try r.float64()
    v.`e1` = try r.float64()
    v.`f1` = try r.float64()
    v.`move_type` = try r.integer(Int32.self)
    v.`user` = try r.integer(Int32.self)
    v.`tool` = try r.integer(Int32.self)
    v.`a` = try r.integer(Int32.self)
    v.`v` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvRunTo_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5d2d3bf2585f26630606625f66197df0a4d702bb086ac70495f6042c76586350"
  public static let nativeType = "dobot_msgs_v4/srv/RunTo_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvRunTo_Response {
    var v = Ros2Dobot_msgs_v4SrvRunTo_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvServoJ_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_d86fe36c8826af558c1c34a0e985d7c640f61bf1663a6ffa9e252a0be3abe5b9"
  public static let nativeType = "dobot_msgs_v4/srv/ServoJ_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvServoJ_Request {
    var v = Ros2Dobot_msgs_v4SrvServoJ_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvServoJ_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_52a4e48c6e53d3423cb39f66166ebd0060bd6f6bc6b18203968d5d92daf1ea0d"
  public static let nativeType = "dobot_msgs_v4/srv/ServoJ_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvServoJ_Response {
    var v = Ros2Dobot_msgs_v4SrvServoJ_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvServoP_Request: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_964dc8a3ed4efd8bbb8e0e1a0fccda883b781e775cf1e3e410509193b13a4ed0"
  public static let nativeType = "dobot_msgs_v4/srv/ServoP_Request"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvServoP_Request {
    var v = Ros2Dobot_msgs_v4SrvServoP_Request()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvServoP_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a377ed474d9101145e72002dbdd8ae960042ff65c357ba7160cdc01a2cd2cfc7"
  public static let nativeType = "dobot_msgs_v4/srv/ServoP_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvServoP_Response {
    var v = Ros2Dobot_msgs_v4SrvServoP_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetBackDistance_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_94cc7291ada95362bd71494ab65369ecb47092a84f50ccbf9de8887ef3170408"
  public static let nativeType = "dobot_msgs_v4/srv/SetBackDistance_Request"
  public static let nativeIdentity: String? = nil
  public var `distance`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`distance`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetBackDistance_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetBackDistance_Request()
    v.`distance` = try r.float64()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetBackDistance_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_afa51eaa955da18aadc262c2c99c19817a645d5e1fd17387cd69816947ccfac0"
  public static let nativeType = "dobot_msgs_v4/srv/SetBackDistance_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetBackDistance_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetBackDistance_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetCoils_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_032304fb488fcee97eabea57c6b7cd4a14a9645be533627099ae9d7f3e19ed9d"
  public static let nativeType = "dobot_msgs_v4/srv/SetCoils_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `val_tab`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`val_tab`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetCoils_Request {
    var v = Ros2Dobot_msgs_v4SrvSetCoils_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`val_tab` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetCoils_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ee2ab263594c4c81c2f5372b96775fc1c4a3082682f16c2da5251ba8e783bbe1"
  public static let nativeType = "dobot_msgs_v4/srv/SetCoils_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetCoils_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetCoils_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_18bc765bcb570eac7b33751aef1a9b134c4bba12682d1bf584b36837a387a7a1"
  public static let nativeType = "dobot_msgs_v4/srv/SetCollisionLevel_Request"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request()
    v.`level` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4e31189b7ab4932b7d9fa202ce90e330715ebb8e57540ab3344365c1b70d1fc6"
  public static let nativeType = "dobot_msgs_v4/srv/SetCollisionLevel_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetFCCollision_Request: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_55445aace4d74de76605a84c1cb4ce370e46e47a6d7ca0aea459b09a87f1c42d"
  public static let nativeType = "dobot_msgs_v4/srv/SetFCCollision_Request"
  public static let nativeIdentity: String? = nil
  public var `force`: Double = 0
  public var `torque`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`force`)
    try w.float64(self.`torque`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetFCCollision_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetFCCollision_Request()
    v.`force` = try r.float64()
    v.`torque` = try r.float64()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetFCCollision_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dcc2fe7fbd1c4371e03a597bf53ef5bcc3c9c8b192fc9fa6c88c6a8cc3046943"
  public static let nativeType = "dobot_msgs_v4/srv/SetFCCollision_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetFCCollision_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetFCCollision_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetHoldRegs_Request: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_7d4f8c9592ade8fa31c8c4decc0f96411138792c7b3a47b47bf0c6263589f3f0"
  public static let nativeType = "dobot_msgs_v4/srv/SetHoldRegs_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `val_tab`: String = ""
  public var `val_type`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`val_tab`, bound: 256)
    try w.string(self.`val_type`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetHoldRegs_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetHoldRegs_Request()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`val_tab` = try r.string(bound: 256)
    v.`val_type` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetHoldRegs_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1deb9fd0d39ee2654b710cd8b92299cc34517e975ac04863b08369e26c778661"
  public static let nativeType = "dobot_msgs_v4/srv/SetHoldRegs_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetHoldRegs_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetHoldRegs_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputBool_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_66c31c6e7c4fa9bd1659f4a5e59483924f784f61c39bd75934e9b6074ec95db1"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputBool_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputBool_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputBool_Request()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputBool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bb046c3d40941fa7ee4ba8492b56a37d1eb39d1b276555a62b53cb53e78fde56"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputBool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputBool_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputBool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputFloat_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_ea92680705f446d3a2a31d2e97094f26dc8477d951d93c91d9ccac0a8037ecaa"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputFloat_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputFloat_Request()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputFloat_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d61c5583b405a88ecf9ca3a504c78d6181747a021225ae1c0719b43f935139de"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputFloat_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputFloat_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputInt_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d41e5554649c7cad2a0368150ba6eb28007ca3c908b34e9806a38d119810ed34"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputInt_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputInt_Request()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetOutputInt_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ffd66e58346a61620a52891327592f71d8dbb881d7dd90e1b69c384f597a22a2"
  public static let nativeType = "dobot_msgs_v4/srv/SetOutputInt_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetOutputInt_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetOutputInt_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetPayload_Request: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_6d620aef8f3c9875c5e382b2c8d14169933ab0dcfa15a179acadebf9498a88a8"
  public static let nativeType = "dobot_msgs_v4/srv/SetPayload_Request"
  public static let nativeIdentity: String? = nil
  public var `load`: Double = 0
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`load`)
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetPayload_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetPayload_Request()
    v.`load` = try r.float64()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetPayload_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b6d407c427b3e4b9a12c9d7f77671f4681191f016f0cb08bdefe761e8c922c07"
  public static let nativeType = "dobot_msgs_v4/srv/SetPayload_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetPayload_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetPayload_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_68c64ece5716d174d772579438e9c1dcadb9507bfdc10875ca7debb4cba8e51c"
  public static let nativeType = "dobot_msgs_v4/srv/SetPostCollisionMode_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request()
    v.`mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_143938e2f852a1776f63c34f79ea19da387c6c18c92f02a4eb03e93f2e08b4fe"
  public static let nativeType = "dobot_msgs_v4/srv/SetPostCollisionMode_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetSafeSkin_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_52adc5391c85a35c9bbb9cfd8903e92ced671a51e6442b58f2b8881eee798bff"
  public static let nativeType = "dobot_msgs_v4/srv/SetSafeSkin_Request"
  public static let nativeIdentity: String? = nil
  public var `part`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`part`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetSafeSkin_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetSafeSkin_Request()
    v.`part` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetSafeSkin_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9e6ad533a05d04c8a98d4644cf3f467a90ada31cf160c7c8c1c87720c72ee4c7"
  public static let nativeType = "dobot_msgs_v4/srv/SetSafeSkin_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetSafeSkin_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetSafeSkin_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e3440d7de447cc75b6c6ff9bcb5b75012e0de9ff3a16d5414fae053d1c1a9a13"
  public static let nativeType = "dobot_msgs_v4/srv/SetSafeWallEnable_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_61b6404b9419fbc261cd24cc71dbd17be97bcba63f08d8e95388a7b305eb69ff"
  public static let nativeType = "dobot_msgs_v4/srv/SetSafeWallEnable_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetTool_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_3a7dc50dae7ff5a0d79013b64b97bd59e942ebdd323680bc0f43c81560690934"
  public static let nativeType = "dobot_msgs_v4/srv/SetTool_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetTool_Request {
    var v = Ros2Dobot_msgs_v4SrvSetTool_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetTool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7b16d2371acf7e512fc872f805ad473276152495123b1f2c81cedcd2b379aae6"
  public static let nativeType = "dobot_msgs_v4/srv/SetTool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetTool_Response {
    var v = Ros2Dobot_msgs_v4SrvSetTool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetTool485_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_2b39d6dfee6b75c0103780423d33bf2bc2edb52a6e17ebe2f8452b5b148d33e8"
  public static let nativeType = "dobot_msgs_v4/srv/SetTool485_Request"
  public static let nativeIdentity: String? = nil
  public var `baudrate`: Int32 = 0
  public var `parity`: String = ""
  public var `stop`: Int32 = 0
  public var `identify`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`baudrate`)
    try w.string(self.`parity`, bound: 256)
    try w.integer(self.`stop`)
    try w.integer(self.`identify`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetTool485_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetTool485_Request()
    v.`baudrate` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`stop` = try r.integer(Int32.self)
    v.`identify` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetTool485_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0300651f89d97f729464b2b3908e6d14b42aa830ea78a4c3f086741cc93f7ef5"
  public static let nativeType = "dobot_msgs_v4/srv/SetTool485_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetTool485_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetTool485_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetToolMode_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_a1b84fbba05c066efc33278ccd27c5dda5bf825203cb9e15637f8d5b48683484"
  public static let nativeType = "dobot_msgs_v4/srv/SetToolMode_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetToolMode_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetToolMode_Request()
    v.`mode` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetToolMode_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b82f61b5ea8c3fe51f531c7c0f7972f91b85a3c712301e586cb4f766651aa5b7"
  public static let nativeType = "dobot_msgs_v4/srv/SetToolMode_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetToolMode_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetToolMode_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetToolPower_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a89dd4dfc861b022448615ed2da1216b634bfddc1b2c15cef2ab230b6631ae12"
  public static let nativeType = "dobot_msgs_v4/srv/SetToolPower_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetToolPower_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetToolPower_Request()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetToolPower_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_adc48762b33431e6c502e40f706aa75c2804d0f0293ad15a5c1cd3c3307c03b4"
  public static let nativeType = "dobot_msgs_v4/srv/SetToolPower_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetToolPower_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetToolPower_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetUser_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_81b7b804988c5a6ebbb76fb62c83b9114fb712313bceb1d2e4ab5ec8bb6b1fed"
  public static let nativeType = "dobot_msgs_v4/srv/SetUser_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetUser_Request {
    var v = Ros2Dobot_msgs_v4SrvSetUser_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetUser_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_accca9cc2c80031c5b0f7459cbb3d5c54465e4df093cbe6a0875163eb5a2fb9a"
  public static let nativeType = "dobot_msgs_v4/srv/SetUser_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvSetUser_Response {
    var v = Ros2Dobot_msgs_v4SrvSetUser_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_09aba48aac42bf2b6e67910c0142960a051c31e9724464d517e040cdc9642613"
  public static let nativeType = "dobot_msgs_v4/srv/SetWorkZoneEnable_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1a6e72b6a47cabf16bdb0216d7b137fa4880ea7817f5d40375fd7c498d4ad0e8"
  public static let nativeType = "dobot_msgs_v4/srv/SetWorkZoneEnable_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSixForceHome_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3dbcc24390d425f65574985885e52a8c3cbfa239a96bc21ede7c041486a067eb"
  public static let nativeType = "dobot_msgs_v4/srv/SixForceHome_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSixForceHome_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSixForceHome_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSixForceHome_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_04b317ddf28f184a148de74f22235cc6f41095c72269ee489a67d485887cc583"
  public static let nativeType = "dobot_msgs_v4/srv/SixForceHome_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSixForceHome_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSixForceHome_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSpeedFactor_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e17b9366d15184d84c64e520db9e3c35ee832a273e38bd6ee2c92b01e06c4e9d"
  public static let nativeType = "dobot_msgs_v4/srv/SpeedFactor_Request"
  public static let nativeIdentity: String? = nil
  public var `ratio`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ratio`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSpeedFactor_Request
  {
    var v = Ros2Dobot_msgs_v4SrvSpeedFactor_Request()
    v.`ratio` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvSpeedFactor_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_353246afc9c000d5235bb9517a28e5fdf05fd224ac57411f7fc279b69fb97a4c"
  public static let nativeType = "dobot_msgs_v4/srv/SpeedFactor_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvSpeedFactor_Response
  {
    var v = Ros2Dobot_msgs_v4SrvSpeedFactor_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartDrag_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a3d3c9e03f38988abb6d5a463421deedd787ed3d275d277968af51b0fdbd37c2"
  public static let nativeType = "dobot_msgs_v4/srv/StartDrag_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStartDrag_Request
  {
    var v = Ros2Dobot_msgs_v4SrvStartDrag_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartDrag_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7dec399bf542ceca9f7acf6213f863323751b869a8cda0698d0099c499082dca"
  public static let nativeType = "dobot_msgs_v4/srv/StartDrag_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStartDrag_Response
  {
    var v = Ros2Dobot_msgs_v4SrvStartDrag_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartPath_Request: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_fb37e04b563ed40f27ae8034b8dd9d2b5cf36e55b9089c2edaeb2f2b32f616f2"
  public static let nativeType = "dobot_msgs_v4/srv/StartPath_Request"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public var `param_value`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
    guard self.`param_value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_value`.count))
    for e in self.`param_value` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStartPath_Request
  {
    var v = Ros2Dobot_msgs_v4SrvStartPath_Request()
    v.`trace_name` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`param_value` = []
    v.`param_value`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`param_value`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartPath_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_48b184f798f192b00130c900b8331bd8a98d6a7416753d4bc5f4c736507807eb"
  public static let nativeType = "dobot_msgs_v4/srv/StartPath_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStartPath_Response
  {
    var v = Ros2Dobot_msgs_v4SrvStartPath_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartRTOffset_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c582b88c4aae68ee0474bf750249139d175dcf51c1abb8a3c6c1960cf5433745"
  public static let nativeType = "dobot_msgs_v4/srv/StartRTOffset_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvStartRTOffset_Request
  {
    var v = Ros2Dobot_msgs_v4SrvStartRTOffset_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStartRTOffset_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4aed9b63ca8e0043e9e2c9aef0cfc9d7f18b6b3c308ebfc7960c625319d2e4cc"
  public static let nativeType = "dobot_msgs_v4/srv/StartRTOffset_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvStartRTOffset_Response
  {
    var v = Ros2Dobot_msgs_v4SrvStartRTOffset_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStop_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7c790dbc997558994e8fcc57044ffe0bd98bf4bc6c9ff18428bf8b4b701baff1"
  public static let nativeType = "dobot_msgs_v4/srv/Stop_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStop_Request {
    var v = Ros2Dobot_msgs_v4SrvStop_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStop_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_27f4d159bbb2155a344f0da8317513e99338bbab073cfe6def1362ca6c11503f"
  public static let nativeType = "dobot_msgs_v4/srv/Stop_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStop_Response {
    var v = Ros2Dobot_msgs_v4SrvStop_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStopDrag_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5726ed170c8d8c30e57c91dc3cf4685feba2b761ddbb5d25e6327d51e680d6e7"
  public static let nativeType = "dobot_msgs_v4/srv/StopDrag_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStopDrag_Request {
    var v = Ros2Dobot_msgs_v4SrvStopDrag_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStopDrag_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4610fb06a436e0dafc3a3118d23ee8c66ee79eee1b916b9a15d2d48f6be79ae1"
  public static let nativeType = "dobot_msgs_v4/srv/StopDrag_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvStopDrag_Response
  {
    var v = Ros2Dobot_msgs_v4SrvStopDrag_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStopMoveJog_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1186e51277670f5371641a689fbd004690afa0ba0c083e939e8a4ea707e7cc48"
  public static let nativeType = "dobot_msgs_v4/srv/StopMoveJog_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvStopMoveJog_Request
  {
    var v = Ros2Dobot_msgs_v4SrvStopMoveJog_Request()
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvStopMoveJog_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a16d5185cfacf20366bc39096fd5f178372b49114f1b54934998b83598ab88ba"
  public static let nativeType = "dobot_msgs_v4/srv/StopMoveJog_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvStopMoveJog_Response
  {
    var v = Ros2Dobot_msgs_v4SrvStopMoveJog_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvTcpDashboard_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_364e06ac6090aab0c80f08c0b65fc7d7dc9b01f97001ab2b8bef01cb6665238e"
  public static let nativeType = "dobot_msgs_v4/srv/TcpDashboard_Request"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvTcpDashboard_Request
  {
    var v = Ros2Dobot_msgs_v4SrvTcpDashboard_Request()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvTcpDashboard_Response: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_af114666c84215cf57d7ebfab7cd19fd4f02d80ad5420b99199bfbd88d337ef4"
  public static let nativeType = "dobot_msgs_v4/srv/TcpDashboard_Response"
  public static let nativeIdentity: String? = nil
  public var `result`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvTcpDashboard_Response
  {
    var v = Ros2Dobot_msgs_v4SrvTcpDashboard_Response()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvTool_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_46a879d337500dd0363b55d3af8df7d5008ff677c961e4945bee19430a596356"
  public static let nativeType = "dobot_msgs_v4/srv/Tool_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvTool_Request {
    var v = Ros2Dobot_msgs_v4SrvTool_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvTool_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b0356c8a66a835ca4357c0acb9448693c77729cfe36a04ef7bb04490f32e17c8"
  public static let nativeType = "dobot_msgs_v4/srv/Tool_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvTool_Response {
    var v = Ros2Dobot_msgs_v4SrvTool_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolAI_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b4271be2ad590c256fd80b1ef3ed003bb8109725511a72a317563436759482db"
  public static let nativeType = "dobot_msgs_v4/srv/ToolAI_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolAI_Request {
    var v = Ros2Dobot_msgs_v4SrvToolAI_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolAI_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_108dce96d777772e846b8b6f51b8e69c75a481c3a087124a2f3af01204cbb25f"
  public static let nativeType = "dobot_msgs_v4/srv/ToolAI_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolAI_Response {
    var v = Ros2Dobot_msgs_v4SrvToolAI_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDI_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bc04ef24949f55eed4f550c8e6894c6684ae4a9b72d13e4a0257b2919abe8c75"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDI_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolDI_Request {
    var v = Ros2Dobot_msgs_v4SrvToolDI_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDI_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_44925063f0b55bd4f63177a5bb3d566e249699b74120805f1477e28085f0a598"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDI_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolDI_Response {
    var v = Ros2Dobot_msgs_v4SrvToolDI_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDO_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_013cac15434c4dbacec6ab5cd7912f2992ccb77c619db0b0f1b3837b6d89ffa3"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDO_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolDO_Request {
    var v = Ros2Dobot_msgs_v4SrvToolDO_Request()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDO_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0231b146fd731cd304cdd2147679481307d77b4fae9d7436e523458a2dbf81a7"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDO_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvToolDO_Response {
    var v = Ros2Dobot_msgs_v4SrvToolDO_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDOInstant_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_cfac2b284303fbaf26d1ed93e8737e879ae16ef03a44fd0aa6118dac4fce03b2"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDOInstant_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvToolDOInstant_Request
  {
    var v = Ros2Dobot_msgs_v4SrvToolDOInstant_Request()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvToolDOInstant_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0e4472558e66ca84105318afc706c6aaaeb790d49d62fcfaac45506762d99262"
  public static let nativeType = "dobot_msgs_v4/srv/ToolDOInstant_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dobot_msgs_v4SrvToolDOInstant_Response
  {
    var v = Ros2Dobot_msgs_v4SrvToolDOInstant_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvUser_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_afa82fa40468d485c2aedd845180f41746938a7e6bcd8187122aa0eef01864a3"
  public static let nativeType = "dobot_msgs_v4/srv/User_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvUser_Request {
    var v = Ros2Dobot_msgs_v4SrvUser_Request()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvUser_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eeb9ac569c6db66730edf5a7c72bfc7cdddca2168e69f8b099595c8ba47242a8"
  public static let nativeType = "dobot_msgs_v4/srv/User_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvUser_Response {
    var v = Ros2Dobot_msgs_v4SrvUser_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvVelJ_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c223b003b51ad228cae88eef51b31e7457797fa5ff90e2926d7e06215910d20"
  public static let nativeType = "dobot_msgs_v4/srv/VelJ_Request"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvVelJ_Request {
    var v = Ros2Dobot_msgs_v4SrvVelJ_Request()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvVelJ_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dcc12c83a5d42e331800f324ceaa6b735ee11afd77aa9640b0dbfa266115f307"
  public static let nativeType = "dobot_msgs_v4/srv/VelJ_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvVelJ_Response {
    var v = Ros2Dobot_msgs_v4SrvVelJ_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvVelL_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d8df3c4f5e50fa98822b9312633ff6c6f6cb4350170c1f1660c46f11ed3bd2de"
  public static let nativeType = "dobot_msgs_v4/srv/VelL_Request"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvVelL_Request {
    var v = Ros2Dobot_msgs_v4SrvVelL_Request()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dobot_msgs_v4SrvVelL_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_64b1dedfcc17f0f5c81ea98751eaf8fcc8670ec6d4d488c89e64043763802072"
  public static let nativeType = "dobot_msgs_v4/srv/VelL_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dobot_msgs_v4SrvVelL_Response {
    var v = Ros2Dobot_msgs_v4SrvVelL_Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
