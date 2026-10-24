/// @file records.swift
/// @brief Preserve the complete original elephant/kinetic canonical value domain.
/// @details The selected domain contains 36 complete record/components and 116 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Mycobot_communicationMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6"
  public static let nativeType = "mycobot_communication/MycobotAngles"
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
  public static func read(from r: inout WireReader) throws -> Ros1Mycobot_communicationMycobotAngles
  {
    var v = Ros1Mycobot_communicationMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2"
  public static let nativeType = "mycobot_communication/MycobotCoords"
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
  public static func read(from r: inout WireReader) throws -> Ros1Mycobot_communicationMycobotCoords
  {
    var v = Ros1Mycobot_communicationMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649"
  public static let nativeType = "mycobot_communication/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotGripperStatus
  {
    var v = Ros1Mycobot_communicationMycobotGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd"
  public static let nativeType = "mycobot_communication/MycobotPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public var `Pin1`: Int8 = 0
  public var `Pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
    try w.integer(self.`Pin1`)
    try w.integer(self.`Pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotPumpStatus
  {
    var v = Ros1Mycobot_communicationMycobotPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334"
  public static let nativeType = "mycobot_communication/MycobotSetAngles"
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
    -> Ros1Mycobot_communicationMycobotSetAngles
  {
    var v = Ros1Mycobot_communicationMycobotSetAngles()
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
public struct Ros1Mycobot_communicationMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9"
  public static let nativeType = "mycobot_communication/MycobotSetCoords"
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
    -> Ros1Mycobot_communicationMycobotSetCoords
  {
    var v = Ros1Mycobot_communicationMycobotSetCoords()
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
public struct Ros1Mycobot_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54"
  public static let nativeType = "mycobot_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationGetAnglesRequest
  {
    var v = Ros1Mycobot_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mycobot_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3"
  public static let nativeType = "mycobot_communication/GetAnglesResponse"
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
    -> Ros1Mycobot_communicationGetAnglesResponse
  {
    var v = Ros1Mycobot_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876"
  public static let nativeType = "mycobot_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationGetCoordsRequest
  {
    var v = Ros1Mycobot_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mycobot_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107"
  public static let nativeType = "mycobot_communication/GetCoordsResponse"
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
    -> Ros1Mycobot_communicationGetCoordsResponse
  {
    var v = Ros1Mycobot_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585"
  public static let nativeType = "mycobot_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationGripperStatusRequest
  {
    var v = Ros1Mycobot_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664"
  public static let nativeType = "mycobot_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationGripperStatusResponse
  {
    var v = Ros1Mycobot_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c"
  public static let nativeType = "mycobot_communication/PumpStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public var `Pin1`: Int8 = 0
  public var `Pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
    try w.integer(self.`Pin1`)
    try w.integer(self.`Pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationPumpStatusRequest
  {
    var v = Ros1Mycobot_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd"
  public static let nativeType = "mycobot_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationPumpStatusResponse
  {
    var v = Ros1Mycobot_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd"
  public static let nativeType = "mycobot_communication/SetAnglesRequest"
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
    -> Ros1Mycobot_communicationSetAnglesRequest
  {
    var v = Ros1Mycobot_communicationSetAnglesRequest()
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
public struct Ros1Mycobot_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2"
  public static let nativeType = "mycobot_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetAnglesResponse
  {
    var v = Ros1Mycobot_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a"
  public static let nativeType = "mycobot_communication/SetCoordsRequest"
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
    -> Ros1Mycobot_communicationSetCoordsRequest
  {
    var v = Ros1Mycobot_communicationSetCoordsRequest()
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
public struct Ros1Mycobot_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af"
  public static let nativeType = "mycobot_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetCoordsResponse
  {
    var v = Ros1Mycobot_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalAngles: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9"
  public static let nativeType = "mypalletizer_communication/MypalAngles"
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
    -> Ros1Mypalletizer_communicationMypalAngles
  {
    var v = Ros1Mypalletizer_communicationMypalAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalCoords: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80"
  public static let nativeType = "mypalletizer_communication/MypalCoords"
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
    -> Ros1Mypalletizer_communicationMypalCoords
  {
    var v = Ros1Mypalletizer_communicationMypalCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6"
  public static let nativeType = "mypalletizer_communication/MypalGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationMypalGripperStatus
  {
    var v = Ros1Mypalletizer_communicationMypalGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc"
  public static let nativeType = "mypalletizer_communication/MypalPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public var `Pin1`: Int8 = 0
  public var `Pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
    try w.integer(self.`Pin1`)
    try w.integer(self.`Pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationMypalPumpStatus
  {
    var v = Ros1Mypalletizer_communicationMypalPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalSetAngles: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98"
  public static let nativeType = "mypalletizer_communication/MypalSetAngles"
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
    -> Ros1Mypalletizer_communicationMypalSetAngles
  {
    var v = Ros1Mypalletizer_communicationMypalSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationMypalSetCoords: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448"
  public static let nativeType = "mypalletizer_communication/MypalSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationMypalSetCoords
  {
    var v = Ros1Mypalletizer_communicationMypalSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8"
  public static let nativeType = "mypalletizer_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationGetAnglesRequest
  {
    var v = Ros1Mypalletizer_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mypalletizer_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745"
  public static let nativeType = "mypalletizer_communication/GetAnglesResponse"
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
    -> Ros1Mypalletizer_communicationGetAnglesResponse
  {
    var v = Ros1Mypalletizer_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros1Mypalletizer_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8"
  public static let nativeType = "mypalletizer_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationGetCoordsRequest
  {
    var v = Ros1Mypalletizer_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mypalletizer_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb"
  public static let nativeType = "mypalletizer_communication/GetCoordsResponse"
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
    -> Ros1Mypalletizer_communicationGetCoordsResponse
  {
    var v = Ros1Mypalletizer_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros1Mypalletizer_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709"
  public static let nativeType = "mypalletizer_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationGripperStatusRequest
  {
    var v = Ros1Mypalletizer_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b"
  public static let nativeType = "mypalletizer_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationGripperStatusResponse
  {
    var v = Ros1Mypalletizer_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636"
  public static let nativeType = "mypalletizer_communication/PumpStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public var `Pin1`: Int8 = 0
  public var `Pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
    try w.integer(self.`Pin1`)
    try w.integer(self.`Pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationPumpStatusRequest
  {
    var v = Ros1Mypalletizer_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5"
  public static let nativeType = "mypalletizer_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationPumpStatusResponse
  {
    var v = Ros1Mypalletizer_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d"
  public static let nativeType = "mypalletizer_communication/SetAnglesRequest"
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
    -> Ros1Mypalletizer_communicationSetAnglesRequest
  {
    var v = Ros1Mypalletizer_communicationSetAnglesRequest()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c"
  public static let nativeType = "mypalletizer_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationSetAnglesResponse
  {
    var v = Ros1Mypalletizer_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mypalletizer_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1"
  public static let nativeType = "mypalletizer_communication/SetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationSetCoordsRequest
  {
    var v = Ros1Mypalletizer_communicationSetCoordsRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mypalletizer_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308"
  public static let nativeType = "mypalletizer_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mypalletizer_communicationSetCoordsResponse
  {
    var v = Ros1Mypalletizer_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
