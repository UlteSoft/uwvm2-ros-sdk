// @file Records.swift
// @brief Full leju swift codecs and original record metadata.
// @details Complete leju ros1_master_unregistered_dtos values in swift. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Kuavo_sdkQv: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32"
  public static let nativeType = "kuavo_sdk/qv"
  public static let nativeIdentity: String? = nil
  public var `value`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_sdkQv {
    var v = Ros1Kuavo_sdkQv()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`value` = []
    v.`value`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`value`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_sdkFullBodyTargetTrajectories: Canonical {
  public static let maximumWireBytes = 2320
  public static let codecIdentity =
    "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32"
  public static let nativeType = "kuavo_sdk/fullBodyTargetTrajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `footIndexTrajectory`: [Int32] = []
  public var `fullBodyQTrajectory`: [Ros1Kuavo_sdkQv] = []
  public var `fullBodyVTrajectory`: [Ros1Kuavo_sdkQv] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`timeTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`timeTrajectory`.count))
    for e in self.`timeTrajectory` {
      try w.float64(e)
    }
    guard self.`footIndexTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`footIndexTrajectory`.count))
    for e in self.`footIndexTrajectory` {
      try w.integer(e)
    }
    guard self.`fullBodyQTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`fullBodyQTrajectory`.count))
    for e in self.`fullBodyQTrajectory` {
      try e.write(to: &w)
    }
    guard self.`fullBodyVTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`fullBodyVTrajectory`.count))
    for e in self.`fullBodyVTrajectory` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_sdkFullBodyTargetTrajectories
  {
    var v = Ros1Kuavo_sdkFullBodyTargetTrajectories()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`timeTrajectory` = []
    v.`timeTrajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`timeTrajectory`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`footIndexTrajectory` = []
    v.`footIndexTrajectory`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`footIndexTrajectory`.append(try r.integer(Int32.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`fullBodyQTrajectory` = []
    v.`fullBodyQTrajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`fullBodyQTrajectory`.append(try Ros1Kuavo_sdkQv.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`fullBodyVTrajectory` = []
    v.`fullBodyVTrajectory`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`fullBodyVTrajectory`.append(try Ros1Kuavo_sdkQv.read(from: &r))
    }
    return v
  }
}
