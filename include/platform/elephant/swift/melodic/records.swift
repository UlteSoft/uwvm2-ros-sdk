/// @file records.swift
/// @brief Preserve the complete original elephant/melodic canonical value domain.
/// @details The selected domain contains 126 complete record/components and 448 original fields. Declared
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
public struct Ros1Ultraarm_communicationUltraArmAngles: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_8fa11b8169b634ea7c786bef6ee5d8f0d42488b9841f06104ca8fd378c0fa88d"
  public static let nativeType = "ultraarm_communication/ultraArmAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmAngles
  {
    var v = Ros1Ultraarm_communicationUltraArmAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationUltraArmCoords: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_4e540a1f7d66110adec19bcf3114c44bbc8574efbfd05e911de8d56cc64f24fa"
  public static let nativeType = "ultraarm_communication/ultraArmCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmCoords
  {
    var v = Ros1Ultraarm_communicationUltraArmCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    return v
  }
}
public struct Ros1Ultraarm_communicationUltraArmGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_60d9ded61184b6f51986afe42b42c786ffb71a13ee6af004c3836c6708b41f9c"
  public static let nativeType = "ultraarm_communication/ultraArmGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmGripperStatus
  {
    var v = Ros1Ultraarm_communicationUltraArmGripperStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationUltraArmPumpStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f765502e0a7c0a4fe18049032fe9d314512de56bc2d52e4b1a8cbaf01fbc68e1"
  public static let nativeType = "ultraarm_communication/ultraArmPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmPumpStatus
  {
    var v = Ros1Ultraarm_communicationUltraArmPumpStatus()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationUltraArmSetAngles: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_0536de7f7a45a8d0a19b16b78557ec77c4ce5f99e1141df3c617da847cbb079c"
  public static let nativeType = "ultraarm_communication/ultraArmSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmSetAngles
  {
    var v = Ros1Ultraarm_communicationUltraArmSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Ultraarm_communicationUltraArmSetCoords: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_4e59dd853f51fe18f9401ec6d0fffaa50a00ba7c96a12b8d09c9bfd5ad68f818"
  public static let nativeType = "ultraarm_communication/ultraArmSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationUltraArmSetCoords
  {
    var v = Ros1Ultraarm_communicationUltraArmSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
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
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_d7048c8ef416139a11a58bd7d5b865f4b6e0b5431c8e80cdd8c4c79de67cc128"
  public static let nativeType = "ultraarm_communication/GetAnglesResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetAnglesResponse
  {
    var v = Ros1Ultraarm_communicationGetAnglesResponse()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
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
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_9f19d8d2eb7284c4cbe2587ca0438d4680287759553d908340f5053ae4f4f036"
  public static let nativeType = "ultraarm_communication/GetCoordsResponse"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationGetCoordsResponse
  {
    var v = Ros1Ultraarm_communicationGetCoordsResponse()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
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
public struct Ros1Ultraarm_communicationPumpStatusRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_03df5de115870b7679c85e5dc64f996694578f1b7b41387e531a49ee6626e8b2"
  public static let nativeType = "ultraarm_communication/PumpStatusRequest"
  public static let nativeIdentity: String? = nil
  public var `Status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationPumpStatusRequest
  {
    var v = Ros1Ultraarm_communicationPumpStatusRequest()
    v.`Status` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationPumpStatusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_693fd1ad36c534188f959fdb72df4f970432946c5706472c0bf41b27d054a4ee"
  public static let nativeType = "ultraarm_communication/PumpStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `Flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`Flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationPumpStatusResponse
  {
    var v = Ros1Ultraarm_communicationPumpStatusResponse()
    v.`Flag` = try r.boolean()
    return v
  }
}
public struct Ros1Ultraarm_communicationSetAnglesRequest: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_fe8cdfa565c8aa8b77db9743af57d7c1ba14aa9dd31c8d4ca92bb7aec107bb42"
  public static let nativeType = "ultraarm_communication/SetAnglesRequest"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetAnglesRequest
  {
    var v = Ros1Ultraarm_communicationSetAnglesRequest()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
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
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_2a4670c426b6cf566795b0e874018769fb7e852bd104770dff3e735608c3e3d5"
  public static let nativeType = "ultraarm_communication/SetCoordsRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ultraarm_communicationSetCoordsRequest
  {
    var v = Ros1Ultraarm_communicationSetCoordsRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
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
