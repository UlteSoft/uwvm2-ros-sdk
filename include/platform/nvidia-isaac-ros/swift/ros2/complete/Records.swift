// @file Records.swift
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-ros.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

// Generated complete canonical values. No I/O or authority.
import RosWasm

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
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 64)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 64)
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
public struct Ros2Geometry_msgsMsgPoseWithCovariance: Canonical {
  public static let maximumWireBytes = 344
  public static let codecIdentity =
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
  public static let nativeType = "geometry_msgs/msg/PoseWithCovariance"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `covariance`: [Double] = Array(repeating: 0, count: 36)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    guard self.`covariance`.count == 36 else { throw RosError(22) }
    for e in self.`covariance` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoseWithCovariance
  {
    var v = Ros2Geometry_msgsMsgPoseWithCovariance()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Geometry_msgsMsgPoseWithCovarianceStamped: Canonical {
  public static let maximumWireBytes = 420
  public static let codecIdentity =
    "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3"
  public static let nativeType = "geometry_msgs/msg/PoseWithCovarianceStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `pose`: Ros2Geometry_msgsMsgPoseWithCovariance =
    Ros2Geometry_msgsMsgPoseWithCovariance()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Geometry_msgsMsgPoseWithCovarianceStamped
  {
    var v = Ros2Geometry_msgsMsgPoseWithCovarianceStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`pose` = try Ros2Geometry_msgsMsgPoseWithCovariance.read(from: &r)
    return v
  }
}
public struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection: Canonical {
  public static let maximumWireBytes = 612
  public static let codecIdentity =
    "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7"
  public static let nativeType = "isaac_ros_apriltag_interfaces/msg/AprilTagDetection"
  public static let nativeIdentity: String? = nil
  public var `family`: String = ""
  public var `id`: Int32 = 0
  public var `center`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  public var `corners`: [Ros2Geometry_msgsMsgPoint] = Array(
    repeating: Ros2Geometry_msgsMsgPoint(), count: 4)
  public var `pose`: Ros2Geometry_msgsMsgPoseWithCovarianceStamped =
    Ros2Geometry_msgsMsgPoseWithCovarianceStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`family`, bound: 64)
    try w.integer(self.`id`)
    try self.`center`.write(to: &w)
    guard self.`corners`.count == 4 else { throw RosError(22) }
    for e in self.`corners` {
      try e.write(to: &w)
    }
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
  {
    var v = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection()
    v.`family` = try r.string(bound: 64)
    v.`id` = try r.integer(Int32.self)
    v.`center` = try Ros2Geometry_msgsMsgPoint.read(from: &r)
    let count3 = 4
    v.`corners` = []
    v.`corners`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`corners`.append(try Ros2Geometry_msgsMsgPoint.read(from: &r))
    }
    v.`pose` = try Ros2Geometry_msgsMsgPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
public struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray: Canonical {
  public static let maximumWireBytes = 9872
  public static let codecIdentity =
    "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5"
  public static let nativeType = "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `detections`: [Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`detections`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`detections`.count))
    for e in self.`detections` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
  {
    var v = Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`detections` = []
    v.`detections`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`detections`.append(
        try Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.read(from: &r))
    }
    return v
  }
}
