/// @file records.swift
/// @brief Preserve the complete original elephant/noetic canonical value domain.
/// @details The selected domain contains 163 complete record/components and 543 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Mybuddy_communicationMybuddyAngles: Canonical {
  public static let maximumWireBytes = 52
  public static let codecIdentity =
    "UWVMROS1_f3c510869207e6d72e868ae35ef95d49a1eea5164c7ef1056cb3d335029563e9"
  public static let nativeType = "mybuddy_communication/MybuddyAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_0`: Float = 0
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `joint_8`: Float = 0
  public var `joint_9`: Float = 0
  public var `joint_10`: Float = 0
  public var `joint_11`: Float = 0
  public var `joint_12`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_0`)
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.float32(self.`joint_8`)
    try w.float32(self.`joint_9`)
    try w.float32(self.`joint_10`)
    try w.float32(self.`joint_11`)
    try w.float32(self.`joint_12`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Mybuddy_communicationMybuddyAngles
  {
    var v = Ros1Mybuddy_communicationMybuddyAngles()
    v.`joint_0` = try r.float32()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`joint_8` = try r.float32()
    v.`joint_9` = try r.float32()
    v.`joint_10` = try r.float32()
    v.`joint_11` = try r.float32()
    v.`joint_12` = try r.float32()
    return v
  }
}
public struct Ros1Mybuddy_communicationMybuddyCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_a1df376733f2673e25fed814a038e00f556b82c2b8bce3755644904e50c95384"
  public static let nativeType = "mybuddy_communication/MybuddyCoords"
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
  public static func read(from r: inout WireReader) throws -> Ros1Mybuddy_communicationMybuddyCoords
  {
    var v = Ros1Mybuddy_communicationMybuddyCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mybuddy_communicationMybuddyGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_86fdaf7d3397b26155c891e15d2ebdd903d5899a0895128e720276eb35a63854"
  public static let nativeType = "mybuddy_communication/MybuddyGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationMybuddyGripperStatus
  {
    var v = Ros1Mybuddy_communicationMybuddyGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mybuddy_communicationMybuddyPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_33b6419700f9baf41b584bb464d0234426a04e1bd86d198fe3d66c06845cd80a"
  public static let nativeType = "mybuddy_communication/MybuddyPumpStatus"
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
    -> Ros1Mybuddy_communicationMybuddyPumpStatus
  {
    var v = Ros1Mybuddy_communicationMybuddyPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mybuddy_communicationMybuddySetAngles: Canonical {
  public static let maximumWireBytes = 53
  public static let codecIdentity =
    "UWVMROS1_8f41fddfb715bfaa95c90974cf257181a9ae3e2f36969f6fdfdf3ab03b7d4486"
  public static let nativeType = "mybuddy_communication/MybuddySetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_0`: Float = 0
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `joint_8`: Float = 0
  public var `joint_9`: Float = 0
  public var `joint_10`: Float = 0
  public var `joint_11`: Float = 0
  public var `joint_12`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_0`)
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.float32(self.`joint_8`)
    try w.float32(self.`joint_9`)
    try w.float32(self.`joint_10`)
    try w.float32(self.`joint_11`)
    try w.float32(self.`joint_12`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationMybuddySetAngles
  {
    var v = Ros1Mybuddy_communicationMybuddySetAngles()
    v.`joint_0` = try r.float32()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`joint_8` = try r.float32()
    v.`joint_9` = try r.float32()
    v.`joint_10` = try r.float32()
    v.`joint_11` = try r.float32()
    v.`joint_12` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mybuddy_communicationMybuddySetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_bf9f2ee073928aafabbd532644eb57eec70d4b864a3097e2ab1a37840abd3669"
  public static let nativeType = "mybuddy_communication/MybuddySetCoords"
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
    -> Ros1Mybuddy_communicationMybuddySetCoords
  {
    var v = Ros1Mybuddy_communicationMybuddySetCoords()
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
public struct Ros1Mybuddy_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7ba90c12eb91dbcc296c0d61069d0dc12c3ac576c970cd2fe9a0fed29f058e38"
  public static let nativeType = "mybuddy_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationGetAnglesRequest
  {
    var v = Ros1Mybuddy_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mybuddy_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 52
  public static let codecIdentity =
    "UWVMROS1_98085b01a21ae26a74a286d790aab310530fff2a88d7a3c35e071df09abd709d"
  public static let nativeType = "mybuddy_communication/GetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_0`: Float = 0
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `joint_8`: Float = 0
  public var `joint_9`: Float = 0
  public var `joint_10`: Float = 0
  public var `joint_11`: Float = 0
  public var `joint_12`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_0`)
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.float32(self.`joint_8`)
    try w.float32(self.`joint_9`)
    try w.float32(self.`joint_10`)
    try w.float32(self.`joint_11`)
    try w.float32(self.`joint_12`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationGetAnglesResponse
  {
    var v = Ros1Mybuddy_communicationGetAnglesResponse()
    v.`joint_0` = try r.float32()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`joint_8` = try r.float32()
    v.`joint_9` = try r.float32()
    v.`joint_10` = try r.float32()
    v.`joint_11` = try r.float32()
    v.`joint_12` = try r.float32()
    return v
  }
}
public struct Ros1Mybuddy_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e5b4bd6f4d17f79bf3477c2577e73355b871523291aace267fea201f5a2b43ef"
  public static let nativeType = "mybuddy_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationGetCoordsRequest
  {
    var v = Ros1Mybuddy_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mybuddy_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_604a9a58b11d6e51faee74226c4820db7668b2054b2e48949cf9deb5958f5873"
  public static let nativeType = "mybuddy_communication/GetCoordsResponse"
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
    -> Ros1Mybuddy_communicationGetCoordsResponse
  {
    var v = Ros1Mybuddy_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mybuddy_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7816f3fa4c8b7068eeb16e74940d2e26401df47b7bc6881d123f94b554523173"
  public static let nativeType = "mybuddy_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationGripperStatusRequest
  {
    var v = Ros1Mybuddy_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mybuddy_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b329fd687ef106ed366d80c5651fc536ad266d2b16dee8f985f1bad32738330b"
  public static let nativeType = "mybuddy_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationGripperStatusResponse
  {
    var v = Ros1Mybuddy_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mybuddy_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_4261e7e11f0c6065de868444a0be45d363465b0913246b06b4a2c413714d77e9"
  public static let nativeType = "mybuddy_communication/PumpStatusRequest"
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
    -> Ros1Mybuddy_communicationPumpStatusRequest
  {
    var v = Ros1Mybuddy_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mybuddy_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_975f537d88c880f8daa3459f6762dc6ec7d7eee1f580c0e79f3cb581b77cabd4"
  public static let nativeType = "mybuddy_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationPumpStatusResponse
  {
    var v = Ros1Mybuddy_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mybuddy_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 53
  public static let codecIdentity =
    "UWVMROS1_47d19578189892ca10e073d8d250839f1e2b39ebbb3525ed9b03a15af18eb240"
  public static let nativeType = "mybuddy_communication/SetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public var `joint_0`: Float = 0
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `joint_8`: Float = 0
  public var `joint_9`: Float = 0
  public var `joint_10`: Float = 0
  public var `joint_11`: Float = 0
  public var `joint_12`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_0`)
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.float32(self.`joint_8`)
    try w.float32(self.`joint_9`)
    try w.float32(self.`joint_10`)
    try w.float32(self.`joint_11`)
    try w.float32(self.`joint_12`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationSetAnglesRequest
  {
    var v = Ros1Mybuddy_communicationSetAnglesRequest()
    v.`joint_0` = try r.float32()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`joint_8` = try r.float32()
    v.`joint_9` = try r.float32()
    v.`joint_10` = try r.float32()
    v.`joint_11` = try r.float32()
    v.`joint_12` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mybuddy_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7371fa369708af552fd68522d7effdd00bf82bf7e2fe21469ceb210f51582f81"
  public static let nativeType = "mybuddy_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationSetAnglesResponse
  {
    var v = Ros1Mybuddy_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mybuddy_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_81f7315bebd612a9406a2805b393415b8a1956e49f3d1b8efb21f9e703b0bfe0"
  public static let nativeType = "mybuddy_communication/SetCoordsRequest"
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
    -> Ros1Mybuddy_communicationSetCoordsRequest
  {
    var v = Ros1Mybuddy_communicationSetCoordsRequest()
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
public struct Ros1Mybuddy_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e5c41ea9420e43a5406ddee23cee961347bfad4f83baf9ebac93d16cdb5d0b21"
  public static let nativeType = "mybuddy_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mybuddy_communicationSetCoordsResponse
  {
    var v = Ros1Mybuddy_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_4afa3dc66ce6ffe02170c76da688514a04aa7b47008aeb8f79c44f9ff867d189"
  public static let nativeType = "mecharm_communication/MycobotAngles"
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
  public static func read(from r: inout WireReader) throws -> Ros1Mecharm_communicationMycobotAngles
  {
    var v = Ros1Mecharm_communicationMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mecharm_communicationMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_a6a82e22cd0a2f24657c0a253ed00bf31c0a266e6ebaab071cfd369780818d35"
  public static let nativeType = "mecharm_communication/MycobotCoords"
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
  public static func read(from r: inout WireReader) throws -> Ros1Mecharm_communicationMycobotCoords
  {
    var v = Ros1Mecharm_communicationMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mecharm_communicationMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_07e04dad52b423c371dc5432b68a2f4272cf55328d6f0a10f091dc389d57a4bf"
  public static let nativeType = "mecharm_communication/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationMycobotGripperStatus
  {
    var v = Ros1Mecharm_communicationMycobotGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationMycobotPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_f559fbf7d5d2c872b3660132eb8c17c79ca3c2d27e975f8fb8fde1d86072a6fa"
  public static let nativeType = "mecharm_communication/MycobotPumpStatus"
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
    -> Ros1Mecharm_communicationMycobotPumpStatus
  {
    var v = Ros1Mecharm_communicationMycobotPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mecharm_communicationMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_bce09b709e806417595c05e0e795d689b8c53008f9916633d934f935f9389de9"
  public static let nativeType = "mecharm_communication/MycobotSetAngles"
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
    -> Ros1Mecharm_communicationMycobotSetAngles
  {
    var v = Ros1Mecharm_communicationMycobotSetAngles()
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
public struct Ros1Mecharm_communicationMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_68ffa6950e0934b845b2b45140612997c8276a3ac7ed4303e43cd70417491913"
  public static let nativeType = "mecharm_communication/MycobotSetCoords"
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
    -> Ros1Mecharm_communicationMycobotSetCoords
  {
    var v = Ros1Mecharm_communicationMycobotSetCoords()
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
public struct Ros1Mecharm_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6a8f60e71495c9944e1e97c308d5c992674bd46060b6f6abf2df3f9748c13123"
  public static let nativeType = "mecharm_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationGetAnglesRequest
  {
    var v = Ros1Mecharm_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mecharm_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e792a206903dc49fab725e3b3507af3cf4712f10740e9dcceeb90dedfe6ea6e8"
  public static let nativeType = "mecharm_communication/GetAnglesResponse"
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
    -> Ros1Mecharm_communicationGetAnglesResponse
  {
    var v = Ros1Mecharm_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mecharm_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_55d4d1b8965ea12f9b15d4bd5a22c43793d04af452fefb84bd98bc3d7d8da8bf"
  public static let nativeType = "mecharm_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationGetCoordsRequest
  {
    var v = Ros1Mecharm_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mecharm_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_2230e517685ea625507334067ccceb8424ecf782fcd4163c551d09048e900ca8"
  public static let nativeType = "mecharm_communication/GetCoordsResponse"
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
    -> Ros1Mecharm_communicationGetCoordsResponse
  {
    var v = Ros1Mecharm_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mecharm_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_98284fbac3bdb61857b9175b1f82adc7265d0ed418088123d79bf75cb04c9a2c"
  public static let nativeType = "mecharm_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationGripperStatusRequest
  {
    var v = Ros1Mecharm_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_29cfb0267fbe68d5dafcd3c9d16a8d4dab6b21477921a48ba35135bc0c22bb32"
  public static let nativeType = "mecharm_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationGripperStatusResponse
  {
    var v = Ros1Mecharm_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_aa138db91e46b41659dfc5901225aaaae1c1ae0461c35d3f7a90d0cf86c9920d"
  public static let nativeType = "mecharm_communication/PumpStatusRequest"
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
    -> Ros1Mecharm_communicationPumpStatusRequest
  {
    var v = Ros1Mecharm_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mecharm_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_876caa88c833bfa180b8747110683c789aa238c0cda162a8e262c66fddefdd8f"
  public static let nativeType = "mecharm_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationPumpStatusResponse
  {
    var v = Ros1Mecharm_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_7ad54edf4730457f2b2124c925b87a99bdbeddd8bfcc1e0d806f7b9dad31507b"
  public static let nativeType = "mecharm_communication/SetAnglesRequest"
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
    -> Ros1Mecharm_communicationSetAnglesRequest
  {
    var v = Ros1Mecharm_communicationSetAnglesRequest()
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
public struct Ros1Mecharm_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_940a294ef91d04afeb65b88bbdd91df3a7db0a07435ced3993db3a9d0f574c6e"
  public static let nativeType = "mecharm_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationSetAnglesResponse
  {
    var v = Ros1Mecharm_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mecharm_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_68deaf663a1fe2d3d7434935f10161eb444e7ea2f79e4b746fee9bd0383fc929"
  public static let nativeType = "mecharm_communication/SetCoordsRequest"
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
    -> Ros1Mecharm_communicationSetCoordsRequest
  {
    var v = Ros1Mecharm_communicationSetCoordsRequest()
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
public struct Ros1Mecharm_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c66a6e14c4c7eba1b52d7ef57802cb6122a120f692bcc1552c51078301b1b409"
  public static let nativeType = "mecharm_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mecharm_communicationSetCoordsResponse
  {
    var v = Ros1Mecharm_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationMyArmAngles: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_eff11a03e974b4af030c2dc92d0111cf95e0fb3ce004235bada3fe358b63fd4c"
  public static let nativeType = "myarm_communication/MyArmAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Myarm_communicationMyArmAngles {
    var v = Ros1Myarm_communicationMyArmAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    return v
  }
}
public struct Ros1Myarm_communicationMyArmCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_f0df1605988924f0263805fb2b27ab7ef9e2296691ed15e03a337606362c983c"
  public static let nativeType = "myarm_communication/MyArmCoords"
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
  public static func read(from r: inout WireReader) throws -> Ros1Myarm_communicationMyArmCoords {
    var v = Ros1Myarm_communicationMyArmCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Myarm_communicationMyArmGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7875df5b50417da1cef60d79c872aff0b40a08f9bbfe80c103729d3c4c892c6f"
  public static let nativeType = "myarm_communication/MyArmGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationMyArmGripperStatus
  {
    var v = Ros1Myarm_communicationMyArmGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationMyArmPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_58765b94f1ecb3bb131f6480ea6830631cde9c96eeef94fd9b22598ccc9ea928"
  public static let nativeType = "myarm_communication/MyArmPumpStatus"
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
  public static func read(from r: inout WireReader) throws -> Ros1Myarm_communicationMyArmPumpStatus
  {
    var v = Ros1Myarm_communicationMyArmPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Myarm_communicationMyArmSetAngles: Canonical {
  public static let maximumWireBytes = 29
  public static let codecIdentity =
    "UWVMROS1_6acbfd19e3864b66e47b9da5c7c0e8890e7336e8d6c9a5657c4f5eaa5285fe42"
  public static let nativeType = "myarm_communication/MyArmSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Myarm_communicationMyArmSetAngles
  {
    var v = Ros1Myarm_communicationMyArmSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Myarm_communicationMyArmSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_ce10c29be4cfd832d5076fead55817a0ac7ccde002d5bbbd7a2befd95e9752fd"
  public static let nativeType = "myarm_communication/MyArmSetCoords"
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
  public static func read(from r: inout WireReader) throws -> Ros1Myarm_communicationMyArmSetCoords
  {
    var v = Ros1Myarm_communicationMyArmSetCoords()
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
public struct Ros1Myarm_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_18ea682d1c475321b67435e9f207a14627113ad237a38c759cfe4e1c92fded37"
  public static let nativeType = "myarm_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationGetAnglesRequest
  {
    var v = Ros1Myarm_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Myarm_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_0c68b293384d21d06e23d4aba10b4a4c2eff4e1a0eaa81903e026fe28da410c7"
  public static let nativeType = "myarm_communication/GetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationGetAnglesResponse
  {
    var v = Ros1Myarm_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    return v
  }
}
public struct Ros1Myarm_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_04d9d79ad983cf4631cf65a48cae60d982cd0f234f0f4ed1afa0cc630bd63d95"
  public static let nativeType = "myarm_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationGetCoordsRequest
  {
    var v = Ros1Myarm_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Myarm_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_752564704c08fb2076df8eea4f6f5b89621041372472f0f99b6627fdfda831b7"
  public static let nativeType = "myarm_communication/GetCoordsResponse"
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
    -> Ros1Myarm_communicationGetCoordsResponse
  {
    var v = Ros1Myarm_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Myarm_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_adec2e0fbf48862c2245aea4c31c59ea12abdec26b4727b14005b65006c58976"
  public static let nativeType = "myarm_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationGripperStatusRequest
  {
    var v = Ros1Myarm_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d703a0ec6f562f1deb444313e36e6a728b4e521d1196d90a63725753d5fe9659"
  public static let nativeType = "myarm_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationGripperStatusResponse
  {
    var v = Ros1Myarm_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_eac2f5c006a0fa86df638c52e9cfb7d2c17818ec10e32ad5277af216c6c944f4"
  public static let nativeType = "myarm_communication/PumpStatusRequest"
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
    -> Ros1Myarm_communicationPumpStatusRequest
  {
    var v = Ros1Myarm_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Myarm_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_28533ec27c01d85c9a4644959ea8e5c3f2480f5203a9545e96e4242158f08044"
  public static let nativeType = "myarm_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationPumpStatusResponse
  {
    var v = Ros1Myarm_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 29
  public static let codecIdentity =
    "UWVMROS1_c15c81907fbace209686a98578019d893d86cecf4782427ac2c3858da8cd3e0a"
  public static let nativeType = "myarm_communication/SetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `joint_7`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.float32(self.`joint_7`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationSetAnglesRequest
  {
    var v = Ros1Myarm_communicationSetAnglesRequest()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`joint_7` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Myarm_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dbdbcb001f0478a4bba5ae9d7320d8dbfa4e36a5c1c130215ff5ab864c73af0f"
  public static let nativeType = "myarm_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationSetAnglesResponse
  {
    var v = Ros1Myarm_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Myarm_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_86cfc6edb6b86f90a21818e824aea50b697e314687472e1e96e9ce5399ef66c6"
  public static let nativeType = "myarm_communication/SetCoordsRequest"
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
    -> Ros1Myarm_communicationSetCoordsRequest
  {
    var v = Ros1Myarm_communicationSetCoordsRequest()
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
public struct Ros1Myarm_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_52a54371663141d4384dae8969b729baf097a0aa6105f263e78593743e44272d"
  public static let nativeType = "myarm_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Myarm_communicationSetCoordsResponse
  {
    var v = Ros1Myarm_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_67ec61da0c2bf7ee461c21abbfcab14d74b84cb6c9a12430e2a306abdc65690a"
  public static let nativeType = "mycobot_320_communication/MycobotAngles"
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
    -> Ros1Mycobot_320_communicationMycobotAngles
  {
    var v = Ros1Mycobot_320_communicationMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_320_communicationMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_1f2ada8331783764a52ed35c81c3ce9a2fdd260e2dffa2990751ce5156c3ad03"
  public static let nativeType = "mycobot_320_communication/MycobotCoords"
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
    -> Ros1Mycobot_320_communicationMycobotCoords
  {
    var v = Ros1Mycobot_320_communicationMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_320_communicationMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_efb4ccdb3ce35d67174700f3d3dd7332d0f7a834c5d76b6153e389e031907984"
  public static let nativeType = "mycobot_320_communication/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationMycobotGripperStatus
  {
    var v = Ros1Mycobot_320_communicationMycobotGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationMycobotPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_bb1d48067f44b7022820a6175afe05d5ba8caed9f750874a4e703389cb0d83f4"
  public static let nativeType = "mycobot_320_communication/MycobotPumpStatus"
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
    -> Ros1Mycobot_320_communicationMycobotPumpStatus
  {
    var v = Ros1Mycobot_320_communicationMycobotPumpStatus()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mycobot_320_communicationMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_bf04b1bd24ab2f56c1835d1abe44b73fe023407c3ebdd3d35341242116a5d259"
  public static let nativeType = "mycobot_320_communication/MycobotSetAngles"
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
    -> Ros1Mycobot_320_communicationMycobotSetAngles
  {
    var v = Ros1Mycobot_320_communicationMycobotSetAngles()
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
public struct Ros1Mycobot_320_communicationMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_761235ef96bcc1c687ad8dd3f6d39982d1b0a7a24eaab3bb54feb9780b9e0092"
  public static let nativeType = "mycobot_320_communication/MycobotSetCoords"
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
    -> Ros1Mycobot_320_communicationMycobotSetCoords
  {
    var v = Ros1Mycobot_320_communicationMycobotSetCoords()
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
public struct Ros1Mycobot_320_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fe13e75d9def5e6f7f831297c771cd4d319e1e9862b5026382fed23747b721b8"
  public static let nativeType = "mycobot_320_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationGetAnglesRequest
  {
    var v = Ros1Mycobot_320_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mycobot_320_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_c0cb03f21add6e566a30129ed7ce3174fa86786859c472a848c6768678adc80a"
  public static let nativeType = "mycobot_320_communication/GetAnglesResponse"
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
    -> Ros1Mycobot_320_communicationGetAnglesResponse
  {
    var v = Ros1Mycobot_320_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_320_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_82b2ae7ba4bf2aff8cd6c88ae344b376604624612abdd633c930695c1d1650d6"
  public static let nativeType = "mycobot_320_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationGetCoordsRequest
  {
    var v = Ros1Mycobot_320_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mycobot_320_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_821bac75a42a37fa06f51e57c09839f3557487dc8e883310601cb2e00bb6b05d"
  public static let nativeType = "mycobot_320_communication/GetCoordsResponse"
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
    -> Ros1Mycobot_320_communicationGetCoordsResponse
  {
    var v = Ros1Mycobot_320_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_320_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_68d072c047f4f026459309282a40c78c5db51571126efb85b7ca9e9f121b5eb5"
  public static let nativeType = "mycobot_320_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationGripperStatusRequest
  {
    var v = Ros1Mycobot_320_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9c1387ec1a93d6674ac6dd735b2811957db57359e9e461dcedc70ae6fccc5544"
  public static let nativeType = "mycobot_320_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationGripperStatusResponse
  {
    var v = Ros1Mycobot_320_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_23a6e68b36341b30ab13026cbddfd01b16d352105bb5faecd7c1ec6ad654ab60"
  public static let nativeType = "mycobot_320_communication/PumpStatusRequest"
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
    -> Ros1Mycobot_320_communicationPumpStatusRequest
  {
    var v = Ros1Mycobot_320_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    v.`Pin1` = try r.integer(Int8.self)
    v.`Pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Mycobot_320_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_037f53ebd0750c76a798ff17507759fcf71aa8a55496e5b151b8d977dff2c1c8"
  public static let nativeType = "mycobot_320_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationPumpStatusResponse
  {
    var v = Ros1Mycobot_320_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_644a7c29bae881d5f29708b552dcd8fd4102289aa396614590bca33dbda9f7da"
  public static let nativeType = "mycobot_320_communication/SetAnglesRequest"
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
    -> Ros1Mycobot_320_communicationSetAnglesRequest
  {
    var v = Ros1Mycobot_320_communicationSetAnglesRequest()
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
public struct Ros1Mycobot_320_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_57578e8427fc6a3a89aa595259e03c3498153482afd716dd44c0d09ee9f59f20"
  public static let nativeType = "mycobot_320_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationSetAnglesResponse
  {
    var v = Ros1Mycobot_320_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_320_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_f398444b45a64155c410a44da67043cee13993d75beabd6bc104b23ccd1d6656"
  public static let nativeType = "mycobot_320_communication/SetCoordsRequest"
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
    -> Ros1Mycobot_320_communicationSetCoordsRequest
  {
    var v = Ros1Mycobot_320_communicationSetCoordsRequest()
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
public struct Ros1Mycobot_320_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3fef1bfe9036381f8ad45bc1490e96b4917df5689ccf3a84d66e5ba5145e56c4"
  public static let nativeType = "mycobot_320_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_320_communicationSetCoordsResponse
  {
    var v = Ros1Mycobot_320_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
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
public struct Ros1Mycobot_communicationMycobotGetGripperValue: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8080d3e4a1844f789af2ef6752e8b46654a9c595c7dcbb3495f49e6c62419ae9"
  public static let nativeType = "mycobot_communication/MycobotGetGripperValue"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotGetGripperValue
  {
    var v = Ros1Mycobot_communicationMycobotGetGripperValue()
    v.`gripper_angle` = try r.integer(Int32.self)
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
public struct Ros1Mycobot_communicationMycobotSetEndType: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bb540db63ace33482ad35b74951f0423705297f9a70a4c0114cd604f6018f316"
  public static let nativeType = "mycobot_communication/MycobotSetEndType"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotSetEndType
  {
    var v = Ros1Mycobot_communicationMycobotSetEndType()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotSetFreshMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8e09301673b7d625945b4cd01e6bdd2ed1b7e6cfa1bd88beda7f409322a62c8f"
  public static let nativeType = "mycobot_communication/MycobotSetFreshMode"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotSetFreshMode
  {
    var v = Ros1Mycobot_communicationMycobotSetFreshMode()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotSetToolReference: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_1fb3b9a6679217b95db0a430f5a1f0bece575615dfc80599277edf90190ea11c"
  public static let nativeType = "mycobot_communication/MycobotSetToolReference"
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
    -> Ros1Mycobot_communicationMycobotSetToolReference
  {
    var v = Ros1Mycobot_communicationMycobotSetToolReference()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationMycobotSetVisionMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c930276fdaaef4870fc6058b156ccc574cc04b4ac96f0bc2f6031aba8016efe9"
  public static let nativeType = "mycobot_communication/MycobotSetVisionMode"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationMycobotSetVisionMode
  {
    var v = Ros1Mycobot_communicationMycobotSetVisionMode()
    v.`Status` = try r.integer(UInt8.self)
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
public struct Ros1Mycobot_communicationSetEndTypeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_59248e0ca199fb3bab9b866351648a6d1a58ed2240556122cfecb99331635472"
  public static let nativeType = "mycobot_communication/SetEndTypeRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetEndTypeRequest
  {
    var v = Ros1Mycobot_communicationSetEndTypeRequest()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationSetEndTypeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bf91211b167627be2325f38c0b2981bffa3984848681d52ed3c31d87586f9768"
  public static let nativeType = "mycobot_communication/SetEndTypeResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetEndTypeResponse
  {
    var v = Ros1Mycobot_communicationSetEndTypeResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationSetFreshModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b2ed41361e0adfc856bea480c2703f183b397b4f8b53bc561c95be0ec94d9350"
  public static let nativeType = "mycobot_communication/SetFreshModeRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetFreshModeRequest
  {
    var v = Ros1Mycobot_communicationSetFreshModeRequest()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationSetFreshModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e075cb6f6112e26ec799de1a72299af83a6bb2361cb90b6aae88434c33023e6f"
  public static let nativeType = "mycobot_communication/SetFreshModeResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetFreshModeResponse
  {
    var v = Ros1Mycobot_communicationSetFreshModeResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationSetToolReferenceRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_ef6dc2cc6e16fae40d20fa7d55d0d988204f4ca62fb99b755a2693aa628f7a79"
  public static let nativeType = "mycobot_communication/SetToolReferenceRequest"
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
    -> Ros1Mycobot_communicationSetToolReferenceRequest
  {
    var v = Ros1Mycobot_communicationSetToolReferenceRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_communicationSetToolReferenceResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a14c04cc61a7b5233212072bd203a643b90c551dec9235e57d7eddf1c5e0b146"
  public static let nativeType = "mycobot_communication/SetToolReferenceResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetToolReferenceResponse
  {
    var v = Ros1Mycobot_communicationSetToolReferenceResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_communicationSetVisionModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2715ecd55f7669963c076c781ceeef4ae54dac5ab71c378737ade7279c115c8b"
  public static let nativeType = "mycobot_communication/SetVisionModeRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetVisionModeRequest
  {
    var v = Ros1Mycobot_communicationSetVisionModeRequest()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_communicationSetVisionModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2caae9357e25a170c1d26630e666c2818a9a0f305e4608ad07031819f7d89cdb"
  public static let nativeType = "mycobot_communication/SetVisionModeResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_communicationSetVisionModeResponse
  {
    var v = Ros1Mycobot_communicationSetVisionModeResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_cebcee90c89b4e73d096135b0c70c8fb644f6aa32c5db066f0bf90982e25c72d"
  public static let nativeType = "mycobot_pro450_communication/MycobotAngles"
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
    -> Ros1Mycobot_pro450_communicationMycobotAngles
  {
    var v = Ros1Mycobot_pro450_communicationMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_4a604335875e926bd7593712c93d8802048266e4ea926ba5447fa9b396ea32e6"
  public static let nativeType = "mycobot_pro450_communication/MycobotCoords"
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
    -> Ros1Mycobot_pro450_communicationMycobotCoords
  {
    var v = Ros1Mycobot_pro450_communicationMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationMycobotGetGripperValue: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_88ad1a27a0982359460b5043bdd91a2c661ca0dc19009473ae7e0220c5215772"
  public static let nativeType = "mycobot_pro450_communication/MycobotGetGripperValue"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationMycobotGetGripperValue
  {
    var v = Ros1Mycobot_pro450_communicationMycobotGetGripperValue()
    v.`gripper_angle` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7c9ed441c8d5bac4dbf566f7a5052d99f0a01a8dcd281059fd7c329f4b232843"
  public static let nativeType = "mycobot_pro450_communication/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationMycobotGripperStatus
  {
    var v = Ros1Mycobot_pro450_communicationMycobotGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_896b2be337b734707291fc763629a14362649079634aaa782630607986be6154"
  public static let nativeType = "mycobot_pro450_communication/MycobotSetAngles"
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
    -> Ros1Mycobot_pro450_communicationMycobotSetAngles
  {
    var v = Ros1Mycobot_pro450_communicationMycobotSetAngles()
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
public struct Ros1Mycobot_pro450_communicationMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_27409949ade9bb2415cd1af1a278139049bc58098e7de7a5c8adc83d1ad851f6"
  public static let nativeType = "mycobot_pro450_communication/MycobotSetCoords"
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
    -> Ros1Mycobot_pro450_communicationMycobotSetCoords
  {
    var v = Ros1Mycobot_pro450_communicationMycobotSetCoords()
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
public struct Ros1Mycobot_pro450_communicationMycobotSetFreshMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9e06b1944e7fbab814bbaaa85f167d3804b5d11a1968f18b10e973222d0880ec"
  public static let nativeType = "mycobot_pro450_communication/MycobotSetFreshMode"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationMycobotSetFreshMode
  {
    var v = Ros1Mycobot_pro450_communicationMycobotSetFreshMode()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_07223209461cde1ca99ba125067ca257ceaa9bd1aeceed1ffeb6a3769c152278"
  public static let nativeType = "mycobot_pro450_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGetAnglesRequest
  {
    var v = Ros1Mycobot_pro450_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_000239e0594bda363723370cdde86974aa367ebf3bc93582779edbb2bf578ffb"
  public static let nativeType = "mycobot_pro450_communication/GetAnglesResponse"
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
    -> Ros1Mycobot_pro450_communicationGetAnglesResponse
  {
    var v = Ros1Mycobot_pro450_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_db7906239cfb05812965b398a427fe4e23bf4f0f43fd927c82b0b2370132a649"
  public static let nativeType = "mycobot_pro450_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGetCoordsRequest
  {
    var v = Ros1Mycobot_pro450_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_46aee6d68fc728529b5662b86d4f6aa283ff4709a0fdeafa7604347a0ed50d72"
  public static let nativeType = "mycobot_pro450_communication/GetCoordsResponse"
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
    -> Ros1Mycobot_pro450_communicationGetCoordsResponse
  {
    var v = Ros1Mycobot_pro450_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetGripperValueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_63c7779d43e5fef7c0ec249a46840bfc1844f55efcd29933f6b7a6a9dbdadec6"
  public static let nativeType = "mycobot_pro450_communication/GetGripperValueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGetGripperValueRequest
  {
    var v = Ros1Mycobot_pro450_communicationGetGripperValueRequest()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGetGripperValueResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7c15e7468746ac577b70084cee685a3d71265a9f296caf5ae0b21755a2523b9e"
  public static let nativeType = "mycobot_pro450_communication/GetGripperValueResponse"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGetGripperValueResponse
  {
    var v = Ros1Mycobot_pro450_communicationGetGripperValueResponse()
    v.`gripper_angle` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_10b38d264413567fdf84efc6b7f8effe15e69956db282f9b66dae8b32eddb363"
  public static let nativeType = "mycobot_pro450_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGripperStatusRequest
  {
    var v = Ros1Mycobot_pro450_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0d8dc6af5bd1643e43105c6a91f9dfef97b23ea5b7ac2d55e3511959f3d75f56"
  public static let nativeType = "mycobot_pro450_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationGripperStatusResponse
  {
    var v = Ros1Mycobot_pro450_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_8868bfafb22b925be720901f303faeec6396f2aab40d9b3e4d94518abd5e7afd"
  public static let nativeType = "mycobot_pro450_communication/SetAnglesRequest"
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
    -> Ros1Mycobot_pro450_communicationSetAnglesRequest
  {
    var v = Ros1Mycobot_pro450_communicationSetAnglesRequest()
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
public struct Ros1Mycobot_pro450_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2228dd37fed5398cd2a53dd7653d6749fd5b70960c8eaa60fcfb09de4220474c"
  public static let nativeType = "mycobot_pro450_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationSetAnglesResponse
  {
    var v = Ros1Mycobot_pro450_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_972fe4365e24ef46a54d7f655873ba4351aa6bdfd9caaec83f158655905d536d"
  public static let nativeType = "mycobot_pro450_communication/SetCoordsRequest"
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
    -> Ros1Mycobot_pro450_communicationSetCoordsRequest
  {
    var v = Ros1Mycobot_pro450_communicationSetCoordsRequest()
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
public struct Ros1Mycobot_pro450_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9c62a41f3a4198ab13a993036e78164f2cf09bb61b43a23d54f0674dec58435d"
  public static let nativeType = "mycobot_pro450_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationSetCoordsResponse
  {
    var v = Ros1Mycobot_pro450_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationSetFreshModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d744f6c3f5e9ddf6db911e423d5aa4904bbf32ff156121aa4ad7fe5ee8b28628"
  public static let nativeType = "mycobot_pro450_communication/SetFreshModeRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationSetFreshModeRequest
  {
    var v = Ros1Mycobot_pro450_communicationSetFreshModeRequest()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Mycobot_pro450_communicationSetFreshModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_97d367a4d675b8762303e66c1d1aaab32277ac2c5fd92103eb60747214d9d431"
  public static let nativeType = "mycobot_pro450_communication/SetFreshModeResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Mycobot_pro450_communicationSetFreshModeResponse
  {
    var v = Ros1Mycobot_pro450_communicationSetFreshModeResponse()
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
public struct Ros1Ultraarm_communicationMycobotAngles: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_6bd94559b201105277e0638cff9820be0cf03efb492bc958a61a78222e1afe67"
  public static let nativeType = "ultraarm_communication/MycobotAngles"
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
    -> Ros1Ultraarm_communicationMycobotAngles
  {
    var v = Ros1Ultraarm_communicationMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotCoords: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_f4228da3bdb19f7a63e4fbdddb7bc271debed1178663a855476c2b2425e36134"
  public static let nativeType = "ultraarm_communication/MycobotCoords"
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
    -> Ros1Ultraarm_communicationMycobotCoords
  {
    var v = Ros1Ultraarm_communicationMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotGetGripperValue: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c5c4c82dfab7600d1ee48fc899c1e0906a80b59e03fee89ef75de5e8bbd1a672"
  public static let nativeType = "ultraarm_communication/MycobotGetGripperValue"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationMycobotGetGripperValue
  {
    var v = Ros1Ultraarm_communicationMycobotGetGripperValue()
    v.`gripper_angle` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c3ca37a8201c045099baec080410ebfc399793a7953d36c0bce7d50e786611ce"
  public static let nativeType = "ultraarm_communication/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationMycobotGripperStatus
  {
    var v = Ros1Ultraarm_communicationMycobotGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_cb0fbf2cc911d7b907fbe1c09f7dbd4643439430b05976ce508bd7dbf71f9baa"
  public static let nativeType = "ultraarm_communication/MycobotSetAngles"
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
    -> Ros1Ultraarm_communicationMycobotSetAngles
  {
    var v = Ros1Ultraarm_communicationMycobotSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_7eb6643462e1eec9cf943d9251c8b5fb47a6c1c63a4381bacd540e22c3584a68"
  public static let nativeType = "ultraarm_communication/MycobotSetCoords"
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
    -> Ros1Ultraarm_communicationMycobotSetCoords
  {
    var v = Ros1Ultraarm_communicationMycobotSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationMycobotSetFreshMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0934edaedfc4606d4301b38218c72e6fc323fcea3bb39143bd507ec3b410e638"
  public static let nativeType = "ultraarm_communication/MycobotSetFreshMode"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationMycobotSetFreshMode
  {
    var v = Ros1Ultraarm_communicationMycobotSetFreshMode()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationGetAnglesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fd6922aabe6ec7f82731d19efb0963753d86a8f412de96f8bc67ea2615a7c860"
  public static let nativeType = "ultraarm_communication/GetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetAnglesRequest
  {
    var v = Ros1Ultraarm_communicationGetAnglesRequest()
    return v
  }
}
public struct Ros1Ultraarm_communicationGetAnglesResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_d6b80e48675b3a8f262cc463bca84353d52291cd450a656b14f5d81be851a8cf"
  public static let nativeType = "ultraarm_communication/GetAnglesResponse"
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
    -> Ros1Ultraarm_communicationGetAnglesResponse
  {
    var v = Ros1Ultraarm_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationGetCoordsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_40a6535b429baf0bbe0bc642ade7a8048e693633388ccd061bf12b6d795bbbd1"
  public static let nativeType = "ultraarm_communication/GetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetCoordsRequest
  {
    var v = Ros1Ultraarm_communicationGetCoordsRequest()
    return v
  }
}
public struct Ros1Ultraarm_communicationGetCoordsResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_4ce97f0eb2846366887ab0ae90d2b2ca8f4571cddb5e0c7095ca7098b2e127a1"
  public static let nativeType = "ultraarm_communication/GetCoordsResponse"
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
    -> Ros1Ultraarm_communicationGetCoordsResponse
  {
    var v = Ros1Ultraarm_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationGetGripperValueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f4daff0f9c6ba692e9b20e29cc67066afb3931d146ba995848dcdc83db2b52b1"
  public static let nativeType = "ultraarm_communication/GetGripperValueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetGripperValueRequest
  {
    var v = Ros1Ultraarm_communicationGetGripperValueRequest()
    return v
  }
}
public struct Ros1Ultraarm_communicationGetGripperValueResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ff7452fb5fb1f5a55c8db0a2aa6d18df1a62a85d32a659506dd31a1ce1721c90"
  public static let nativeType = "ultraarm_communication/GetGripperValueResponse"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetGripperValueResponse
  {
    var v = Ros1Ultraarm_communicationGetGripperValueResponse()
    v.`gripper_angle` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationGripperStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c435d39bef04bd7022e048c0cf364d100bf7a92855f04c816d2a22f0e672d586"
  public static let nativeType = "ultraarm_communication/GripperStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGripperStatusRequest
  {
    var v = Ros1Ultraarm_communicationGripperStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationGripperStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_fa0c99ff37acea63c5d507174f9725a9341ffaa007e722e21a8e0b93097e56d4"
  public static let nativeType = "ultraarm_communication/GripperStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGripperStatusResponse
  {
    var v = Ros1Ultraarm_communicationGripperStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_5a1aab8379585f404a15dbfd8832dd6434d969f41681127befca7458181fc65a"
  public static let nativeType = "ultraarm_communication/SetAnglesRequest"
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
    -> Ros1Ultraarm_communicationSetAnglesRequest
  {
    var v = Ros1Ultraarm_communicationSetAnglesRequest()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationSetAnglesResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f1ecaff9a60a47ef978b0faf2b9b2b9166ae308b3df718b0536536004dc8a3b4"
  public static let nativeType = "ultraarm_communication/SetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetAnglesResponse
  {
    var v = Ros1Ultraarm_communicationSetAnglesResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationSetCoordsRequest: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_54d83be688da3c885a7166e4d2c1c636a1144ba863a0a388907511896d5626e5"
  public static let nativeType = "ultraarm_communication/SetCoordsRequest"
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
    -> Ros1Ultraarm_communicationSetCoordsRequest
  {
    var v = Ros1Ultraarm_communicationSetCoordsRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationSetCoordsResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_02aa6c82612c5ffd43e890bb173a59245e00cd91dbc38303dcbdc0fb30683431"
  public static let nativeType = "ultraarm_communication/SetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetCoordsResponse
  {
    var v = Ros1Ultraarm_communicationSetCoordsResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationSetFreshModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_142c43e6dcd72843cdd002e5b6815524b2b6a5a02372e5b966dc630947a90649"
  public static let nativeType = "ultraarm_communication/SetFreshModeRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetFreshModeRequest
  {
    var v = Ros1Ultraarm_communicationSetFreshModeRequest()
    v.`Status` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationSetFreshModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_764d9c9dfff1f18a5501c5f040a6bc66ae6f93bfb7b932a33c2ece2a70d38104"
  public static let nativeType = "ultraarm_communication/SetFreshModeResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetFreshModeResponse
  {
    var v = Ros1Ultraarm_communicationSetFreshModeResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
