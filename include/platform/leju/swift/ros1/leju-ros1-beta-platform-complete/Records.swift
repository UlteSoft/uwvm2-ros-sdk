// @file Records.swift
// @brief Full leju swift codecs and original record metadata.
// @details Complete leju ros1_beta_platform values in swift. 532 original records retain 1587 fields and 378
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

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
public struct Ros1Geometry_msgsPoseWithCovariance: Canonical {
  public static let maximumWireBytes = 344
  public static let codecIdentity =
    "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
  public static let nativeType = "geometry_msgs/PoseWithCovariance"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `covariance`: [Double] = Array(repeating: 0, count: 36)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    guard self.`covariance`.count == 36 else { throw RosError(22) }
    for e in self.`covariance` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseWithCovariance {
    var v = Ros1Geometry_msgsPoseWithCovariance()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Aruco_msgsMarker: Canonical {
  public static let maximumWireBytes = 628
  public static let codecIdentity =
    "UWVMROS1_4c6aee9b879070cefe3a1b59e11178b93b8226c179d5c193232713f70ec0dc2f"
  public static let nativeType = "aruco_msgs/Marker"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `id`: UInt32 = 0
  public var `pose`: Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance()
  public var `confidence`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`id`)
    try self.`pose`.write(to: &w)
    try w.float64(self.`confidence`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Aruco_msgsMarker {
    var v = Ros1Aruco_msgsMarker()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`id` = try r.integer(UInt32.self)
    v.`pose` = try Ros1Geometry_msgsPoseWithCovariance.read(from: &r)
    v.`confidence` = try r.float64()
    return v
  }
}
public struct Ros1Aruco_msgsMarkerArray: Canonical {
  public static let maximumWireBytes = 5300
  public static let codecIdentity =
    "UWVMROS1_2fabec40c19196e3575ffa99710bce32fa2827ee63f65dc49b8742897901e422"
  public static let nativeType = "aruco_msgs/MarkerArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `markers`: [Ros1Aruco_msgsMarker] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`markers`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`markers`.count))
    for e in self.`markers` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Aruco_msgsMarkerArray {
    var v = Ros1Aruco_msgsMarkerArray()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`markers` = []
    v.`markers`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`markers`.append(try Ros1Aruco_msgsMarker.read(from: &r))
    }
    return v
  }
}
public struct Ros1Easy_handeye_msgsCheckStartingPoseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3fc4c8d58fc78cb1a405a11648106b11b5dc0b52ab53f09d5fcd12ea0fd9dd81"
  public static let nativeType = "easy_handeye_msgs/CheckStartingPoseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsCheckStartingPoseRequest
  {
    var v = Ros1Easy_handeye_msgsCheckStartingPoseRequest()
    return v
  }
}
public struct Ros1Geometry_msgsPoseStamped: Canonical {
  public static let maximumWireBytes = 328
  public static let codecIdentity =
    "UWVMROS1_c7266bddd3b2f53e635603df8e18d33514783e7f49bc4d10c2d9d95fb72b4883"
  public static let nativeType = "geometry_msgs/PoseStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseStamped {
    var v = Ros1Geometry_msgsPoseStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsTargetPoseList: Canonical {
  public static let maximumWireBytes = 2964
  public static let codecIdentity =
    "UWVMROS1_88fadc5096aa9285f5f9e24f64ff9192bfe46cadff0ae15763857b777d76a881"
  public static let nativeType = "easy_handeye_msgs/TargetPoseList"
  public static let nativeIdentity: String? = nil
  public var `home_pose`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  public var `target_poses`: [Ros1Geometry_msgsPoseStamped] = []
  public var `current_target_pose_index`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`home_pose`.write(to: &w)
    guard self.`target_poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`target_poses`.count))
    for e in self.`target_poses` {
      try e.write(to: &w)
    }
    try w.integer(self.`current_target_pose_index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Easy_handeye_msgsTargetPoseList {
    var v = Ros1Easy_handeye_msgsTargetPoseList()
    v.`home_pose` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`target_poses` = []
    v.`target_poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`target_poses`.append(try Ros1Geometry_msgsPoseStamped.read(from: &r))
    }
    v.`current_target_pose_index` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Easy_handeye_msgsCheckStartingPoseResponse: Canonical {
  public static let maximumWireBytes = 2965
  public static let codecIdentity =
    "UWVMROS1_26c11afb0477b87d076dfbdb624db02eda6c84501177b02f8e42cad4516c9abe"
  public static let nativeType = "easy_handeye_msgs/CheckStartingPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `can_calibrate`: Bool = false
  public var `target_poses`: Ros1Easy_handeye_msgsTargetPoseList =
    Ros1Easy_handeye_msgsTargetPoseList()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`can_calibrate`)
    try self.`target_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsCheckStartingPoseResponse
  {
    var v = Ros1Easy_handeye_msgsCheckStartingPoseResponse()
    v.`can_calibrate` = try r.boolean()
    v.`target_poses` = try Ros1Easy_handeye_msgsTargetPoseList.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsComputeCalibrationRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9a3a6b91c791068f25b7287aa2538d557e293268c8efdf0175514f64412cb998"
  public static let nativeType = "easy_handeye_msgs/ComputeCalibrationRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsComputeCalibrationRequest
  {
    var v = Ros1Easy_handeye_msgsComputeCalibrationRequest()
    return v
  }
}
public struct Ros1Geometry_msgsVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
  public static let nativeType = "geometry_msgs/Vector3"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsVector3 {
    var v = Ros1Geometry_msgsVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Geometry_msgsTransform: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
  public static let nativeType = "geometry_msgs/Transform"
  public static let nativeIdentity: String? = nil
  public var `translation`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `rotation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`translation`.write(to: &w)
    try self.`rotation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTransform {
    var v = Ros1Geometry_msgsTransform()
    v.`translation` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`rotation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsTransformStamped: Canonical {
  public static let maximumWireBytes = 588
  public static let codecIdentity =
    "UWVMROS1_aca34d1b6d4741062f931da8292f79a9448841fd1d212c35e23a69ae8edc40a8"
  public static let nativeType = "geometry_msgs/TransformStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `child_frame_id`: String = ""
  public var `transform`: Ros1Geometry_msgsTransform = Ros1Geometry_msgsTransform()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`child_frame_id`, bound: 256)
    try self.`transform`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTransformStamped {
    var v = Ros1Geometry_msgsTransformStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 256)
    v.`transform` = try Ros1Geometry_msgsTransform.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsHandeyeCalibration: Canonical {
  public static let maximumWireBytes = 589
  public static let codecIdentity =
    "UWVMROS1_97090e29d44c66824b480167dba1bc1a356f32adc9dd3017964e72d55f676ed1"
  public static let nativeType = "easy_handeye_msgs/HandeyeCalibration"
  public static let nativeIdentity: String? = nil
  public var `eye_on_hand`: Bool = false
  public var `transform`: Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`eye_on_hand`)
    try self.`transform`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsHandeyeCalibration
  {
    var v = Ros1Easy_handeye_msgsHandeyeCalibration()
    v.`eye_on_hand` = try r.boolean()
    v.`transform` = try Ros1Geometry_msgsTransformStamped.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsComputeCalibrationResponse: Canonical {
  public static let maximumWireBytes = 590
  public static let codecIdentity =
    "UWVMROS1_6c47afe3d660734f25066602d1bc3237d0de0fef07f8d278939df035601a3856"
  public static let nativeType = "easy_handeye_msgs/ComputeCalibrationResponse"
  public static let nativeIdentity: String? = nil
  public var `valid`: Bool = false
  public var `calibration`: Ros1Easy_handeye_msgsHandeyeCalibration =
    Ros1Easy_handeye_msgsHandeyeCalibration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`valid`)
    try self.`calibration`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsComputeCalibrationResponse
  {
    var v = Ros1Easy_handeye_msgsComputeCalibrationResponse()
    v.`valid` = try r.boolean()
    v.`calibration` = try Ros1Easy_handeye_msgsHandeyeCalibration.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsEnumerateTargetPosesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b326fb3c9cbc970f4066e60e7787a7ecce78d0168109b5d2017806d0c5fb18b6"
  public static let nativeType = "easy_handeye_msgs/EnumerateTargetPosesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsEnumerateTargetPosesRequest
  {
    var v = Ros1Easy_handeye_msgsEnumerateTargetPosesRequest()
    return v
  }
}
public struct Ros1Easy_handeye_msgsEnumerateTargetPosesResponse: Canonical {
  public static let maximumWireBytes = 2964
  public static let codecIdentity =
    "UWVMROS1_22821ba135f62766771c0a50abe568897c086c18d3a3913db0ae29dda2d98ce9"
  public static let nativeType = "easy_handeye_msgs/EnumerateTargetPosesResponse"
  public static let nativeIdentity: String? = nil
  public var `target_poses`: Ros1Easy_handeye_msgsTargetPoseList =
    Ros1Easy_handeye_msgsTargetPoseList()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsEnumerateTargetPosesResponse
  {
    var v = Ros1Easy_handeye_msgsEnumerateTargetPosesResponse()
    v.`target_poses` = try Ros1Easy_handeye_msgsTargetPoseList.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsExecutePlanRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_07d845828171563871b7617f6890afb7d15f136f95af7db9dafe0bd784479f3c"
  public static let nativeType = "easy_handeye_msgs/ExecutePlanRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsExecutePlanRequest
  {
    var v = Ros1Easy_handeye_msgsExecutePlanRequest()
    return v
  }
}
public struct Ros1Easy_handeye_msgsExecutePlanResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_fab7ba93fde4252e3253dad045788be4a28a1cc3235551c3925f9d4c961b5201"
  public static let nativeType = "easy_handeye_msgs/ExecutePlanResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsExecutePlanResponse
  {
    var v = Ros1Easy_handeye_msgsExecutePlanResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Easy_handeye_msgsListAlgorithmsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_37355f8ff36ec035e22e4716f4e4963417a52f73affb570ccd330d40357e58a1"
  public static let nativeType = "easy_handeye_msgs/ListAlgorithmsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsListAlgorithmsRequest
  {
    var v = Ros1Easy_handeye_msgsListAlgorithmsRequest()
    return v
  }
}
public struct Ros1Easy_handeye_msgsListAlgorithmsResponse: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_9117a612c5ea330ec82ab01c84cbfbb1f7a3c3fdeda6cc2ef5573cdf8627aa04"
  public static let nativeType = "easy_handeye_msgs/ListAlgorithmsResponse"
  public static let nativeIdentity: String? = nil
  public var `algorithms`: [String] = []
  public var `current_algorithm`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`algorithms`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`algorithms`.count))
    for e in self.`algorithms` {
      try w.string(e, bound: 256)
    }
    try w.string(self.`current_algorithm`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsListAlgorithmsResponse
  {
    var v = Ros1Easy_handeye_msgsListAlgorithmsResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`algorithms` = []
    v.`algorithms`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`algorithms`.append(try r.string(bound: 256))
    }
    v.`current_algorithm` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8fe688f2e3b2f638b9cf027d09c0932787ba89cc253e38a577f30eacd2a2dede"
  public static let nativeType = "easy_handeye_msgs/PlanToSelectedTargetPoseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest
  {
    var v = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest()
    return v
  }
}
public struct Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_36cd8dbf0bde4a28be39a4d8f2ae62e5d0c812d497266f2b04fd212eaf31d884"
  public static let nativeType = "easy_handeye_msgs/PlanToSelectedTargetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse
  {
    var v = Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Easy_handeye_msgsRemoveSampleRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8aef990bd52391a06da78acd25d6e7e7edf28369cea8e1c899c77bb07d365102"
  public static let nativeType = "easy_handeye_msgs/RemoveSampleRequest"
  public static let nativeIdentity: String? = nil
  public var `sample_index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sample_index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsRemoveSampleRequest
  {
    var v = Ros1Easy_handeye_msgsRemoveSampleRequest()
    v.`sample_index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Easy_handeye_msgsSampleList: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_08184f786ead6b56ce3573af53cda314a034ed6b073704ef3666504699a00f92"
  public static let nativeType = "easy_handeye_msgs/SampleList"
  public static let nativeIdentity: String? = nil
  public var `hand_world_samples`: [Ros1Geometry_msgsTransform] = []
  public var `camera_marker_samples`: [Ros1Geometry_msgsTransform] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`hand_world_samples`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`hand_world_samples`.count))
    for e in self.`hand_world_samples` {
      try e.write(to: &w)
    }
    guard self.`camera_marker_samples`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`camera_marker_samples`.count))
    for e in self.`camera_marker_samples` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Easy_handeye_msgsSampleList {
    var v = Ros1Easy_handeye_msgsSampleList()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`hand_world_samples` = []
    v.`hand_world_samples`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`hand_world_samples`.append(try Ros1Geometry_msgsTransform.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`camera_marker_samples` = []
    v.`camera_marker_samples`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`camera_marker_samples`.append(try Ros1Geometry_msgsTransform.read(from: &r))
    }
    return v
  }
}
public struct Ros1Easy_handeye_msgsRemoveSampleResponse: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_ee655ac7197c2ab2b302383dd34009d58f1a09a531c929195f1eb91e26176804"
  public static let nativeType = "easy_handeye_msgs/RemoveSampleResponse"
  public static let nativeIdentity: String? = nil
  public var `samples`: Ros1Easy_handeye_msgsSampleList = Ros1Easy_handeye_msgsSampleList()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`samples`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsRemoveSampleResponse
  {
    var v = Ros1Easy_handeye_msgsRemoveSampleResponse()
    v.`samples` = try Ros1Easy_handeye_msgsSampleList.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsSelectTargetPoseRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d4ddd810f9199385b81f53a2a4cc505c8a19f724733cd2dd7c0556c4b75ec9e1"
  public static let nativeType = "easy_handeye_msgs/SelectTargetPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `target_pose_index`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`target_pose_index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsSelectTargetPoseRequest
  {
    var v = Ros1Easy_handeye_msgsSelectTargetPoseRequest()
    v.`target_pose_index` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Easy_handeye_msgsSelectTargetPoseResponse: Canonical {
  public static let maximumWireBytes = 2965
  public static let codecIdentity =
    "UWVMROS1_8565990ebb5f321a2f3d5d72a4ea549b3b5d9a9b25ad549c82e60a2d6f79f7ce"
  public static let nativeType = "easy_handeye_msgs/SelectTargetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `target_poses`: Ros1Easy_handeye_msgsTargetPoseList =
    Ros1Easy_handeye_msgsTargetPoseList()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try self.`target_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsSelectTargetPoseResponse
  {
    var v = Ros1Easy_handeye_msgsSelectTargetPoseResponse()
    v.`success` = try r.boolean()
    v.`target_poses` = try Ros1Easy_handeye_msgsTargetPoseList.read(from: &r)
    return v
  }
}
public struct Ros1Easy_handeye_msgsSetAlgorithmRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_b1a591e215ef089e0ac0e8504c06f0a35d4dcfb4f257553a7d9af22526a3312a"
  public static let nativeType = "easy_handeye_msgs/SetAlgorithmRequest"
  public static let nativeIdentity: String? = nil
  public var `new_algorithm`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`new_algorithm`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsSetAlgorithmRequest
  {
    var v = Ros1Easy_handeye_msgsSetAlgorithmRequest()
    v.`new_algorithm` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Easy_handeye_msgsSetAlgorithmResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_13b67482d24c9b1105e896a2a64c9d83418e15ecb690e72810725d3eb82003bc"
  public static let nativeType = "easy_handeye_msgs/SetAlgorithmResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsSetAlgorithmResponse
  {
    var v = Ros1Easy_handeye_msgsSetAlgorithmResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Easy_handeye_msgsTakeSampleRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_da50bca8888696f3b4df1d1a0ce41aa91ea6bdb60ec0f509ff1e8012464b6a56"
  public static let nativeType = "easy_handeye_msgs/TakeSampleRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Easy_handeye_msgsTakeSampleRequest
  {
    var v = Ros1Easy_handeye_msgsTakeSampleRequest()
    return v
  }
}
public struct Ros1Easy_handeye_msgsTakeSampleResponse: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_ed83ae7869d2981c366f6b6145b51265b99d8e1d75a82d5089f564b29c1699d8"
  public static let nativeType = "easy_handeye_msgs/TakeSampleResponse"
  public static let nativeIdentity: String? = nil
  public var `samples`: Ros1Easy_handeye_msgsSampleList = Ros1Easy_handeye_msgsSampleList()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`samples`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Easy_handeye_msgsTakeSampleResponse
  {
    var v = Ros1Easy_handeye_msgsTakeSampleResponse()
    v.`samples` = try Ros1Easy_handeye_msgsSampleList.read(from: &r)
    return v
  }
}
public struct Ros1Geographic_msgsGeoPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_ec50d91b012128fee7d4f57b375b8f558e246779cd434b9fe50d45e86d42e07b"
  public static let nativeType = "geographic_msgs/GeoPoint"
  public static let nativeIdentity: String? = nil
  public var `latitude`: Double = 0
  public var `longitude`: Double = 0
  public var `altitude`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`latitude`)
    try w.float64(self.`longitude`)
    try w.float64(self.`altitude`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geographic_msgsGeoPoint {
    var v = Ros1Geographic_msgsGeoPoint()
    v.`latitude` = try r.float64()
    v.`longitude` = try r.float64()
    v.`altitude` = try r.float64()
    return v
  }
}
public struct Ros1Geographic_msgsGeoPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_ebeb1378d616de152f891e28a7ff2308e6d755a6cf9f5d30666375fd6a649789"
  public static let nativeType = "geographic_msgs/GeoPose"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros1Geographic_msgsGeoPoint = Ros1Geographic_msgsGeoPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geographic_msgsGeoPose {
    var v = Ros1Geographic_msgsGeoPose()
    v.`position` = try Ros1Geographic_msgsGeoPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsPointStamped: Canonical {
  public static let maximumWireBytes = 296
  public static let codecIdentity =
    "UWVMROS1_af031472d543ea47133f33fe6831cabff92403fe95e6a8c16822d00fa3533c64"
  public static let nativeType = "geometry_msgs/PointStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `point`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`point`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPointStamped {
    var v = Ros1Geometry_msgsPointStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`point` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsPoseWithCovarianceStamped: Canonical {
  public static let maximumWireBytes = 616
  public static let codecIdentity =
    "UWVMROS1_06a1c60d720ab18417e5a166c6af54e076b2afb2020b447e65d2e47312bd66b4"
  public static let nativeType = "geometry_msgs/PoseWithCovarianceStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `pose`: Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Geometry_msgsPoseWithCovarianceStamped
  {
    var v = Ros1Geometry_msgsPoseWithCovarianceStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPoseWithCovariance.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
  public static let nativeType = "geometry_msgs/Twist"
  public static let nativeIdentity: String? = nil
  public var `linear`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `angular`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTwist {
    var v = Ros1Geometry_msgsTwist()
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1Grid_map_msgsGetGridMapRequest: Canonical {
  public static let maximumWireBytes = 4456
  public static let codecIdentity =
    "UWVMROS1_6a6ca67b0c3336808432126c2d35434f441f72cfc58cbd72273c9f6641d5ac36"
  public static let nativeType = "grid_map_msgs/GetGridMapRequest"
  public static let nativeIdentity: String? = nil
  public var `frame_id`: String = ""
  public var `position_x`: Double = 0
  public var `position_y`: Double = 0
  public var `length_x`: Double = 0
  public var `length_y`: Double = 0
  public var `layers`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`frame_id`, bound: 256)
    try w.float64(self.`position_x`)
    try w.float64(self.`position_y`)
    try w.float64(self.`length_x`)
    try w.float64(self.`length_y`)
    guard self.`layers`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`layers`.count))
    for e in self.`layers` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsGetGridMapRequest {
    var v = Ros1Grid_map_msgsGetGridMapRequest()
    v.`frame_id` = try r.string(bound: 256)
    v.`position_x` = try r.float64()
    v.`position_y` = try r.float64()
    v.`length_x` = try r.float64()
    v.`length_y` = try r.float64()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`layers` = []
    v.`layers`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`layers`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Grid_map_msgsGridMapInfo: Canonical {
  public static let maximumWireBytes = 352
  public static let codecIdentity =
    "UWVMROS1_627e4d580bed755f37e9d10c88a0e199ce45070e06a37870ee4ec26d33529707"
  public static let nativeType = "grid_map_msgs/GridMapInfo"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `resolution`: Double = 0
  public var `length_x`: Double = 0
  public var `length_y`: Double = 0
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float64(self.`resolution`)
    try w.float64(self.`length_x`)
    try w.float64(self.`length_y`)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsGridMapInfo {
    var v = Ros1Grid_map_msgsGridMapInfo()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`resolution` = try r.float64()
    v.`length_x` = try r.float64()
    v.`length_y` = try r.float64()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Std_msgsMultiArrayDimension: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444"
  public static let nativeType = "std_msgs/MultiArrayDimension"
  public static let nativeIdentity: String? = nil
  public var `label`: String = ""
  public var `size`: UInt32 = 0
  public var `stride`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`label`, bound: 64)
    try w.integer(self.`size`)
    try w.integer(self.`stride`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsMultiArrayDimension {
    var v = Ros1Std_msgsMultiArrayDimension()
    v.`label` = try r.string(bound: 64)
    v.`size` = try r.integer(UInt32.self)
    v.`stride` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Std_msgsMultiArrayLayout: Canonical {
  public static let maximumWireBytes = 236
  public static let codecIdentity =
    "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e"
  public static let nativeType = "std_msgs/MultiArrayLayout"
  public static let nativeIdentity: String? = nil
  public var `dim`: [Ros1Std_msgsMultiArrayDimension] = []
  public var `data_offset`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`dim`.count <= 3 else { throw RosError(22) }
    try w.integer(UInt32(self.`dim`.count))
    for e in self.`dim` {
      try e.write(to: &w)
    }
    try w.integer(self.`data_offset`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsMultiArrayLayout {
    var v = Ros1Std_msgsMultiArrayLayout()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 3 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`dim` = []
    v.`dim`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`dim`.append(try Ros1Std_msgsMultiArrayDimension.read(from: &r))
    }
    v.`data_offset` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Std_msgsFloat32MultiArray: Canonical {
  public static let maximumWireBytes = 752
  public static let codecIdentity =
    "UWVMROS1_efe70dd93d2d9760e318849238c230d1d52af194ed792d632a2bd8f1c0abd615"
  public static let nativeType = "std_msgs/Float32MultiArray"
  public static let nativeIdentity: String? = nil
  public var `layout`: Ros1Std_msgsMultiArrayLayout = Ros1Std_msgsMultiArrayLayout()
  public var `data`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`layout`.write(to: &w)
    guard self.`data`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsFloat32MultiArray {
    var v = Ros1Std_msgsFloat32MultiArray()
    v.`layout` = try Ros1Std_msgsMultiArrayLayout.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 128 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Grid_map_msgsGridMap: Canonical {
  public static let maximumWireBytes = 11696
  public static let codecIdentity =
    "UWVMROS1_167b329af64d534462a99d146a62b749270df1859e9aa93124653d431194289d"
  public static let nativeType = "grid_map_msgs/GridMap"
  public static let nativeIdentity: String? = nil
  public var `info`: Ros1Grid_map_msgsGridMapInfo = Ros1Grid_map_msgsGridMapInfo()
  public var `layers`: [String] = []
  public var `basic_layers`: [String] = []
  public var `data`: [Ros1Std_msgsFloat32MultiArray] = []
  public var `outer_start_index`: UInt16 = 0
  public var `inner_start_index`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`info`.write(to: &w)
    guard self.`layers`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`layers`.count))
    for e in self.`layers` {
      try w.string(e, bound: 256)
    }
    guard self.`basic_layers`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`basic_layers`.count))
    for e in self.`basic_layers` {
      try w.string(e, bound: 256)
    }
    guard self.`data`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
    try w.integer(self.`outer_start_index`)
    try w.integer(self.`inner_start_index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsGridMap {
    var v = Ros1Grid_map_msgsGridMap()
    v.`info` = try Ros1Grid_map_msgsGridMapInfo.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`layers` = []
    v.`layers`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`layers`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`basic_layers` = []
    v.`basic_layers`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`basic_layers`.append(try r.string(bound: 256))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`data` = []
    v.`data`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`data`.append(try Ros1Std_msgsFloat32MultiArray.read(from: &r))
    }
    v.`outer_start_index` = try r.integer(UInt16.self)
    v.`inner_start_index` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Grid_map_msgsGetGridMapResponse: Canonical {
  public static let maximumWireBytes = 11696
  public static let codecIdentity =
    "UWVMROS1_e403330b5d2e338510fba789f8ea7702fccad33bc683825b1d0847397f6c5008"
  public static let nativeType = "grid_map_msgs/GetGridMapResponse"
  public static let nativeIdentity: String? = nil
  public var `map`: Ros1Grid_map_msgsGridMap = Ros1Grid_map_msgsGridMap()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`map`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsGetGridMapResponse {
    var v = Ros1Grid_map_msgsGetGridMapResponse()
    v.`map` = try Ros1Grid_map_msgsGridMap.read(from: &r)
    return v
  }
}
public struct Ros1Grid_map_msgsGetGridMapInfoRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7afb29ab4a3f53004d18ff0b392894163d9957e135559a4305534e3f5b3b0ac2"
  public static let nativeType = "grid_map_msgs/GetGridMapInfoRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsGetGridMapInfoRequest
  {
    var v = Ros1Grid_map_msgsGetGridMapInfoRequest()
    return v
  }
}
public struct Ros1Grid_map_msgsGetGridMapInfoResponse: Canonical {
  public static let maximumWireBytes = 352
  public static let codecIdentity =
    "UWVMROS1_c0222f0160cc17d21a49b2bf9b5d003b683c36a4b7a8cc9b72d7d4c3e776b65e"
  public static let nativeType = "grid_map_msgs/GetGridMapInfoResponse"
  public static let nativeIdentity: String? = nil
  public var `info`: Ros1Grid_map_msgsGridMapInfo = Ros1Grid_map_msgsGridMapInfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Grid_map_msgsGetGridMapInfoResponse
  {
    var v = Ros1Grid_map_msgsGetGridMapInfoResponse()
    v.`info` = try Ros1Grid_map_msgsGridMapInfo.read(from: &r)
    return v
  }
}
public struct Ros1Grid_map_msgsProcessFileRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_cce0ea934d85569bac32220e0eee614d3b97ea8e1017b2afa4bbef87f8ead341"
  public static let nativeType = "grid_map_msgs/ProcessFileRequest"
  public static let nativeIdentity: String? = nil
  public var `file_path`: String = ""
  public var `topic_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file_path`, bound: 256)
    try w.string(self.`topic_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsProcessFileRequest {
    var v = Ros1Grid_map_msgsProcessFileRequest()
    v.`file_path` = try r.string(bound: 256)
    v.`topic_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Grid_map_msgsProcessFileResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2529f5ec87079d451a084b9e95f77692729735a9f59d95a2fcc2aec4bec2f5e4"
  public static let nativeType = "grid_map_msgs/ProcessFileResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsProcessFileResponse {
    var v = Ros1Grid_map_msgsProcessFileResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Grid_map_msgsSetGridMapRequest: Canonical {
  public static let maximumWireBytes = 11696
  public static let codecIdentity =
    "UWVMROS1_f48dc789c03ace0841b7dc092a21f0b89cb2eaf73e2a4b1e396b071c7470af49"
  public static let nativeType = "grid_map_msgs/SetGridMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map`: Ros1Grid_map_msgsGridMap = Ros1Grid_map_msgsGridMap()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`map`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsSetGridMapRequest {
    var v = Ros1Grid_map_msgsSetGridMapRequest()
    v.`map` = try Ros1Grid_map_msgsGridMap.read(from: &r)
    return v
  }
}
public struct Ros1Grid_map_msgsSetGridMapResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7fa15943c57206e71fb112bd714245e6f92938232cf399f4b368ba22dc336e89"
  public static let nativeType = "grid_map_msgs/SetGridMapResponse"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Grid_map_msgsSetGridMapResponse {
    var v = Ros1Grid_map_msgsSetGridMapResponse()
    return v
  }
}
public struct Ros1H12pro_controller_nodeECJointMotordata: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_38d70c1b0afa7384e478e0fb65b5c55915218b8be4904a0861c4df3b6d5269af"
  public static let nativeType = "h12pro_controller_node/ECJointMotordata"
  public static let nativeIdentity: String? = nil
  public var `l_pos_pitch`: Int32 = 0
  public var `l_pos_yaw`: Int32 = 0
  public var `l_pos_end`: Int32 = 0
  public var `r_pos_pitch`: Int32 = 0
  public var `r_pos_yaw`: Int32 = 0
  public var `r_pos_end`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`l_pos_pitch`)
    try w.integer(self.`l_pos_yaw`)
    try w.integer(self.`l_pos_end`)
    try w.integer(self.`r_pos_pitch`)
    try w.integer(self.`r_pos_yaw`)
    try w.integer(self.`r_pos_end`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeECJointMotordata
  {
    var v = Ros1H12pro_controller_nodeECJointMotordata()
    v.`l_pos_pitch` = try r.integer(Int32.self)
    v.`l_pos_yaw` = try r.integer(Int32.self)
    v.`l_pos_end` = try r.integer(Int32.self)
    v.`r_pos_pitch` = try r.integer(Int32.self)
    v.`r_pos_yaw` = try r.integer(Int32.self)
    v.`r_pos_end` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeExecuteArmActionRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f056f42108d3d0648731ef1a107350b875c51411a94e1f6f1d6f8abeaad89127"
  public static let nativeType = "h12pro_controller_node/ExecuteArmActionRequest"
  public static let nativeIdentity: String? = nil
  public var `action_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`action_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeExecuteArmActionRequest
  {
    var v = Ros1H12pro_controller_nodeExecuteArmActionRequest()
    v.`action_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1H12pro_controller_nodeExecuteArmActionResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_cf99103830460daeb7bb958251cc3bec1918b83e8e1e2a47dea0303f413a9977"
  public static let nativeType = "h12pro_controller_node/ExecuteArmActionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeExecuteArmActionResponse
  {
    var v = Ros1H12pro_controller_nodeExecuteArmActionResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1H12pro_controller_nodeRobotActionState: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5f4ddca56a2ea070c4631f83b37a6a45772fea9612e3ed9341dc062639b70a7c"
  public static let nativeType = "h12pro_controller_node/RobotActionState"
  public static let nativeIdentity: String? = nil
  public var `state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeRobotActionState
  {
    var v = Ros1H12pro_controller_nodeRobotActionState()
    v.`state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeUpdateH12CustomizeConfig: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7946916c322fac4fccf83ab6833512a225f5b15a61e6b2958be64f0e40ecb696"
  public static let nativeType = "h12pro_controller_node/UpdateH12CustomizeConfig"
  public static let nativeIdentity: String? = nil
  public var `update_msg`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`update_msg`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeUpdateH12CustomizeConfig
  {
    var v = Ros1H12pro_controller_nodeUpdateH12CustomizeConfig()
    v.`update_msg` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9b65e35bfdb3893f6d46b8a6b949eba0f5b2e8cb4d40867764413818ea8c110b"
  public static let nativeType = "h12pro_controller_node/changeAMBACCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest
  {
    var v = Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest()
    v.`control_mode` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_35234b0139456ff2ca4dbabbe8339ef5a281571fb8836827a1d370bb2c74d187"
  public static let nativeType = "h12pro_controller_node/changeAMBACCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse
  {
    var v = Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeArmCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b06930c1767f5522fc78b4b57289373c0d472bdb03c515f6f6e216997cde3a20"
  public static let nativeType = "h12pro_controller_node/changeArmCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeArmCtrlModeRequest
  {
    var v = Ros1H12pro_controller_nodeChangeArmCtrlModeRequest()
    v.`control_mode` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeArmCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b0d76c7e9b9f80975d329b2f527fd498779611f977494483494b56ecc4f398b5"
  public static let nativeType = "h12pro_controller_node/changeArmCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeArmCtrlModeResponse
  {
    var v = Ros1H12pro_controller_nodeChangeArmCtrlModeResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d60045478a17e0a4fa13126456d2db9279248ef18fbb21781c162b528e4dc3a2"
  public static let nativeType = "h12pro_controller_node/changeHandArmPosesByConfigNameRequest"
  public static let nativeIdentity: String? = nil
  public var `config_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`config_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest
  {
    var v = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest()
    v.`config_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_719178893c33a800600c8aecdcde550424fbae3effc2921e77e878e112a74fdb"
  public static let nativeType = "h12pro_controller_node/changeHandArmPosesByConfigNameResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse
  {
    var v = Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeH12proRemoteControllerChannel: Canonical {
  public static let maximumWireBytes = 37
  public static let codecIdentity =
    "UWVMROS1_4accf8faf4cd4b4a0e71fbb9aa3a7d0590d3d1a85013001ffaabc036b9899652"
  public static let nativeType = "h12pro_controller_node/h12proRemoteControllerChannel"
  public static let nativeIdentity: String? = nil
  public var `channels`: [UInt16] = []
  public var `sbus_state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`channels`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`channels`.count))
    for e in self.`channels` {
      try w.integer(e)
    }
    try w.integer(self.`sbus_state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeH12proRemoteControllerChannel
  {
    var v = Ros1H12pro_controller_nodeH12proRemoteControllerChannel()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`channels` = []
    v.`channels`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`channels`.append(try r.integer(UInt16.self))
    }
    v.`sbus_state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodePlaymusicRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_215228523fbfc3026aa3f12153492f05c08a6b024a0582e16293e87eaa1db6e1"
  public static let nativeType = "h12pro_controller_node/playmusicRequest"
  public static let nativeIdentity: String? = nil
  public var `music_number`: String = ""
  public var `volume`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`music_number`, bound: 256)
    try w.integer(self.`volume`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodePlaymusicRequest
  {
    var v = Ros1H12pro_controller_nodePlaymusicRequest()
    v.`music_number` = try r.string(bound: 256)
    v.`volume` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodePlaymusicResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ad77815d74f9e37b5c3eb2f5ea672c884e1682328b1526b4fb3b7d7c6241e823"
  public static let nativeType = "h12pro_controller_node/playmusicResponse"
  public static let nativeIdentity: String? = nil
  public var `success_flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success_flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodePlaymusicResponse
  {
    var v = Ros1H12pro_controller_nodePlaymusicResponse()
    v.`success_flag` = try r.boolean()
    return v
  }
}
public struct Ros1H12pro_controller_nodeRobotPhase: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_1c0c1805fc76e776d119cda9a549c2d34b9f23f201583bb488217985a1949283"
  public static let nativeType = "h12pro_controller_node/robotPhase"
  public static let nativeIdentity: String? = nil
  public var `mainPhase`: UInt8 = 0
  public var `subPhase`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mainPhase`)
    try w.integer(self.`subPhase`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1H12pro_controller_nodeRobotPhase {
    var v = Ros1H12pro_controller_nodeRobotPhase()
    v.`mainPhase` = try r.integer(UInt8.self)
    v.`subPhase` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeRobotQVTau: Canonical {
  public static let maximumWireBytes = 1292
  public static let codecIdentity =
    "UWVMROS1_571ffeebcde739e9f557f701f5a021e743cdfbd7192894fb9d8a4ee5810e2fb7"
  public static let nativeType = "h12pro_controller_node/robotQVTau"
  public static let nativeIdentity: String? = nil
  public var `q`: [Double] = []
  public var `v`: [Double] = []
  public var `tau`: [Double] = []
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
    guard self.`tau`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau`.count))
    for e in self.`tau` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1H12pro_controller_nodeRobotQVTau {
    var v = Ros1H12pro_controller_nodeRobotQVTau()
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
    guard rawcount2 <= 128 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`tau` = []
    v.`tau`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`tau`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1H12pro_controller_nodeRobotTorsoState: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_14f926d6ebfbf5d88bc052c012e75c06be9db2cb0b90699cb1ab80c939ea565c"
  public static let nativeType = "h12pro_controller_node/robotTorsoState"
  public static let nativeIdentity: String? = nil
  public var `torsoR`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `torsoRd`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `torsoRdd`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `r`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `rd`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `rdd`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`torsoR`.write(to: &w)
    try self.`torsoRd`.write(to: &w)
    try self.`torsoRdd`.write(to: &w)
    try self.`r`.write(to: &w)
    try self.`rd`.write(to: &w)
    try self.`rdd`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeRobotTorsoState
  {
    var v = Ros1H12pro_controller_nodeRobotTorsoState()
    v.`torsoR` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`torsoRd` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`torsoRdd` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`r` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`rd` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`rdd` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvChangePhasesRequest: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_35f9c693f0b169fdfdcf11464d935135477a7cfe7e0039b86603b393ab9016e5"
  public static let nativeType = "h12pro_controller_node/srvChangePhasesRequest"
  public static let nativeIdentity: String? = nil
  public var `masterID`: UInt8 = 0
  public var `stateReq`: String = ""
  public var `subState`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`masterID`)
    try w.string(self.`stateReq`, bound: 256)
    try w.string(self.`subState`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvChangePhasesRequest
  {
    var v = Ros1H12pro_controller_nodeSrvChangePhasesRequest()
    v.`masterID` = try r.integer(UInt8.self)
    v.`stateReq` = try r.string(bound: 256)
    v.`subState` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvChangePhasesResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_ff0bc644bfbfeccaf52a31d36ee291170456d71037d93e54527fb875ced7d4e4"
  public static let nativeType = "h12pro_controller_node/srvChangePhasesResponse"
  public static let nativeIdentity: String? = nil
  public var `stateRes`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stateRes`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvChangePhasesResponse
  {
    var v = Ros1H12pro_controller_nodeSrvChangePhasesResponse()
    v.`stateRes` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvClearPositionCMDRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_662897522ba05be000762eed51f5b98b5352cf91c663e0289f09f93c2c33a278"
  public static let nativeType = "h12pro_controller_node/srvClearPositionCMDRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvClearPositionCMDRequest
  {
    var v = Ros1H12pro_controller_nodeSrvClearPositionCMDRequest()
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvClearPositionCMDResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e604650fe3e28eb6c83dd6866024af5fce7fcf33e4eff36bcda779a158d2fc61"
  public static let nativeType = "h12pro_controller_node/srvClearPositionCMDResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvClearPositionCMDResponse
  {
    var v = Ros1H12pro_controller_nodeSrvClearPositionCMDResponse()
    v.`result` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvchangeCtlModeRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_b6d8a72ebcb1f8f961e0fe7e7cc74eecf51e4cbf951758bbb3c7412ca1cac09d"
  public static let nativeType = "h12pro_controller_node/srvchangeCtlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `masterID`: UInt8 = 0
  public var `control_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`masterID`)
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvchangeCtlModeRequest
  {
    var v = Ros1H12pro_controller_nodeSrvchangeCtlModeRequest()
    v.`masterID` = try r.integer(UInt8.self)
    v.`control_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeSrvchangeCtlModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e4d95ba086ca12457a43b719f0bb7dc216d34e1dbc9e050a1acac000cd12a463"
  public static let nativeType = "h12pro_controller_node/srvchangeCtlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1H12pro_controller_nodeSrvchangeCtlModeResponse
  {
    var v = Ros1H12pro_controller_nodeSrvchangeCtlModeResponse()
    v.`control_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1H12pro_controller_nodeWalkCommand: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_15c67ec2af4d615aa5496c894f3e0372a813f9c2b9f1ae4acb7282cccef14ac6"
  public static let nativeType = "h12pro_controller_node/walkCommand"
  public static let nativeIdentity: String? = nil
  public var `mode`: UInt8 = 0
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    guard self.`values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1H12pro_controller_nodeWalkCommand
  {
    var v = Ros1H12pro_controller_nodeWalkCommand()
    v.`mode` = try r.integer(UInt8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`values` = []
    v.`values`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_19346185962b42ce7671c490a92650ff618576d2b222d36a717cfe707ce51044"
  public static let nativeType = "handcontrollerdemorosnode/armPoseWithTimeStamp"
  public static let nativeIdentity: String? = nil
  public var `offset`: Int32 = 0
  public var `left_hand_pose`: [Double] = []
  public var `right_hand_pose`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`offset`)
    guard self.`left_hand_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_hand_pose`.count))
    for e in self.`left_hand_pose` {
      try w.float64(e)
    }
    guard self.`right_hand_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_hand_pose`.count))
    for e in self.`right_hand_pose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp
  {
    var v = Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp()
    v.`offset` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_hand_pose` = []
    v.`left_hand_pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_hand_pose`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_hand_pose` = []
    v.`right_hand_pose`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_hand_pose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8e505adec0a30e0bdc55052a97793a17b0635caf99bf56ae1170a2b733b054c8"
  public static let nativeType = "handcontrollerdemorosnode/changeHandTrackingModeRequest"
  public static let nativeIdentity: String? = nil
  public var `enable`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest
  {
    var v = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest()
    v.`enable` = try r.boolean()
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_61fc1f01f2f69f8f8618f3ddf3cf1b1ba5b624425b31227f9e966599c5b6bc80"
  public static let nativeType = "handcontrollerdemorosnode/changeHandTrackingModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse
  {
    var v = Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeControlEndHandRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_1abb47f2413f9b70d61d00cf6b33e64f5892be6ba487bf40b271c7975dcb04f9"
  public static let nativeType = "handcontrollerdemorosnode/controlEndHandRequest"
  public static let nativeIdentity: String? = nil
  public var `left_hand_position`: [UInt8] = []
  public var `right_hand_position`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
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
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeControlEndHandRequest
  {
    var v = Ros1HandcontrollerdemorosnodeControlEndHandRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 256 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`left_hand_position` = []
    v.`left_hand_position`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`left_hand_position`.append(try r.integer(UInt8.self))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 256 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`right_hand_position` = []
    v.`right_hand_position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`right_hand_position`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeControlEndHandResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_55d259517e6fd2fca6f659b50d3a2a29f64ec8c85ecc07ddcbfdeae50b0c125e"
  public static let nativeType = "handcontrollerdemorosnode/controlEndHandResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeControlEndHandResponse
  {
    var v = Ros1HandcontrollerdemorosnodeControlEndHandResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeHandRotationEular: Canonical {
  public static let maximumWireBytes = 196
  public static let codecIdentity =
    "UWVMROS1_35528ea7896dd9b93e6bb7c4a1fc61547ed0311e579b4367bf656afcd9570153"
  public static let nativeType = "handcontrollerdemorosnode/handRotationEular"
  public static let nativeIdentity: String? = nil
  public var `eulerAngles`: [Ros1Geometry_msgsVector3] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`eulerAngles`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`eulerAngles`.count))
    for e in self.`eulerAngles` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeHandRotationEular
  {
    var v = Ros1HandcontrollerdemorosnodeHandRotationEular()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`eulerAngles` = []
    v.`eulerAngles`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`eulerAngles`.append(try Ros1Geometry_msgsVector3.read(from: &r))
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeRobotArmPose: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a1c4224279c2a6bdd2bdff21ac64ecbc6fc9f044b604d7147337630305af01d1"
  public static let nativeType = "handcontrollerdemorosnode/robotArmPose"
  public static let nativeIdentity: String? = nil
  public var `left_arm_pose`: [Double] = []
  public var `right_arm_pose`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`left_arm_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_arm_pose`.count))
    for e in self.`left_arm_pose` {
      try w.float64(e)
    }
    guard self.`right_arm_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_arm_pose`.count))
    for e in self.`right_arm_pose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeRobotArmPose
  {
    var v = Ros1HandcontrollerdemorosnodeRobotArmPose()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`left_arm_pose` = []
    v.`left_arm_pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`left_arm_pose`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`right_arm_pose` = []
    v.`right_arm_pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`right_arm_pose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeRobotHandPosition: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_7a9af4cd610ae49ec9742e9e94a316c4de09f2ee6da583b20c0bb45315079f32"
  public static let nativeType = "handcontrollerdemorosnode/robotHandPosition"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeRobotHandPosition
  {
    var v = Ros1HandcontrollerdemorosnodeRobotHandPosition()
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
public struct Ros1HandcontrollerdemorosnodeSrvArmIKRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_49d66cccce65f6305f0ab4393d8eb581cb4b8fac9789394dad7d5c4c57b549f0"
  public static let nativeType = "handcontrollerdemorosnode/srvArmIKRequest"
  public static let nativeIdentity: String? = nil
  public var `left_arm_pose`: [Double] = []
  public var `right_arm_pose`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`left_arm_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_arm_pose`.count))
    for e in self.`left_arm_pose` {
      try w.float64(e)
    }
    guard self.`right_arm_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_arm_pose`.count))
    for e in self.`right_arm_pose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeSrvArmIKRequest
  {
    var v = Ros1HandcontrollerdemorosnodeSrvArmIKRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`left_arm_pose` = []
    v.`left_arm_pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`left_arm_pose`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`right_arm_pose` = []
    v.`right_arm_pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`right_arm_pose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Sensor_msgsJointState: Canonical {
  public static let maximumWireBytes = 12064
  public static let codecIdentity =
    "UWVMROS1_682440f51ada53238ed5f92cc6162cf5160282d8edad387272f279923e29e456"
  public static let nativeType = "sensor_msgs/JointState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `name`: [String] = []
  public var `position`: [Double] = []
  public var `velocity`: [Double] = []
  public var `effort`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`name`.count != 0 && self.`position`.count != 0
      && self.`name`.count != self.`position`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`velocity`.count != 0
      && self.`name`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`effort`.count != 0
      && self.`name`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`velocity`.count != 0
      && self.`position`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`effort`.count != 0
      && self.`position`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`velocity`.count != 0 && self.`effort`.count != 0
      && self.`velocity`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    try self.`header`.write(to: &w)
    guard self.`name`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 64)
    }
    guard self.`position`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsJointState {
    var v = Ros1Sensor_msgsJointState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 128 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 64))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 128 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 128 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 128 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`effort` = []
    v.`effort`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`effort`.append(try r.float64())
    }
    if v.`name`.count != 0 && v.`position`.count != 0 && v.`name`.count != v.`position`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`velocity`.count != 0 && v.`name`.count != v.`velocity`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`effort`.count != 0 && v.`name`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`velocity`.count != 0
      && v.`position`.count != v.`velocity`.count
    {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`effort`.count != 0 && v.`position`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`velocity`.count != 0 && v.`effort`.count != 0 && v.`velocity`.count != v.`effort`.count {
      throw RosError(22)
    }
    return v
  }
}
public struct Ros1HandcontrollerdemorosnodeSrvArmIKResponse: Canonical {
  public static let maximumWireBytes = 12064
  public static let codecIdentity =
    "UWVMROS1_9dbdfffef67508ebbad4da825a18d2f3fdb551caa78ab225dc4b6422a826ffdc"
  public static let nativeType = "handcontrollerdemorosnode/srvArmIKResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_state`: Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`joint_state`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1HandcontrollerdemorosnodeSrvArmIKResponse
  {
    var v = Ros1HandcontrollerdemorosnodeSrvArmIKResponse()
    v.`joint_state` = try Ros1Sensor_msgsJointState.read(from: &r)
    return v
  }
}
public struct Ros1Hardware_nodeHorizontalMotionByStep: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f688b22ab716b205eed4c0d5ae91d2cd352b92ebf97d1d2f732597ee12955ac2"
  public static let nativeType = "hardware_node/horizontalMotionByStep"
  public static let nativeIdentity: String? = nil
  public var `step`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`step`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Hardware_nodeHorizontalMotionByStep
  {
    var v = Ros1Hardware_nodeHorizontalMotionByStep()
    v.`step` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Hardware_nodeRobotHeadMotionData: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_9220e0cb3b81c2ed7e9b4f15d1ddec9ac68d24d2fa0878e19532bb0a322ec305"
  public static let nativeType = "hardware_node/robotHeadMotionData"
  public static let nativeIdentity: String? = nil
  public var `target_position`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target_position`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`target_position`.count))
    for e in self.`target_position` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Hardware_nodeRobotHeadMotionData {
    var v = Ros1Hardware_nodeRobotHeadMotionData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`target_position` = []
    v.`target_position`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target_position`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Humanoid_arm_controlArmControlRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_2b071c6cdc4e566950290d7bae36096c3ff913256fd6a8dd62270f58a64a0594"
  public static let nativeType = "humanoid_arm_control/armControlRequest"
  public static let nativeIdentity: String? = nil
  public var `req`: Int64 = 0
  public var `tagid`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`req`)
    try w.integer(self.`tagid`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_arm_controlArmControlRequest
  {
    var v = Ros1Humanoid_arm_controlArmControlRequest()
    v.`req` = try r.integer(Int64.self)
    v.`tagid` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Humanoid_arm_controlArmControlResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_df0a2faa8ca46981dd36cc59a7950b983d9d18b1fc1d90cffb9bc4ed1bbd3f43"
  public static let nativeType = "humanoid_arm_control/armControlResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Int64 = 0
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`success`)
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_arm_controlArmControlResponse
  {
    var v = Ros1Humanoid_arm_controlArmControlResponse()
    v.`success` = try r.integer(Int64.self)
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros1Humanoid_arm_controlHandUpAndGrabRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_bf59313b0aadf2a1875dded92e3e466d4cd3e54e847f1581434cd4a84e45e0a1"
  public static let nativeType = "humanoid_arm_control/handUpAndGrabRequest"
  public static let nativeIdentity: String? = nil
  public var `req`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`req`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_arm_controlHandUpAndGrabRequest
  {
    var v = Ros1Humanoid_arm_controlHandUpAndGrabRequest()
    v.`req` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Humanoid_arm_controlHandUpAndGrabResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_61db6a7ea57555b6faee91c2c8e8648761e25edd2291dce831dc69dae3bece77"
  public static let nativeType = "humanoid_arm_control/handUpAndGrabResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_arm_controlHandUpAndGrabResponse
  {
    var v = Ros1Humanoid_arm_controlHandUpAndGrabResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_21f8af35276c15f8c48b53ca002e04e7575a2917662c8cd2cc245c79c0d5349e"
  public static let nativeType = "humanoid_plan_arm_trajectory/ExecuteArmActionRequest"
  public static let nativeIdentity: String? = nil
  public var `action_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`action_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest
  {
    var v = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest()
    v.`action_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_9242c66a70abf0d215dbcc5b4846770a8fc2d61eb88bf03b7436b226b7f6f3ea"
  public static let nativeType = "humanoid_plan_arm_trajectory/ExecuteArmActionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse
  {
    var v = Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryRobotActionState: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e2394a0c9ed8f6435f996443c7a6adf416b3a7660e077bbac4ba1ad34f8f53fc"
  public static let nativeType = "humanoid_plan_arm_trajectory/RobotActionState"
  public static let nativeIdentity: String? = nil
  public var `state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryRobotActionState
  {
    var v = Ros1Humanoid_plan_arm_trajectoryRobotActionState()
    v.`state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_689f2cd6ba7d0aa78e92bb857e61280f5d763a477129a2448819529af1d695a7"
  public static let nativeType = "humanoid_plan_arm_trajectory/bezierCurveCubicPoint"
  public static let nativeIdentity: String? = nil
  public var `end_point`: [Double] = []
  public var `left_control_point`: [Double] = []
  public var `right_control_point`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`end_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`end_point`.count))
    for e in self.`end_point` {
      try w.float64(e)
    }
    guard self.`left_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_control_point`.count))
    for e in self.`left_control_point` {
      try w.float64(e)
    }
    guard self.`right_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_control_point`.count))
    for e in self.`right_control_point` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint
  {
    var v = Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`end_point` = []
    v.`end_point`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`end_point`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_control_point` = []
    v.`left_control_point`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_control_point`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_control_point` = []
    v.`right_control_point`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_control_point`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory: Canonical {
  public static let maximumWireBytes = 3172
  public static let codecIdentity =
    "UWVMROS1_5e3d4297a2557764d89155dc2231684dfedf760e75bf73b16f8e118666b5c929"
  public static let nativeType = "humanoid_plan_arm_trajectory/jointBezierTrajectory"
  public static let nativeIdentity: String? = nil
  public var `bezier_curve_points`: [Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`bezier_curve_points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`bezier_curve_points`.count))
    for e in self.`bezier_curve_points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory
  {
    var v = Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`bezier_curve_points` = []
    v.`bezier_curve_points`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`bezier_curve_points`.append(
        try Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryPlanArmState: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_b9fe42380559dcc29f8626d7664a6e66739e3487df24f79fdacedbcfe8009a29"
  public static let nativeType = "humanoid_plan_arm_trajectory/planArmState"
  public static let nativeIdentity: String? = nil
  public var `progress`: Int32 = 0
  public var `is_finished`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`progress`)
    try w.boolean(self.`is_finished`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryPlanArmState
  {
    var v = Ros1Humanoid_plan_arm_trajectoryPlanArmState()
    v.`progress` = try r.integer(Int32.self)
    v.`is_finished` = try r.boolean()
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest: Canonical {
  public static let maximumWireBytes = 29560
  public static let codecIdentity =
    "UWVMROS1_7ed93fc26e36fe908fd03bb2baeddb8ab51a2e0658e5bc9da4f026d0f825e7a2"
  public static let nativeType = "humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest"
  public static let nativeIdentity: String? = nil
  public var `multi_joint_bezier_trajectory`:
    [Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory] = []
  public var `start_frame_time`: Double = 0
  public var `end_frame_time`: Double = 0
  public var `joint_names`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`multi_joint_bezier_trajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_joint_bezier_trajectory`.count))
    for e in self.`multi_joint_bezier_trajectory` {
      try e.write(to: &w)
    }
    try w.float64(self.`start_frame_time`)
    try w.float64(self.`end_frame_time`)
    guard self.`joint_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest
  {
    var v = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`multi_joint_bezier_trajectory` = []
    v.`multi_joint_bezier_trajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`multi_joint_bezier_trajectory`.append(
        try Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.read(from: &r))
    }
    v.`start_frame_time` = try r.float64()
    v.`end_frame_time` = try r.float64()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4a82604b8f91b5e35f3c7f8e875b08607f5625d8d6f87db6c95cc3eb0b481bb4"
  public static let nativeType = "humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse
  {
    var v = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Duration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
  public static let nativeType = "duration"
  public static let nativeIdentity: String? = nil
  public var `sec`: Int32 = 0
  public var `nsec`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nsec` < 0 { throw RosError(22) }
    if self.`nsec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nsec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Duration {
    var v = Ros1Duration()
    v.`sec` = try r.integer(Int32.self)
    v.`nsec` = try r.integer(Int32.self)
    if v.`nsec` < 0 { throw RosError(22) }
    if v.`nsec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
public struct Ros1Trajectory_msgsJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
  public static let nativeType = "trajectory_msgs/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  public var `positions`: [Double] = []
  public var `velocities`: [Double] = []
  public var `accelerations`: [Double] = []
  public var `effort`: [Double] = []
  public var `time_from_start`: Ros1Duration = Ros1Duration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
    try self.`time_from_start`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Trajectory_msgsJointTrajectoryPoint
  {
    var v = Ros1Trajectory_msgsJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    v.`time_from_start` = try Ros1Duration.read(from: &r)
    return v
  }
}
public struct Ros1Trajectory_msgsJointTrajectory: Canonical {
  public static let maximumWireBytes = 8728
  public static let codecIdentity =
    "UWVMROS1_be6c35515187dbb5d0ba11af18a8fab6254371d409f69653707821aee118f938"
  public static let nativeType = "trajectory_msgs/JointTrajectory"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `joint_names`: [String] = []
  public var `points`: [Ros1Trajectory_msgsJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Trajectory_msgsJointTrajectory {
    var v = Ros1Trajectory_msgsJointTrajectory()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros1Trajectory_msgsJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest: Canonical {
  public static let maximumWireBytes = 8728
  public static let codecIdentity =
    "UWVMROS1_4f0ce7fcda16917aa57144ad4b5b2d606fe244b25f900b4d20352433939c6138"
  public static let nativeType = "humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest"
  public static let nativeIdentity: String? = nil
  public var `joint_trajectory`: Ros1Trajectory_msgsJointTrajectory =
    Ros1Trajectory_msgsJointTrajectory()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`joint_trajectory`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest
  {
    var v = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest()
    v.`joint_trajectory` = try Ros1Trajectory_msgsJointTrajectory.read(from: &r)
    return v
  }
}
public struct Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_60ddec147657fa0acc0a4b731cf7a9c58ba5d5028853ccb5064370b3614b385e"
  public static let nativeType = "humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse
  {
    var v = Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kindr_msgsVectorAtPosition: Canonical {
  public static let maximumWireBytes = 841
  public static let codecIdentity =
    "UWVMROS1_bc1daa239350f73838cc3e2d3b173cd3356d856ed1f3d02c201a84b1ba8d10a1"
  public static let nativeType = "kindr_msgs/VectorAtPosition"
  public static let nativeIdentity: String? = nil
  public static let `TYPE_TYPELESS`: UInt8 = 0
  public static let `TYPE_JERK`: UInt8 = 6
  public static let `TYPE_ACCELERATION`: UInt8 = 7
  public static let `TYPE_VELOCITY`: UInt8 = 8
  public static let `TYPE_POSITION`: UInt8 = 9
  public static let `TYPE_FORCE`: UInt8 = 10
  public static let `TYPE_MOMEMTUM`: UInt8 = 11
  public static let `TYPE_ANGULAR_JERK`: UInt8 = 12
  public static let `TYPE_ANGULAR_ACCELERATION`: UInt8 = 13
  public static let `TYPE_ANGULAR_VELOCITY`: UInt8 = 14
  public static let `TYPE_TORQUE`: UInt8 = 16
  public static let `TYPE_ANGULAR_MOMEMTUM`: UInt8 = 17
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `type`: UInt8 = 0
  public var `name`: String = ""
  public var `vector`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `position_frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`type`)
    try w.string(self.`name`, bound: 256)
    try self.`vector`.write(to: &w)
    try self.`position`.write(to: &w)
    try w.string(self.`position_frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kindr_msgsVectorAtPosition {
    var v = Ros1Kindr_msgsVectorAtPosition()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`type` = try r.integer(UInt8.self)
    v.`name` = try r.string(bound: 256)
    v.`vector` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`position_frame_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_audio_playerAudio_statusRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f97d690c1ed905da0ca05ad9fd54d8eda09627af48fac8da4e9319cda2fc57ae"
  public static let nativeType = "kuavo_audio_player/audio_statusRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_audio_playerAudio_statusRequest
  {
    var v = Ros1Kuavo_audio_playerAudio_statusRequest()
    return v
  }
}
public struct Ros1Kuavo_audio_playerAudio_statusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0245390904197da671731dfc6249a5c1af2d8da7311f8be8efe55555d218fec6"
  public static let nativeType = "kuavo_audio_player/audio_statusResponse"
  public static let nativeIdentity: String? = nil
  public var `is_playing`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`is_playing`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_audio_playerAudio_statusResponse
  {
    var v = Ros1Kuavo_audio_playerAudio_statusResponse()
    v.`is_playing` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_audio_playerPlaymusicRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_43abc9929baa3910ffe2b1623208f3321e6c6ad641aabcff33f2b288d111c476"
  public static let nativeType = "kuavo_audio_player/playmusicRequest"
  public static let nativeIdentity: String? = nil
  public var `music_number`: String = ""
  public var `volume`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`music_number`, bound: 256)
    try w.integer(self.`volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_audio_playerPlaymusicRequest
  {
    var v = Ros1Kuavo_audio_playerPlaymusicRequest()
    v.`music_number` = try r.string(bound: 256)
    v.`volume` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Kuavo_audio_playerPlaymusicResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_191b11d8b6731ff4298e2462fe7b47bcacdb5d2c3562757c120c17b4430cbe75"
  public static let nativeType = "kuavo_audio_player/playmusicResponse"
  public static let nativeIdentity: String? = nil
  public var `success_flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success_flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_audio_playerPlaymusicResponse
  {
    var v = Ros1Kuavo_audio_playerPlaymusicResponse()
    v.`success_flag` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_mappingDeleteMapRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_aac10d7d962844a53bda46cc3a7b185343837a8a3e8a1abd7fdca88997947f31"
  public static let nativeType = "kuavo_mapping/DeleteMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingDeleteMapRequest {
    var v = Ros1Kuavo_mappingDeleteMapRequest()
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingDeleteMapResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_b075c750af76a0ec5cada415590db74050d3e62fd911030c8610f852c7ed121b"
  public static let nativeType = "kuavo_mapping/DeleteMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingDeleteMapResponse {
    var v = Ros1Kuavo_mappingDeleteMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingEditMapRequest: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_bbb68b6161b9728ae6c78319fb557f26bda80a94adad133098262dae57f9f736"
  public static let nativeType = "kuavo_mapping/EditMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public var `points`: [Double] = []
  public var `operation`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
    guard self.`points`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try w.float64(e)
    }
    try w.string(self.`operation`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingEditMapRequest {
    var v = Ros1Kuavo_mappingEditMapRequest()
    v.`map_name` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`points` = []
    v.`points`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`points`.append(try r.float64())
    }
    v.`operation` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingEditMapResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_8e4f58a3fbdc5e842cdf6daf431cf74f82fa00dae90791802e8f3d0f30bea0a8"
  public static let nativeType = "kuavo_mapping/EditMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `image_data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`image_data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingEditMapResponse {
    var v = Ros1Kuavo_mappingEditMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`image_data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingGetAllMapsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8ecf1a96694cc402875f7bb3bd965b13cb4e7a6eceb73b984261944d910ed9ad"
  public static let nativeType = "kuavo_mapping/GetAllMapsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingGetAllMapsRequest {
    var v = Ros1Kuavo_mappingGetAllMapsRequest()
    return v
  }
}
public struct Ros1Kuavo_mappingGetAllMapsResponse: Canonical {
  public static let maximumWireBytes = 4164
  public static let codecIdentity =
    "UWVMROS1_b5b330be5b9e5a0a0eded8925bcb69e8298b8249dec81b00fe0082afe65a4af1"
  public static let nativeType = "kuavo_mapping/GetAllMapsResponse"
  public static let nativeIdentity: String? = nil
  public var `maps`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`maps`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`maps`.count))
    for e in self.`maps` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingGetAllMapsResponse {
    var v = Ros1Kuavo_mappingGetAllMapsResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`maps` = []
    v.`maps`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`maps`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Kuavo_mappingGetCurrentMapRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c3b2df6d6d1e08619be06a878917aef313bc6a8d124ded561407af62213d0c11"
  public static let nativeType = "kuavo_mapping/GetCurrentMapRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingGetCurrentMapRequest
  {
    var v = Ros1Kuavo_mappingGetCurrentMapRequest()
    return v
  }
}
public struct Ros1Kuavo_mappingGetCurrentMapResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_4b939cd83cd2de1b5dd38047a81c7be3314a965f3e869a297aaab274f22288fc"
  public static let nativeType = "kuavo_mapping/GetCurrentMapResponse"
  public static let nativeIdentity: String? = nil
  public var `current_map`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`current_map`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingGetCurrentMapResponse
  {
    var v = Ros1Kuavo_mappingGetCurrentMapResponse()
    v.`current_map` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingInitialPoseWithTaskPointRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1117aa6a51d14d2ebd38bc414a18159dcfd549581a9f309010ff448257fcff8f"
  public static let nativeType = "kuavo_mapping/InitialPoseWithTaskPointRequest"
  public static let nativeIdentity: String? = nil
  public var `task_point_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_point_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingInitialPoseWithTaskPointRequest
  {
    var v = Ros1Kuavo_mappingInitialPoseWithTaskPointRequest()
    v.`task_point_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingInitialPoseWithTaskPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_fe171dea7d3aa761a05c5e9ca8c0300f151549e55fe2d61623fcc4b3537669bd"
  public static let nativeType = "kuavo_mapping/InitialPoseWithTaskPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingInitialPoseWithTaskPointResponse
  {
    var v = Ros1Kuavo_mappingInitialPoseWithTaskPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingLoadMapRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_39877b34482fa3369fec6fd95df396129b0317e00142df4d5a45c265be042720"
  public static let nativeType = "kuavo_mapping/LoadMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingLoadMapRequest {
    var v = Ros1Kuavo_mappingLoadMapRequest()
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingLoadMapResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_c5fd63cb0fd95e0b6d8bb091a4abf9c74ea40383379fb9a065cfa5c976d7d9e4"
  public static let nativeType = "kuavo_mapping/LoadMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingLoadMapResponse {
    var v = Ros1Kuavo_mappingLoadMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingNavigateToTaskPointRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_a2b5f37013e5a2f56a6dd870660ad38b59b966700bb54701012a7c600d990fee"
  public static let nativeType = "kuavo_mapping/NavigateToTaskPointRequest"
  public static let nativeIdentity: String? = nil
  public var `task_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingNavigateToTaskPointRequest
  {
    var v = Ros1Kuavo_mappingNavigateToTaskPointRequest()
    v.`task_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingNavigateToTaskPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_baf0625d4aabfb10ea065cb920d0f5ea2c8294a8ee0b33080d8d5a7891206dc2"
  public static let nativeType = "kuavo_mapping/NavigateToTaskPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingNavigateToTaskPointResponse
  {
    var v = Ros1Kuavo_mappingNavigateToTaskPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingRenameMapRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_45bbf580fa9ea0d45f1233405e5f3ce95f652a1ca6044b584ae918acf4f65eea"
  public static let nativeType = "kuavo_mapping/RenameMapRequest"
  public static let nativeIdentity: String? = nil
  public var `old_name`: String = ""
  public var `new_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`old_name`, bound: 256)
    try w.string(self.`new_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingRenameMapRequest {
    var v = Ros1Kuavo_mappingRenameMapRequest()
    v.`old_name` = try r.string(bound: 256)
    v.`new_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingRenameMapResponse: Canonical {
  public static let maximumWireBytes = 781
  public static let codecIdentity =
    "UWVMROS1_a65d793d296107dffcb6e0706fe6a0d2aa1b1f8888f127b82ef9be10d4e8616b"
  public static let nativeType = "kuavo_mapping/RenameMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `old_name`: String = ""
  public var `new_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`old_name`, bound: 256)
    try w.string(self.`new_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingRenameMapResponse {
    var v = Ros1Kuavo_mappingRenameMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`old_name` = try r.string(bound: 256)
    v.`new_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingSaveMapRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_c203eb94569cd32a2f0c480e1b13cc93198ff77576eb1a8fa7b7b8d778fb8828"
  public static let nativeType = "kuavo_mapping/SaveMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingSaveMapRequest {
    var v = Ros1Kuavo_mappingSaveMapRequest()
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingSaveMapResponse: Canonical {
  public static let maximumWireBytes = 1301
  public static let codecIdentity =
    "UWVMROS1_04e64d751397c0a18046b53f437b3567e6197f60f824debe47d9e8076f4e8db9"
  public static let nativeType = "kuavo_mapping/SaveMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `map_path`: String = ""
  public var `yaml_path`: String = ""
  public var `pgm_path`: String = ""
  public var `pcd_path`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`map_path`, bound: 256)
    try w.string(self.`yaml_path`, bound: 256)
    try w.string(self.`pgm_path`, bound: 256)
    try w.string(self.`pcd_path`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingSaveMapResponse {
    var v = Ros1Kuavo_mappingSaveMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`map_path` = try r.string(bound: 256)
    v.`yaml_path` = try r.string(bound: 256)
    v.`pgm_path` = try r.string(bound: 256)
    v.`pcd_path` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingSetInitialPoseRequest: Canonical {
  public static let maximumWireBytes = 616
  public static let codecIdentity =
    "UWVMROS1_832e206b0be5a30a52d1a6f1994a3826467f15913f891787c6c0f76e222b1566"
  public static let nativeType = "kuavo_mapping/SetInitialPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `initial_pose`: Ros1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`initial_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingSetInitialPoseRequest
  {
    var v = Ros1Kuavo_mappingSetInitialPoseRequest()
    v.`initial_pose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_mappingSetInitialPoseResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_8335ac18125fe274c1a76029db9b865a35557febf39a6e3733a4f7e5450b5c37"
  public static let nativeType = "kuavo_mapping/SetInitialPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingSetInitialPoseResponse
  {
    var v = Ros1Kuavo_mappingSetInitialPoseResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingStartMappingRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_874682fbb586b183e8c4d84f3be2feb743d57d3a2e966965e438a6587277decf"
  public static let nativeType = "kuavo_mapping/StartMappingRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public var `lidar_type`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
    try w.string(self.`lidar_type`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingStartMappingRequest {
    var v = Ros1Kuavo_mappingStartMappingRequest()
    v.`map_name` = try r.string(bound: 256)
    v.`lidar_type` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingStartMappingResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_6cf0a52b7aa4774cb9fb0be766d116b433f996b80f339c7557c00815607c62c0"
  public static let nativeType = "kuavo_mapping/StartMappingResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingStartMappingResponse
  {
    var v = Ros1Kuavo_mappingStartMappingResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingStopMappingRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_168a98e242741c38f2edb346778f7c25be34593cc452253c7ee17f51b42d5312"
  public static let nativeType = "kuavo_mapping/StopMappingRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingStopMappingRequest {
    var v = Ros1Kuavo_mappingStopMappingRequest()
    return v
  }
}
public struct Ros1Kuavo_mappingStopMappingResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_17b821c01d3df0a9607716b89c1068637b5448b8ebe888c7c2dd6de900d211bf"
  public static let nativeType = "kuavo_mapping/StopMappingResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingStopMappingResponse {
    var v = Ros1Kuavo_mappingStopMappingResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingTaskPoint: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_fe6afa2e8cca97a9648d448712d6274a95b0a2afb65084d1024fb21751f70688"
  public static let nativeType = "kuavo_mapping/TaskPoint"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_mappingTaskPoint {
    var v = Ros1Kuavo_mappingTaskPoint()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_mappingTaskPointOperationRequest: Canonical {
  public static let maximumWireBytes = 578
  public static let codecIdentity =
    "UWVMROS1_c6344869bb1e8975ca2222ed0788e8693c137861bbbd296ba278bbaee9fec25a"
  public static let nativeType = "kuavo_mapping/TaskPointOperationRequest"
  public static let nativeIdentity: String? = nil
  public static let `ADD`: Int8 = 0
  public static let `UPDATE`: Int8 = 1
  public static let `DELETE`: Int8 = 2
  public static let `GET`: Int8 = 3
  public var `operation`: Int8 = 0
  public var `task_point`: Ros1Kuavo_mappingTaskPoint = Ros1Kuavo_mappingTaskPoint()
  public var `name`: String = ""
  public var `use_robot_current_pose`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`operation`)
    try self.`task_point`.write(to: &w)
    try w.string(self.`name`, bound: 256)
    try w.boolean(self.`use_robot_current_pose`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingTaskPointOperationRequest
  {
    var v = Ros1Kuavo_mappingTaskPointOperationRequest()
    v.`operation` = try r.integer(Int8.self)
    v.`task_point` = try Ros1Kuavo_mappingTaskPoint.read(from: &r)
    v.`name` = try r.string(bound: 256)
    v.`use_robot_current_pose` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_mappingTaskPointOperationResponse: Canonical {
  public static let maximumWireBytes = 2793
  public static let codecIdentity =
    "UWVMROS1_263d6613ca44b86c344aaa2f85c46584052ff465208d3ab764ccce2cae809d70"
  public static let nativeType = "kuavo_mapping/TaskPointOperationResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `task_points`: [Ros1Kuavo_mappingTaskPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`task_points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`task_points`.count))
    for e in self.`task_points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_mappingTaskPointOperationResponse
  {
    var v = Ros1Kuavo_mappingTaskPointOperationResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`task_points` = []
    v.`task_points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`task_points`.append(try Ros1Kuavo_mappingTaskPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsAprilTagDetection: Canonical {
  public static let maximumWireBytes = 816
  public static let codecIdentity =
    "UWVMROS1_890dc965bbcaf6ac97e03050b55bbd43671d8e04bb04b127380a3a091f189405"
  public static let nativeType = "kuavo_msgs/AprilTagDetection"
  public static let nativeIdentity: String? = nil
  public var `id`: [Int32] = []
  public var `size`: [Double] = []
  public var `pose`: Ros1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`id`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`id`.count))
    for e in self.`id` {
      try w.integer(e)
    }
    guard self.`size`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`size`.count))
    for e in self.`size` {
      try w.float64(e)
    }
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAprilTagDetection {
    var v = Ros1Kuavo_msgsAprilTagDetection()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`id` = []
    v.`id`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`id`.append(try r.integer(Int32.self))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`size` = []
    v.`size`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`size`.append(try r.float64())
    }
    v.`pose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsAprilTagDetectionArray: Canonical {
  public static let maximumWireBytes = 6804
  public static let codecIdentity =
    "UWVMROS1_35d5d01d892fa758b0a0c6c6c66fe1764f6d85cef4e12b84d3bcd2cf5e51e479"
  public static let nativeType = "kuavo_msgs/AprilTagDetectionArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `detections`: [Ros1Kuavo_msgsAprilTagDetection] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`detections`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`detections`.count))
    for e in self.`detections` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAprilTagDetectionArray {
    var v = Ros1Kuavo_msgsAprilTagDetectionArray()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`detections` = []
    v.`detections`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`detections`.append(try Ros1Kuavo_msgsAprilTagDetection.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsAudioPlaybackStatus: Canonical {
  public static let maximumWireBytes = 537
  public static let codecIdentity =
    "UWVMROS1_3debc3102bd6a895732616303fedbb06d2d067e132b56ffcfe3e5f756a06895e"
  public static let nativeType = "kuavo_msgs/AudioPlaybackStatus"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `playing`: Bool = false
  public var `message`: String = ""
  public var `buffer_size`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`playing`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`buffer_size`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAudioPlaybackStatus {
    var v = Ros1Kuavo_msgsAudioPlaybackStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`playing` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`buffer_size` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsAudioReceiverData: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_178e212273125b87e2ed45dfdbdc4ab1ad5ce4e4e3e9f5e37d71bbff63dd7aac"
  public static let nativeType = "kuavo_msgs/AudioReceiverData"
  public static let nativeIdentity: String? = nil
  public var `data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAudioReceiverData {
    var v = Ros1Kuavo_msgsAudioReceiverData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 256 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsBatteryInfo: Canonical {
  public static let maximumWireBytes = 44
  public static let codecIdentity =
    "UWVMROS1_6d43dab239ef03efd0e42c71727600603e4c38c3c240e3cf119f379aaa65925f"
  public static let nativeType = "kuavo_msgs/BatteryInfo"
  public static let nativeIdentity: String? = nil
  public var `battery_id`: UInt8 = 0
  public var `voltage`: UInt32 = 0
  public var `current`: Int32 = 0
  public var `remaining_capacity`: UInt32 = 0
  public var `full_capacity`: UInt32 = 0
  public var `percentage`: UInt8 = 0
  public var `cycle_count`: UInt16 = 0
  public var `protection_flags`: UInt32 = 0
  public var `temperatures`: [Int16] = Array(repeating: 0, count: 6)
  public var `timestamp`: Ros1Time = Ros1Time()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`battery_id`)
    try w.integer(self.`voltage`)
    try w.integer(self.`current`)
    try w.integer(self.`remaining_capacity`)
    try w.integer(self.`full_capacity`)
    try w.integer(self.`percentage`)
    try w.integer(self.`cycle_count`)
    try w.integer(self.`protection_flags`)
    guard self.`temperatures`.count == 6 else { throw RosError(22) }
    for e in self.`temperatures` {
      try w.integer(e)
    }
    try self.`timestamp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsBatteryInfo {
    var v = Ros1Kuavo_msgsBatteryInfo()
    v.`battery_id` = try r.integer(UInt8.self)
    v.`voltage` = try r.integer(UInt32.self)
    v.`current` = try r.integer(Int32.self)
    v.`remaining_capacity` = try r.integer(UInt32.self)
    v.`full_capacity` = try r.integer(UInt32.self)
    v.`percentage` = try r.integer(UInt8.self)
    v.`cycle_count` = try r.integer(UInt16.self)
    v.`protection_flags` = try r.integer(UInt32.self)
    let count8 = 6
    v.`temperatures` = []
    v.`temperatures`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`temperatures`.append(try r.integer(Int16.self))
    }
    v.`timestamp` = try Ros1Time.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsColor: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_c4fe4b1a89e4e339d2c2539b24734340d2f3de93b6cb2787a088081bff5c4e3a"
  public static let nativeType = "kuavo_msgs/Color"
  public static let nativeIdentity: String? = nil
  public var `r`: UInt8 = 0
  public var `g`: UInt8 = 0
  public var `b`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
    try w.integer(self.`g`)
    try w.integer(self.`b`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsColor {
    var v = Ros1Kuavo_msgsColor()
    v.`r` = try r.integer(UInt8.self)
    v.`g` = try r.integer(UInt8.self)
    v.`b` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsControllerSwitchEvent: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_1c2826bf98d2b1b2873f233c87b399d3bc15b044c628d3b26dc520183d9d6fc5"
  public static let nativeType = "kuavo_msgs/ControllerSwitchEvent"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `from_controller`: String = ""
  public var `to_controller`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`from_controller`, bound: 256)
    try w.string(self.`to_controller`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsControllerSwitchEvent {
    var v = Ros1Kuavo_msgsControllerSwitchEvent()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`from_controller` = try r.string(bound: 256)
    v.`to_controller` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsCreatePathRequest: Canonical {
  public static let maximumWireBytes = 301
  public static let codecIdentity =
    "UWVMROS1_478f357d2d30fb6c735d24db510b6dbb649fd0392aebbc2ddc900232fda68b85"
  public static let nativeType = "kuavo_msgs/CreatePathRequest"
  public static let nativeIdentity: String? = nil
  public var `path_type`: String = ""
  public var `v_max_linear`: Double = 0
  public var `yaw_offset`: Double = 0
  public var `length`: Double = 0
  public var `radius`: Double = 0
  public var `amplitude`: Double = 0
  public var `half_scurve`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`path_type`, bound: 256)
    try w.float64(self.`v_max_linear`)
    try w.float64(self.`yaw_offset`)
    try w.float64(self.`length`)
    try w.float64(self.`radius`)
    try w.float64(self.`amplitude`)
    try w.boolean(self.`half_scurve`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsCreatePathRequest {
    var v = Ros1Kuavo_msgsCreatePathRequest()
    v.`path_type` = try r.string(bound: 256)
    v.`v_max_linear` = try r.float64()
    v.`yaw_offset` = try r.float64()
    v.`length` = try r.float64()
    v.`radius` = try r.float64()
    v.`amplitude` = try r.float64()
    v.`half_scurve` = try r.boolean()
    return v
  }
}
public struct Ros1Nav_msgsPath: Canonical {
  public static let maximumWireBytes = 2900
  public static let codecIdentity =
    "UWVMROS1_ee4ffa0e9f6d8e778e020d89bd798326efa72d0639979ce1f151b69cea2f5cdd"
  public static let nativeType = "nav_msgs/Path"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `poses`: [Ros1Geometry_msgsPoseStamped] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`poses`.count))
    for e in self.`poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nav_msgsPath {
    var v = Ros1Nav_msgsPath()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`poses` = []
    v.`poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`poses`.append(try Ros1Geometry_msgsPoseStamped.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsCreatePathResponse: Canonical {
  public static let maximumWireBytes = 3161
  public static let codecIdentity =
    "UWVMROS1_2663aa848c09f6f18ed5e14730332153a8a56bc5b133bd17690bd45d06c47ec0"
  public static let nativeType = "kuavo_msgs/CreatePathResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `path`: Ros1Nav_msgsPath = Ros1Nav_msgsPath()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try self.`path`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsCreatePathResponse {
    var v = Ros1Kuavo_msgsCreatePathResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`path` = try Ros1Nav_msgsPath.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsDanceTrajectoryState: Canonical {
  public static let maximumWireBytes = 804
  public static let codecIdentity =
    "UWVMROS1_56f8cfcaf4c1324d8a6f330311da7281587e97d1376c6d79015c28a36fc4b6a9"
  public static let nativeType = "kuavo_msgs/DanceTrajectoryState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `dance_name`: String = ""
  public var `state`: String = ""
  public var `run_id`: UInt32 = 0
  public var `current_step`: Int32 = 0
  public var `total_steps`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`dance_name`, bound: 256)
    try w.string(self.`state`, bound: 256)
    try w.integer(self.`run_id`)
    try w.integer(self.`current_step`)
    try w.integer(self.`total_steps`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsDanceTrajectoryState {
    var v = Ros1Kuavo_msgsDanceTrajectoryState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`dance_name` = try r.string(bound: 256)
    v.`state` = try r.string(bound: 256)
    v.`run_id` = try r.integer(UInt32.self)
    v.`current_step` = try r.integer(Int32.self)
    v.`total_steps` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsExecuteArmActionRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d43994ccbd360139479285b18e644ff69a113e224558494cbc4a346398975298"
  public static let nativeType = "kuavo_msgs/ExecuteArmActionRequest"
  public static let nativeIdentity: String? = nil
  public var `action_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`action_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsExecuteArmActionRequest
  {
    var v = Ros1Kuavo_msgsExecuteArmActionRequest()
    v.`action_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsExecuteArmActionResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_abcfb19fc995d65895c69f8bfd035a063e826bb3e4059e67ee77f2fd9e87fc5b"
  public static let nativeType = "kuavo_msgs/ExecuteArmActionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsExecuteArmActionResponse
  {
    var v = Ros1Kuavo_msgsExecuteArmActionResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsFTsensorData: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_f17198f8ad7f451dc2717c09f65e2c30d56c9c6cdaff75a0172e1a01cacf5906"
  public static let nativeType = "kuavo_msgs/FTsensorData"
  public static let nativeIdentity: String? = nil
  public var `Fx`: [Double] = []
  public var `Fy`: [Double] = []
  public var `Fz`: [Double] = []
  public var `Mx`: [Double] = []
  public var `My`: [Double] = []
  public var `Mz`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`Fx`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Fx`.count))
    for e in self.`Fx` {
      try w.float64(e)
    }
    guard self.`Fy`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Fy`.count))
    for e in self.`Fy` {
      try w.float64(e)
    }
    guard self.`Fz`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Fz`.count))
    for e in self.`Fz` {
      try w.float64(e)
    }
    guard self.`Mx`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Mx`.count))
    for e in self.`Mx` {
      try w.float64(e)
    }
    guard self.`My`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`My`.count))
    for e in self.`My` {
      try w.float64(e)
    }
    guard self.`Mz`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Mz`.count))
    for e in self.`Mz` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFTsensorData {
    var v = Ros1Kuavo_msgsFTsensorData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`Fx` = []
    v.`Fx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`Fx`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`Fy` = []
    v.`Fy`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`Fy`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`Fz` = []
    v.`Fz`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`Fz`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`Mx` = []
    v.`Mx`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`Mx`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`My` = []
    v.`My`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`My`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`Mz` = []
    v.`Mz`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`Mz`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFaceBoundingBox: Canonical {
  public static let maximumWireBytes = 292
  public static let codecIdentity =
    "UWVMROS1_6ac2300ba29692faba5446831f73728bd67713e6dc8cb0255ec9d4d1b71db98c"
  public static let nativeType = "kuavo_msgs/FaceBoundingBox"
  public static let nativeIdentity: String? = nil
  public var `x1`: Int32 = 0
  public var `y1`: Int32 = 0
  public var `x2`: Int32 = 0
  public var `y2`: Int32 = 0
  public var `confidence`: Float = 0
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x1`)
    try w.integer(self.`y1`)
    try w.integer(self.`x2`)
    try w.integer(self.`y2`)
    try w.float32(self.`confidence`)
    try self.`header`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFaceBoundingBox {
    var v = Ros1Kuavo_msgsFaceBoundingBox()
    v.`x1` = try r.integer(Int32.self)
    v.`y1` = try r.integer(Int32.self)
    v.`x2` = try r.integer(Int32.self)
    v.`y2` = try r.integer(Int32.self)
    v.`confidence` = try r.float32()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFallStandCommandRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a5d9d66843bd8aeb29b50ba78bcff0d54020f24fed123f39c351d26143354629"
  public static let nativeType = "kuavo_msgs/FallStandCommandRequest"
  public static let nativeIdentity: String? = nil
  public static let `PREPARE`: UInt8 = 1
  public static let `STAND_UP`: UInt8 = 2
  public static let `RESET`: UInt8 = 3
  public var `command`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`command`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFallStandCommandRequest
  {
    var v = Ros1Kuavo_msgsFallStandCommandRequest()
    v.`command` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsFallStandCommandResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_6cbe2cc62e0b13783a54bce4b951af1a508703fd7c070ea1cb5c5a565490c7a3"
  public static let nativeType = "kuavo_msgs/FallStandCommandResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFallStandCommandResponse
  {
    var v = Ros1Kuavo_msgsFallStandCommandResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsFloat32MultiArrayStamped: Canonical {
  public static let maximumWireBytes = 1024
  public static let codecIdentity =
    "UWVMROS1_ff2db4c4bde340f06574d38cfb22abaae0e59ba3ca5149d92c96edd3e092029f"
  public static let nativeType = "kuavo_msgs/Float32MultiArrayStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `data`: Ros1Std_msgsFloat32MultiArray = Ros1Std_msgsFloat32MultiArray()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFloat32MultiArrayStamped
  {
    var v = Ros1Kuavo_msgsFloat32MultiArrayStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`data` = try Ros1Std_msgsFloat32MultiArray.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsGetAllMapsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f46ccfea6a4c91196ffadc91a2b667b2e8f69d21185bab2cd4f1f9034ef8cebf"
  public static let nativeType = "kuavo_msgs/GetAllMapsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetAllMapsRequest {
    var v = Ros1Kuavo_msgsGetAllMapsRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetAllMapsResponse: Canonical {
  public static let maximumWireBytes = 4164
  public static let codecIdentity =
    "UWVMROS1_f80958b5c4419ec5672e8fdd7c5e6d6ec0a57b38e4827fc3667b6c91f59a47bf"
  public static let nativeType = "kuavo_msgs/GetAllMapsResponse"
  public static let nativeIdentity: String? = nil
  public var `maps`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`maps`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`maps`.count))
    for e in self.`maps` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetAllMapsResponse {
    var v = Ros1Kuavo_msgsGetAllMapsResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`maps` = []
    v.`maps`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`maps`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGetBatteryInfoRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2fb5ded57aec55776fa99e0a29dafc39132d99f4ba07f634903ed76d02e55f7f"
  public static let nativeType = "kuavo_msgs/GetBatteryInfoRequest"
  public static let nativeIdentity: String? = nil
  public var `battery_id`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`battery_id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetBatteryInfoRequest {
    var v = Ros1Kuavo_msgsGetBatteryInfoRequest()
    v.`battery_id` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsGetBatteryInfoResponse: Canonical {
  public static let maximumWireBytes = 297
  public static let codecIdentity =
    "UWVMROS1_ca1379a3f888318206ae182fd9943330cb1a4030b0e567af6bba4c755a8aadbb"
  public static let nativeType = "kuavo_msgs/GetBatteryInfoResponse"
  public static let nativeIdentity: String? = nil
  public var `battery_id`: UInt8 = 0
  public var `voltage`: UInt32 = 0
  public var `current`: Int32 = 0
  public var `remaining_capacity`: UInt32 = 0
  public var `full_capacity`: UInt32 = 0
  public var `percentage`: UInt8 = 0
  public var `cycle_count`: UInt16 = 0
  public var `protection_flags`: UInt32 = 0
  public var `temperatures`: [Int16] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`battery_id`)
    try w.integer(self.`voltage`)
    try w.integer(self.`current`)
    try w.integer(self.`remaining_capacity`)
    try w.integer(self.`full_capacity`)
    try w.integer(self.`percentage`)
    try w.integer(self.`cycle_count`)
    try w.integer(self.`protection_flags`)
    guard self.`temperatures`.count == 6 else { throw RosError(22) }
    for e in self.`temperatures` {
      try w.integer(e)
    }
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetBatteryInfoResponse {
    var v = Ros1Kuavo_msgsGetBatteryInfoResponse()
    v.`battery_id` = try r.integer(UInt8.self)
    v.`voltage` = try r.integer(UInt32.self)
    v.`current` = try r.integer(Int32.self)
    v.`remaining_capacity` = try r.integer(UInt32.self)
    v.`full_capacity` = try r.integer(UInt32.self)
    v.`percentage` = try r.integer(UInt8.self)
    v.`cycle_count` = try r.integer(UInt16.self)
    v.`protection_flags` = try r.integer(UInt32.self)
    let count8 = 6
    v.`temperatures` = []
    v.`temperatures`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`temperatures`.append(try r.integer(Int16.self))
    }
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetCurrentMapRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4f0d2b50c249ae9ba1bb86f997638789a4531523d1892bd5ec3aa4f0425fc84c"
  public static let nativeType = "kuavo_msgs/GetCurrentMapRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetCurrentMapRequest {
    var v = Ros1Kuavo_msgsGetCurrentMapRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetCurrentMapResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1d0625e17de7de83cfcc183d61e71b7b3136e85153b988e29c0a1eee428550de"
  public static let nativeType = "kuavo_msgs/GetCurrentMapResponse"
  public static let nativeIdentity: String? = nil
  public var `current_map`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`current_map`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetCurrentMapResponse {
    var v = Ros1Kuavo_msgsGetCurrentMapResponse()
    v.`current_map` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetPowerBoardStatusRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ca40f94da04e34a367abb1e09603558411feb316c858cf85dafa61565cce5822"
  public static let nativeType = "kuavo_msgs/GetPowerBoardStatusRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetPowerBoardStatusRequest
  {
    var v = Ros1Kuavo_msgsGetPowerBoardStatusRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsPowerBoardStatus: Canonical {
  public static let maximumWireBytes = 37
  public static let codecIdentity =
    "UWVMROS1_3909ec15d3b274f56c82aab332a227d789a181bfa6dfc5901af1228e64632142"
  public static let nativeType = "kuavo_msgs/PowerBoardStatus"
  public static let nativeIdentity: String? = nil
  public var `timestamp`: Ros1Time = Ros1Time()
  public var `status_byte1`: UInt8 = 0
  public var `status_byte2`: UInt8 = 0
  public var `status_byte3`: UInt8 = 0
  public var `ntc_temperature`: UInt8 = 0
  public var `charge_voltage`: UInt8 = 0
  public var `bat1_voltage`: UInt8 = 0
  public var `bat2_voltage`: UInt8 = 0
  public var `stop_int`: Bool = false
  public var `rf_int`: Bool = false
  public var `board_is_wheel`: Bool = false
  public var `ideal_diode_fail`: Bool = false
  public var `cur_ov_protection`: Bool = false
  public var `bat1_comm_ok`: Bool = false
  public var `bat2_comm_ok`: Bool = false
  public var `bat1_exists`: Bool = false
  public var `bat2_exists`: Bool = false
  public var `bat1_low_power`: Bool = false
  public var `bat2_low_power`: Bool = false
  public var `charging`: Bool = false
  public var `fail_12v`: Bool = false
  public var `fail_19v`: Bool = false
  public var `fail_24v`: Bool = false
  public var `arm_en`: Bool = false
  public var `leg_en`: Bool = false
  public var `out_19v_en`: Bool = false
  public var `out1_12v_en`: Bool = false
  public var `out2_12v_en`: Bool = false
  public var `out3_12v_en`: Bool = false
  public var `out_24v_en`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`timestamp`.write(to: &w)
    try w.integer(self.`status_byte1`)
    try w.integer(self.`status_byte2`)
    try w.integer(self.`status_byte3`)
    try w.integer(self.`ntc_temperature`)
    try w.integer(self.`charge_voltage`)
    try w.integer(self.`bat1_voltage`)
    try w.integer(self.`bat2_voltage`)
    try w.boolean(self.`stop_int`)
    try w.boolean(self.`rf_int`)
    try w.boolean(self.`board_is_wheel`)
    try w.boolean(self.`ideal_diode_fail`)
    try w.boolean(self.`cur_ov_protection`)
    try w.boolean(self.`bat1_comm_ok`)
    try w.boolean(self.`bat2_comm_ok`)
    try w.boolean(self.`bat1_exists`)
    try w.boolean(self.`bat2_exists`)
    try w.boolean(self.`bat1_low_power`)
    try w.boolean(self.`bat2_low_power`)
    try w.boolean(self.`charging`)
    try w.boolean(self.`fail_12v`)
    try w.boolean(self.`fail_19v`)
    try w.boolean(self.`fail_24v`)
    try w.boolean(self.`arm_en`)
    try w.boolean(self.`leg_en`)
    try w.boolean(self.`out_19v_en`)
    try w.boolean(self.`out1_12v_en`)
    try w.boolean(self.`out2_12v_en`)
    try w.boolean(self.`out3_12v_en`)
    try w.boolean(self.`out_24v_en`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPowerBoardStatus {
    var v = Ros1Kuavo_msgsPowerBoardStatus()
    v.`timestamp` = try Ros1Time.read(from: &r)
    v.`status_byte1` = try r.integer(UInt8.self)
    v.`status_byte2` = try r.integer(UInt8.self)
    v.`status_byte3` = try r.integer(UInt8.self)
    v.`ntc_temperature` = try r.integer(UInt8.self)
    v.`charge_voltage` = try r.integer(UInt8.self)
    v.`bat1_voltage` = try r.integer(UInt8.self)
    v.`bat2_voltage` = try r.integer(UInt8.self)
    v.`stop_int` = try r.boolean()
    v.`rf_int` = try r.boolean()
    v.`board_is_wheel` = try r.boolean()
    v.`ideal_diode_fail` = try r.boolean()
    v.`cur_ov_protection` = try r.boolean()
    v.`bat1_comm_ok` = try r.boolean()
    v.`bat2_comm_ok` = try r.boolean()
    v.`bat1_exists` = try r.boolean()
    v.`bat2_exists` = try r.boolean()
    v.`bat1_low_power` = try r.boolean()
    v.`bat2_low_power` = try r.boolean()
    v.`charging` = try r.boolean()
    v.`fail_12v` = try r.boolean()
    v.`fail_19v` = try r.boolean()
    v.`fail_24v` = try r.boolean()
    v.`arm_en` = try r.boolean()
    v.`leg_en` = try r.boolean()
    v.`out_19v_en` = try r.boolean()
    v.`out1_12v_en` = try r.boolean()
    v.`out2_12v_en` = try r.boolean()
    v.`out3_12v_en` = try r.boolean()
    v.`out_24v_en` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsGetPowerBoardStatusResponse: Canonical {
  public static let maximumWireBytes = 298
  public static let codecIdentity =
    "UWVMROS1_dc451a58bff76c485b8f6e3ca5d28a67745503d5d2a1cd5b68aa205fe86ec96b"
  public static let nativeType = "kuavo_msgs/GetPowerBoardStatusResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: Ros1Kuavo_msgsPowerBoardStatus = Ros1Kuavo_msgsPowerBoardStatus()
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`status`.write(to: &w)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetPowerBoardStatusResponse
  {
    var v = Ros1Kuavo_msgsGetPowerBoardStatusResponse()
    v.`status` = try Ros1Kuavo_msgsPowerBoardStatus.read(from: &r)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetStringListRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8075a78360c8b2181b06046c2dc48be11d3051d6568c470fd10aee07644a0438"
  public static let nativeType = "kuavo_msgs/GetStringListRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetStringListRequest {
    var v = Ros1Kuavo_msgsGetStringListRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetStringListResponse: Canonical {
  public static let maximumWireBytes = 4425
  public static let codecIdentity =
    "UWVMROS1_3fc229d60eede52a5c7d96fe957cc495dba890aabb23b48c688766da5f7ae086"
  public static let nativeType = "kuavo_msgs/GetStringListResponse"
  public static let nativeIdentity: String? = nil
  public var `data`: [String] = []
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.string(e, bound: 256)
    }
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetStringListResponse {
    var v = Ros1Kuavo_msgsGetStringListResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try r.string(bound: 256))
    }
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_959b27f3971013d43876eafe11341e6ce6b6ccb11c944f9cfc27e60eb29ef73a"
  public static let nativeType = "kuavo_msgs/GetTargetPartPoseInCameraRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest
  {
    var v = Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse: Canonical {
  public static let maximumWireBytes = 317
  public static let codecIdentity =
    "UWVMROS1_2f9f0d6e26e39812a69998906d36e1190876afe997a15bf806204414f4aecd7c"
  public static let nativeType = "kuavo_msgs/GetTargetPartPoseInCameraResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `pose_in_camera`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try self.`pose_in_camera`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse
  {
    var v = Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`pose_in_camera` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsInitialPoseWithTaskPointRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_c64a398106df13b51953dbd1f7e869387973edb068e72a1caeb2a2f66e2970f8"
  public static let nativeType = "kuavo_msgs/InitialPoseWithTaskPointRequest"
  public static let nativeIdentity: String? = nil
  public var `task_point_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_point_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsInitialPoseWithTaskPointRequest
  {
    var v = Ros1Kuavo_msgsInitialPoseWithTaskPointRequest()
    v.`task_point_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsInitialPoseWithTaskPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_72bcf223dcb9aa760b8b2c1fefe0a23177d42785f8827a85d85a56c91d941e2d"
  public static let nativeType = "kuavo_msgs/InitialPoseWithTaskPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsInitialPoseWithTaskPointResponse
  {
    var v = Ros1Kuavo_msgsInitialPoseWithTaskPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsJoySticks: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_d007c3176715da6b17bcd89f3ff2dc3906c1f2308ba57ff36dca5e6a82f7bd5b"
  public static let nativeType = "kuavo_msgs/JoySticks"
  public static let nativeIdentity: String? = nil
  public var `left_x`: Float = 0
  public var `left_y`: Float = 0
  public var `left_trigger`: Float = 0
  public var `left_grip`: Float = 0
  public var `left_first_button_pressed`: Bool = false
  public var `left_second_button_pressed`: Bool = false
  public var `left_first_button_touched`: Bool = false
  public var `left_second_button_touched`: Bool = false
  public var `right_x`: Float = 0
  public var `right_y`: Float = 0
  public var `right_trigger`: Float = 0
  public var `right_grip`: Float = 0
  public var `right_first_button_pressed`: Bool = false
  public var `right_second_button_pressed`: Bool = false
  public var `right_first_button_touched`: Bool = false
  public var `right_second_button_touched`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`left_x`)
    try w.float32(self.`left_y`)
    try w.float32(self.`left_trigger`)
    try w.float32(self.`left_grip`)
    try w.boolean(self.`left_first_button_pressed`)
    try w.boolean(self.`left_second_button_pressed`)
    try w.boolean(self.`left_first_button_touched`)
    try w.boolean(self.`left_second_button_touched`)
    try w.float32(self.`right_x`)
    try w.float32(self.`right_y`)
    try w.float32(self.`right_trigger`)
    try w.float32(self.`right_grip`)
    try w.boolean(self.`right_first_button_pressed`)
    try w.boolean(self.`right_second_button_pressed`)
    try w.boolean(self.`right_first_button_touched`)
    try w.boolean(self.`right_second_button_touched`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJoySticks {
    var v = Ros1Kuavo_msgsJoySticks()
    v.`left_x` = try r.float32()
    v.`left_y` = try r.float32()
    v.`left_trigger` = try r.float32()
    v.`left_grip` = try r.float32()
    v.`left_first_button_pressed` = try r.boolean()
    v.`left_second_button_pressed` = try r.boolean()
    v.`left_first_button_touched` = try r.boolean()
    v.`left_second_button_touched` = try r.boolean()
    v.`right_x` = try r.float32()
    v.`right_y` = try r.float32()
    v.`right_trigger` = try r.float32()
    v.`right_grip` = try r.float32()
    v.`right_first_button_pressed` = try r.boolean()
    v.`right_second_button_pressed` = try r.boolean()
    v.`right_first_button_touched` = try r.boolean()
    v.`right_second_button_touched` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsLoadMapRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_6e2c47c3ef5b788c01d05977c52e9538021fe40e2dbeda7aac838acd62e77e57"
  public static let nativeType = "kuavo_msgs/LoadMapRequest"
  public static let nativeIdentity: String? = nil
  public var `map_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLoadMapRequest {
    var v = Ros1Kuavo_msgsLoadMapRequest()
    v.`map_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsLoadMapResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_93d33c8c117d288f4de16ea98cab3820157e6ba6113341d290d1bf80d08a9eb2"
  public static let nativeType = "kuavo_msgs/LoadMapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLoadMapResponse {
    var v = Ros1Kuavo_msgsLoadMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsMetadata: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_d1710d70dbaede086c4c02e1b55f8a56238e181f11edf7001da28bac6fbc2570"
  public static let nativeType = "kuavo_msgs/Metadata"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `json_data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`json_data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMetadata {
    var v = Ros1Kuavo_msgsMetadata()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`json_data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsMmDetectionMsg: Canonical {
  public static let maximumWireBytes = 327
  public static let codecIdentity =
    "UWVMROS1_26ebffd502c5a27512ada8ba611f1f2c250f5d601e179ebc54758e9190f3a807"
  public static let nativeType = "kuavo_msgs/MmDetectionMsg"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `hasAnomaly`: Bool = false
  public var `trajectoryPositionErrorMax`: Double = 0
  public var `trajectoryPositionErrorAvg`: Double = 0
  public var `trajectoryPositionMaxThresholdExceeded`: Bool = false
  public var `trajectoryPositionAvgThresholdExceeded`: Bool = false
  public var `trajectoryOrientationErrorMax`: Double = 0
  public var `trajectoryOrientationErrorAvg`: Double = 0
  public var `trajectoryOrientationMaxThresholdExceeded`: Bool = false
  public var `trajectoryOrientationAvgThresholdExceeded`: Bool = false
  public var `velocityMagnitudeAvg`: Double = 0
  public var `velocityMagnitudeMax`: Double = 0
  public var `velocityAvgThresholdExceeded`: Bool = false
  public var `velocityMaxThresholdExceeded`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`hasAnomaly`)
    try w.float64(self.`trajectoryPositionErrorMax`)
    try w.float64(self.`trajectoryPositionErrorAvg`)
    try w.boolean(self.`trajectoryPositionMaxThresholdExceeded`)
    try w.boolean(self.`trajectoryPositionAvgThresholdExceeded`)
    try w.float64(self.`trajectoryOrientationErrorMax`)
    try w.float64(self.`trajectoryOrientationErrorAvg`)
    try w.boolean(self.`trajectoryOrientationMaxThresholdExceeded`)
    try w.boolean(self.`trajectoryOrientationAvgThresholdExceeded`)
    try w.float64(self.`velocityMagnitudeAvg`)
    try w.float64(self.`velocityMagnitudeMax`)
    try w.boolean(self.`velocityAvgThresholdExceeded`)
    try w.boolean(self.`velocityMaxThresholdExceeded`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMmDetectionMsg {
    var v = Ros1Kuavo_msgsMmDetectionMsg()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`hasAnomaly` = try r.boolean()
    v.`trajectoryPositionErrorMax` = try r.float64()
    v.`trajectoryPositionErrorAvg` = try r.float64()
    v.`trajectoryPositionMaxThresholdExceeded` = try r.boolean()
    v.`trajectoryPositionAvgThresholdExceeded` = try r.boolean()
    v.`trajectoryOrientationErrorMax` = try r.float64()
    v.`trajectoryOrientationErrorAvg` = try r.float64()
    v.`trajectoryOrientationMaxThresholdExceeded` = try r.boolean()
    v.`trajectoryOrientationAvgThresholdExceeded` = try r.boolean()
    v.`velocityMagnitudeAvg` = try r.float64()
    v.`velocityMagnitudeMax` = try r.float64()
    v.`velocityAvgThresholdExceeded` = try r.boolean()
    v.`velocityMaxThresholdExceeded` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsMocapPoseRetarget: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_a32401d15b34da4f4fee4e0f93b9760d7c402596f7b3287fb7252a985390f718"
  public static let nativeType = "kuavo_msgs/MocapPoseRetarget"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `base_link_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `base_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `joint_position`: [Double] = Array(repeating: 0, count: 27)
  public var `joint_velocity`: [Double] = Array(repeating: 0, count: 27)
  public var `end_effector_poses`: [Ros1Geometry_msgsPoint] = Array(
    repeating: Ros1Geometry_msgsPoint(), count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`base_link_pose`.write(to: &w)
    guard self.`base_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`base_velocity` {
      try w.float64(e)
    }
    guard self.`joint_position`.count == 27 else { throw RosError(22) }
    for e in self.`joint_position` {
      try w.float64(e)
    }
    guard self.`joint_velocity`.count == 27 else { throw RosError(22) }
    for e in self.`joint_velocity` {
      try w.float64(e)
    }
    guard self.`end_effector_poses`.count == 4 else { throw RosError(22) }
    for e in self.`end_effector_poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMocapPoseRetarget {
    var v = Ros1Kuavo_msgsMocapPoseRetarget()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`base_link_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count2 = 6
    v.`base_velocity` = []
    v.`base_velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`base_velocity`.append(try r.float64())
    }
    let count3 = 27
    v.`joint_position` = []
    v.`joint_position`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_position`.append(try r.float64())
    }
    let count4 = 27
    v.`joint_velocity` = []
    v.`joint_velocity`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`joint_velocity`.append(try r.float64())
    }
    let count5 = 4
    v.`end_effector_poses` = []
    v.`end_effector_poses`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`end_effector_poses`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsNavigateToTaskPointRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_a6583f68f87bc6f4cdddefe4d65667df96e5339fe24c8201683a6699945e47ac"
  public static let nativeType = "kuavo_msgs/NavigateToTaskPointRequest"
  public static let nativeIdentity: String? = nil
  public var `task_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsNavigateToTaskPointRequest
  {
    var v = Ros1Kuavo_msgsNavigateToTaskPointRequest()
    v.`task_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsNavigateToTaskPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_5dfcecdd2820810c8decca4c9e3680a2487b62b5bf39da815a316e3ee4a81c41"
  public static let nativeType = "kuavo_msgs/NavigateToTaskPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsNavigateToTaskPointResponse
  {
    var v = Ros1Kuavo_msgsNavigateToTaskPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsPlayMusicImmediateRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_938d9c4cd55f905595166352a6c4e6ffdd461419c41d078fb5d76cc9fee1faf6"
  public static let nativeType = "kuavo_msgs/PlayMusicImmediateRequest"
  public static let nativeIdentity: String? = nil
  public var `music_number`: String = ""
  public var `volume`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`music_number`, bound: 256)
    try w.integer(self.`volume`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlayMusicImmediateRequest
  {
    var v = Ros1Kuavo_msgsPlayMusicImmediateRequest()
    v.`music_number` = try r.string(bound: 256)
    v.`volume` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Kuavo_msgsPlayMusicImmediateResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f8836c018cdcdd9550b8fda978ed22581b47a2d9fa7c4093575c91381a301dc2"
  public static let nativeType = "kuavo_msgs/PlayMusicImmediateResponse"
  public static let nativeIdentity: String? = nil
  public var `success_flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success_flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlayMusicImmediateResponse
  {
    var v = Ros1Kuavo_msgsPlayMusicImmediateResponse()
    v.`success_flag` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsRelaySelectChannelRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_00151266456b82a46c9c10405194863dabb71750e808319a6d3290684ad1ae79"
  public static let nativeType = "kuavo_msgs/RelaySelectChannelRequest"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsRelaySelectChannelRequest
  {
    var v = Ros1Kuavo_msgsRelaySelectChannelRequest()
    v.`channel` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsRelaySelectChannelResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_a0ec3435609d651b53e002aea7dac00cd4ef2fffd4fe104b1531b14d35f1bc73"
  public static let nativeType = "kuavo_msgs/RelaySelectChannelResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsRelaySelectChannelResponse
  {
    var v = Ros1Kuavo_msgsRelaySelectChannelResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsRepublishTFsRequest: Canonical {
  public static let maximumWireBytes = 4444
  public static let codecIdentity =
    "UWVMROS1_77af77ab0c403fb2dd7a32b7a1c189e5d4e63941c961067116aec64dd63f8a13"
  public static let nativeType = "kuavo_msgs/RepublishTFsRequest"
  public static let nativeIdentity: String? = nil
  public var `source_frames`: [String] = []
  public var `target_frame`: String = ""
  public var `angular_thres`: Float = 0
  public var `trans_thres`: Float = 0
  public var `rate`: Float = 0
  public var `timeout`: Ros1Duration = Ros1Duration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`source_frames`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`source_frames`.count))
    for e in self.`source_frames` {
      try w.string(e, bound: 256)
    }
    try w.string(self.`target_frame`, bound: 256)
    try w.float32(self.`angular_thres`)
    try w.float32(self.`trans_thres`)
    try w.float32(self.`rate`)
    try self.`timeout`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRepublishTFsRequest {
    var v = Ros1Kuavo_msgsRepublishTFsRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`source_frames` = []
    v.`source_frames`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`source_frames`.append(try r.string(bound: 256))
    }
    v.`target_frame` = try r.string(bound: 256)
    v.`angular_thres` = try r.float32()
    v.`trans_thres` = try r.float32()
    v.`rate` = try r.float32()
    v.`timeout` = try Ros1Duration.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsRepublishTFsResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_3dc41a797ea11a7be71bfc8aa869f5a1dafbb7c370cc4781ce3d66bff5c8deab"
  public static let nativeType = "kuavo_msgs/RepublishTFsResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public var `topic_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`topic_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRepublishTFsResponse {
    var v = Ros1Kuavo_msgsRepublishTFsResponse()
    v.`status` = try r.integer(Int32.self)
    v.`topic_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsRigidBodyDescription: Canonical {
  public static let maximumWireBytes = 4768
  public static let codecIdentity =
    "UWVMROS1_a2e5b7796503d5282d1a253da2c75985ac839b76116d3dc64e1cf4dc605dfc2d"
  public static let nativeType = "kuavo_msgs/RigidBodyDescription"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `ids`: [Int32] = []
  public var `names`: [String] = []
  public var `parent_ids`: [Int32] = []
  public var `offsets`: [Ros1Geometry_msgsPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`ids`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`ids`.count))
    for e in self.`ids` {
      try w.integer(e)
    }
    guard self.`names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`names`.count))
    for e in self.`names` {
      try w.string(e, bound: 256)
    }
    guard self.`parent_ids`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`parent_ids`.count))
    for e in self.`parent_ids` {
      try w.integer(e)
    }
    guard self.`offsets`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`offsets`.count))
    for e in self.`offsets` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRigidBodyDescription {
    var v = Ros1Kuavo_msgsRigidBodyDescription()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`ids` = []
    v.`ids`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`ids`.append(try r.integer(Int32.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`names` = []
    v.`names`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`names`.append(try r.string(bound: 256))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`parent_ids` = []
    v.`parent_ids`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`parent_ids`.append(try r.integer(Int32.self))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 8 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`offsets` = []
    v.`offsets`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`offsets`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsRigidBodyFrame: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_246b8c5a8cd226500da07ab1bfbb5b7c6eb8cb65e7907387b58db3022a1ea0e6"
  public static let nativeType = "kuavo_msgs/RigidBodyFrame"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRigidBodyFrame {
    var v = Ros1Kuavo_msgsRigidBodyFrame()
    v.`name` = try r.string(bound: 256)
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsRobotActionState: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_28172973f12ecf9545fff7b4cf3ba4b493db5ea195d487b320e8a17c77d11c79"
  public static let nativeType = "kuavo_msgs/RobotActionState"
  public static let nativeIdentity: String? = nil
  public var `state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotActionState {
    var v = Ros1Kuavo_msgsRobotActionState()
    v.`state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsSetHeadControlModeRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_bea6df3fd35d03b2338aab6b136dada9b31c0ddb5f13c8df41bd30c119f9afdf"
  public static let nativeType = "kuavo_msgs/SetHeadControlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: String = ""
  public var `fixed_hand`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`mode`, bound: 256)
    try w.string(self.`fixed_hand`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetHeadControlModeRequest
  {
    var v = Ros1Kuavo_msgsSetHeadControlModeRequest()
    v.`mode` = try r.string(bound: 256)
    v.`fixed_hand` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetHeadControlModeResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_f264f3fecf3ac21e6dec4b7b46be5c445eb22cc552de583946bf866e694c464f"
  public static let nativeType = "kuavo_msgs/SetHeadControlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `current_mode`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`current_mode`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetHeadControlModeResponse
  {
    var v = Ros1Kuavo_msgsSetHeadControlModeResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`current_mode` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a0f69c9c118c365522ff2a7e7df3e3d3ecf9811f71d13ed07100c1d80392fba4"
  public static let nativeType = "kuavo_msgs/SetIncrementalArmTrajLinkRequest"
  public static let nativeIdentity: String? = nil
  public static let `TRANSPORT_NONE`: Int8 = 0
  public static let `TRANSPORT_SHM`: Int8 = 1
  public static let `TRANSPORT_KUAVO_ARM_TRAJ`: Int8 = 2
  public var `transport`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`transport`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest
  {
    var v = Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest()
    v.`transport` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_e72fe05a3c0bd9a2cc5c7f952adaedabc6cfe180f9fac0e75bb31c17554e2443"
  public static let nativeType = "kuavo_msgs/SetIncrementalArmTrajLinkResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse
  {
    var v = Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetInitialPoseRequest: Canonical {
  public static let maximumWireBytes = 616
  public static let codecIdentity =
    "UWVMROS1_f415ec0a920b01d929f930499273a44422fa552f6b51ad651abb41bac4a5c84c"
  public static let nativeType = "kuavo_msgs/SetInitialPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `initial_pose`: Ros1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`initial_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetInitialPoseRequest {
    var v = Ros1Kuavo_msgsSetInitialPoseRequest()
    v.`initial_pose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsSetInitialPoseResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_dece3eddb62c7595f164d6b4f68b451c98172ba567e4be905b6e20c3e5bb525a"
  public static let nativeType = "kuavo_msgs/SetInitialPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetInitialPoseResponse {
    var v = Ros1Kuavo_msgsSetInitialPoseResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetJoyTopicRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_cefea607dc0197ead58be542500cf84167db55587db8463ec62709c077b69730"
  public static let nativeType = "kuavo_msgs/SetJoyTopicRequest"
  public static let nativeIdentity: String? = nil
  public var `topic_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`topic_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetJoyTopicRequest {
    var v = Ros1Kuavo_msgsSetJoyTopicRequest()
    v.`topic_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetJoyTopicResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_57c5cdbe2c37eb865c356d3ad6da49784ce0297484908718c5cda5bb75e2a7d0"
  public static let nativeType = "kuavo_msgs/SetJoyTopicResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetJoyTopicResponse {
    var v = Ros1Kuavo_msgsSetJoyTopicResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetLEDModeRequest: Canonical {
  public static let maximumWireBytes = 31
  public static let codecIdentity =
    "UWVMROS1_0bad4e89bb5022c7fe027d30fbaa906042d97e043985af5cb1855a77cf508275"
  public static let nativeType = "kuavo_msgs/SetLEDModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: UInt8 = 0
  public var `color1`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color2`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color3`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color4`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color5`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color6`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color7`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color8`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color9`: [UInt8] = Array(repeating: 0, count: 3)
  public var `color10`: [UInt8] = Array(repeating: 0, count: 3)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    guard self.`color1`.count == 3 else { throw RosError(22) }
    for e in self.`color1` {
      try w.integer(e)
    }
    guard self.`color2`.count == 3 else { throw RosError(22) }
    for e in self.`color2` {
      try w.integer(e)
    }
    guard self.`color3`.count == 3 else { throw RosError(22) }
    for e in self.`color3` {
      try w.integer(e)
    }
    guard self.`color4`.count == 3 else { throw RosError(22) }
    for e in self.`color4` {
      try w.integer(e)
    }
    guard self.`color5`.count == 3 else { throw RosError(22) }
    for e in self.`color5` {
      try w.integer(e)
    }
    guard self.`color6`.count == 3 else { throw RosError(22) }
    for e in self.`color6` {
      try w.integer(e)
    }
    guard self.`color7`.count == 3 else { throw RosError(22) }
    for e in self.`color7` {
      try w.integer(e)
    }
    guard self.`color8`.count == 3 else { throw RosError(22) }
    for e in self.`color8` {
      try w.integer(e)
    }
    guard self.`color9`.count == 3 else { throw RosError(22) }
    for e in self.`color9` {
      try w.integer(e)
    }
    guard self.`color10`.count == 3 else { throw RosError(22) }
    for e in self.`color10` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetLEDModeRequest {
    var v = Ros1Kuavo_msgsSetLEDModeRequest()
    v.`mode` = try r.integer(UInt8.self)
    let count1 = 3
    v.`color1` = []
    v.`color1`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`color1`.append(try r.integer(UInt8.self))
    }
    let count2 = 3
    v.`color2` = []
    v.`color2`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`color2`.append(try r.integer(UInt8.self))
    }
    let count3 = 3
    v.`color3` = []
    v.`color3`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`color3`.append(try r.integer(UInt8.self))
    }
    let count4 = 3
    v.`color4` = []
    v.`color4`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`color4`.append(try r.integer(UInt8.self))
    }
    let count5 = 3
    v.`color5` = []
    v.`color5`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`color5`.append(try r.integer(UInt8.self))
    }
    let count6 = 3
    v.`color6` = []
    v.`color6`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`color6`.append(try r.integer(UInt8.self))
    }
    let count7 = 3
    v.`color7` = []
    v.`color7`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`color7`.append(try r.integer(UInt8.self))
    }
    let count8 = 3
    v.`color8` = []
    v.`color8`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`color8`.append(try r.integer(UInt8.self))
    }
    let count9 = 3
    v.`color9` = []
    v.`color9`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`color9`.append(try r.integer(UInt8.self))
    }
    let count10 = 3
    v.`color10` = []
    v.`color10`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`color10`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsSetLEDModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_792d4cf8c31848b18b099b702a18d7a1857a0e336209e8120442eef129f0e021"
  public static let nativeType = "kuavo_msgs/SetLEDModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetLEDModeResponse {
    var v = Ros1Kuavo_msgsSetLEDModeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsSetLEDMode_freeRequest: Canonical {
  public static let maximumWireBytes = 29
  public static let codecIdentity =
    "UWVMROS1_16286964780da8498ef4c346122661059d938f61d807104a3ecc35fd429a3673"
  public static let nativeType = "kuavo_msgs/SetLEDMode_freeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: UInt8 = 0
  public var `colors`: [Ros1Kuavo_msgsColor] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    guard self.`colors`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`colors`.count))
    for e in self.`colors` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetLEDMode_freeRequest {
    var v = Ros1Kuavo_msgsSetLEDMode_freeRequest()
    v.`mode` = try r.integer(UInt8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`colors` = []
    v.`colors`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`colors`.append(try Ros1Kuavo_msgsColor.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsSetLEDMode_freeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_59f0736941d470331164916bca40d5c2e754acd265d1e11f22c4bd8591c46d9d"
  public static let nativeType = "kuavo_msgs/SetLEDMode_freeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetLEDMode_freeResponse
  {
    var v = Ros1Kuavo_msgsSetLEDMode_freeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsSetStringRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_222cac7fb8a01062ca8ef2d97c78c9d352669afa43549c08deae8bc62829c809"
  public static let nativeType = "kuavo_msgs/SetStringRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetStringRequest {
    var v = Ros1Kuavo_msgsSetStringRequest()
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetStringResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_8e7f36fbf5eaef32581f8f0fcf8b0eb32a04a2318547b2519e44cc2c8eb603bc"
  public static let nativeType = "kuavo_msgs/SetStringResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetStringResponse {
    var v = Ros1Kuavo_msgsSetStringResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSkeletonFrame: Canonical {
  public static let maximumWireBytes = 2804
  public static let codecIdentity =
    "UWVMROS1_1a45a890aaf5a44863418ea10536105b44cb69f08e5e54e79d27778498cefd38"
  public static let nativeType = "kuavo_msgs/SkeletonFrame"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `rigid_bodies`: [Ros1Kuavo_msgsRigidBodyFrame] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`rigid_bodies`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`rigid_bodies`.count))
    for e in self.`rigid_bodies` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSkeletonFrame {
    var v = Ros1Kuavo_msgsSkeletonFrame()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`rigid_bodies` = []
    v.`rigid_bodies`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`rigid_bodies`.append(try Ros1Kuavo_msgsRigidBodyFrame.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsSpeechSynthesisRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_4a354e2acfce1efec18e5624ed6b17b1d432239ffd8e61d86cdea9effbef62be"
  public static let nativeType = "kuavo_msgs/SpeechSynthesisRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: String = ""
  public var `volume`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 256)
    try w.float32(self.`volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSpeechSynthesisRequest {
    var v = Ros1Kuavo_msgsSpeechSynthesisRequest()
    v.`data` = try r.string(bound: 256)
    v.`volume` = try r.float32()
    return v
  }
}
public struct Ros1Kuavo_msgsSpeechSynthesisResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ffbd8b7182b1d37b18770b35913ba1c9712c40072a7e03f7a8db7a8dc0eec6e0"
  public static let nativeType = "kuavo_msgs/SpeechSynthesisResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSpeechSynthesisResponse
  {
    var v = Ros1Kuavo_msgsSpeechSynthesisResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsTFArray: Canonical {
  public static let maximumWireBytes = 4708
  public static let codecIdentity =
    "UWVMROS1_8991804f6d4ead4842bd099dd017712251be3480fbeefa5e748a388c6d008cf8"
  public static let nativeType = "kuavo_msgs/TFArray"
  public static let nativeIdentity: String? = nil
  public var `transforms`: [Ros1Geometry_msgsTransformStamped] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`transforms`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`transforms`.count))
    for e in self.`transforms` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTFArray {
    var v = Ros1Kuavo_msgsTFArray()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`transforms` = []
    v.`transforms`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transforms`.append(try Ros1Geometry_msgsTransformStamped.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsTaskPoint: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_49f32513d8c17cbb9c573a3126ee71fbab248c81cb89a13b534c67d2316ec0e8"
  public static let nativeType = "kuavo_msgs/TaskPoint"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTaskPoint {
    var v = Ros1Kuavo_msgsTaskPoint()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsTaskPointOperationRequest: Canonical {
  public static let maximumWireBytes = 578
  public static let codecIdentity =
    "UWVMROS1_307c9ed6bd9199b93976bf8fa8a7c7d6ebb86721dc5210a0aa6a3790a020f8f2"
  public static let nativeType = "kuavo_msgs/TaskPointOperationRequest"
  public static let nativeIdentity: String? = nil
  public static let `ADD`: Int8 = 0
  public static let `UPDATE`: Int8 = 1
  public static let `DELETE`: Int8 = 2
  public static let `GET`: Int8 = 3
  public var `operation`: Int8 = 0
  public var `task_point`: Ros1Kuavo_msgsTaskPoint = Ros1Kuavo_msgsTaskPoint()
  public var `name`: String = ""
  public var `use_robot_current_pose`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`operation`)
    try self.`task_point`.write(to: &w)
    try w.string(self.`name`, bound: 256)
    try w.boolean(self.`use_robot_current_pose`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTaskPointOperationRequest
  {
    var v = Ros1Kuavo_msgsTaskPointOperationRequest()
    v.`operation` = try r.integer(Int8.self)
    v.`task_point` = try Ros1Kuavo_msgsTaskPoint.read(from: &r)
    v.`name` = try r.string(bound: 256)
    v.`use_robot_current_pose` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsTaskPointOperationResponse: Canonical {
  public static let maximumWireBytes = 2793
  public static let codecIdentity =
    "UWVMROS1_f17745859e589241fa538fc31355d64c73274003fc08e87142890ca30b22cafd"
  public static let nativeType = "kuavo_msgs/TaskPointOperationResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `task_points`: [Ros1Kuavo_msgsTaskPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`task_points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`task_points`.count))
    for e in self.`task_points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTaskPointOperationResponse
  {
    var v = Ros1Kuavo_msgsTaskPointOperationResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`task_points` = []
    v.`task_points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`task_points`.append(try Ros1Kuavo_msgsTaskPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsTransportModeCommandRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b626f3c4a1222157a7b263f429301abb78c41d0af9be0e3ca473cccf323db097"
  public static let nativeType = "kuavo_msgs/TransportModeCommandRequest"
  public static let nativeIdentity: String? = nil
  public static let `TRANSPORT_ENTER`: UInt8 = 1
  public static let `TRANSPORT_LOCK`: UInt8 = 2
  public static let `TRANSPORT_EXIT`: UInt8 = 3
  public static let `TRANSPORT_FALL_DOWN`: UInt8 = 4
  public static let `TRANSPORT_HAND_OVER`: UInt8 = 5
  public var `command`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`command`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTransportModeCommandRequest
  {
    var v = Ros1Kuavo_msgsTransportModeCommandRequest()
    v.`command` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsTransportModeCommandResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_96c0b7dbf0adfb165b556d79a5e9a9aa4e65806f7ffbde344c23fb315066a647"
  public static let nativeType = "kuavo_msgs/TransportModeCommandResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTransportModeCommandResponse
  {
    var v = Ros1Kuavo_msgsTransportModeCommandResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsVMPTrajectoryState: Canonical {
  public static let maximumWireBytes = 549
  public static let codecIdentity =
    "UWVMROS1_03c1486b58284a85164ac80fb470fa2d76637c85cc97db06ee9b19f258c7ed10"
  public static let nativeType = "kuavo_msgs/VMPTrajectoryState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `current_index`: Int32 = 0
  public var `current_name`: String = ""
  public var `current_frame`: Int32 = 0
  public var `total_frames`: Int32 = 0
  public var `progress`: Float = 0
  public var `completed`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`current_index`)
    try w.string(self.`current_name`, bound: 256)
    try w.integer(self.`current_frame`)
    try w.integer(self.`total_frames`)
    try w.float32(self.`progress`)
    try w.boolean(self.`completed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsVMPTrajectoryState {
    var v = Ros1Kuavo_msgsVMPTrajectoryState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`current_index` = try r.integer(Int32.self)
    v.`current_name` = try r.string(bound: 256)
    v.`current_frame` = try r.integer(Int32.self)
    v.`total_frames` = try r.integer(Int32.self)
    v.`progress` = try r.float32()
    v.`completed` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsAccessIkSolveRequest: Canonical {
  public static let maximumWireBytes = 79
  public static let codecIdentity =
    "UWVMROS1_4607c77f5557492cd69d42b8822746d00b6199f0cf14bd0753156159ace7c274"
  public static let nativeType = "kuavo_msgs/accessIkSolveRequest"
  public static let nativeIdentity: String? = nil
  public var `totalTimeDesired`: Double = 0
  public var `maxAttempts`: Int32 = 0
  public var `linearErrorMax`: Double = 0
  public var `angularErrorMax`: Double = 0
  public var `poseDesired`: [Double] = Array(repeating: 0, count: 6)
  public var `isLocal`: Bool = false
  public var `isLeft`: Bool = false
  public var `isWholeBody`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`totalTimeDesired`)
    try w.integer(self.`maxAttempts`)
    try w.float64(self.`linearErrorMax`)
    try w.float64(self.`angularErrorMax`)
    guard self.`poseDesired`.count == 6 else { throw RosError(22) }
    for e in self.`poseDesired` {
      try w.float64(e)
    }
    try w.boolean(self.`isLocal`)
    try w.boolean(self.`isLeft`)
    try w.boolean(self.`isWholeBody`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAccessIkSolveRequest {
    var v = Ros1Kuavo_msgsAccessIkSolveRequest()
    v.`totalTimeDesired` = try r.float64()
    v.`maxAttempts` = try r.integer(Int32.self)
    v.`linearErrorMax` = try r.float64()
    v.`angularErrorMax` = try r.float64()
    let count4 = 6
    v.`poseDesired` = []
    v.`poseDesired`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`poseDesired`.append(try r.float64())
    }
    v.`isLocal` = try r.boolean()
    v.`isLeft` = try r.boolean()
    v.`isWholeBody` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsAccessIkSolveResponse: Canonical {
  public static let maximumWireBytes = 298
  public static let codecIdentity =
    "UWVMROS1_f572b8681cceb266e69c70a3e8a1b463fdfc280bc07f89318982ec3703f97863"
  public static let nativeType = "kuavo_msgs/accessIkSolveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `bestLinearError`: Double = 0
  public var `bestAngularError`: Double = 0
  public var `qBest`: [Double] = []
  public var `posPriorityAccess`: Bool = false
  public var `posPriorityLinearError`: Double = 0
  public var `posPriorityAngularError`: Double = 0
  public var `qPosPriorityBest`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.float64(self.`bestLinearError`)
    try w.float64(self.`bestAngularError`)
    guard self.`qBest`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`qBest`.count))
    for e in self.`qBest` {
      try w.float64(e)
    }
    try w.boolean(self.`posPriorityAccess`)
    try w.float64(self.`posPriorityLinearError`)
    try w.float64(self.`posPriorityAngularError`)
    guard self.`qPosPriorityBest`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`qPosPriorityBest`.count))
    for e in self.`qPosPriorityBest` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAccessIkSolveResponse {
    var v = Ros1Kuavo_msgsAccessIkSolveResponse()
    v.`success` = try r.boolean()
    v.`bestLinearError` = try r.float64()
    v.`bestAngularError` = try r.float64()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`qBest` = []
    v.`qBest`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`qBest`.append(try r.float64())
    }
    v.`posPriorityAccess` = try r.boolean()
    v.`posPriorityLinearError` = try r.float64()
    v.`posPriorityAngularError` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`qPosPriorityBest` = []
    v.`qPosPriorityBest`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`qPosPriorityBest`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsAdjustZeroPointRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_e1ad07f586e81db4a1e56f059c7f56169505da3f26d67f198d20c24ac94ea4a5"
  public static let nativeType = "kuavo_msgs/adjustZeroPointRequest"
  public static let nativeIdentity: String? = nil
  public var `motor_index`: Int32 = 0
  public var `offset`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`motor_index`)
    try w.float64(self.`offset`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAdjustZeroPointRequest {
    var v = Ros1Kuavo_msgsAdjustZeroPointRequest()
    v.`motor_index` = try r.integer(Int32.self)
    v.`offset` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsAdjustZeroPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_311c7110e229c8fb310d73f70ec7fdfeabd8facea00fa2ab7292e6782455f695"
  public static let nativeType = "kuavo_msgs/adjustZeroPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsAdjustZeroPointResponse
  {
    var v = Ros1Kuavo_msgsAdjustZeroPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsArmCollisionCheckInfo: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_cfee93819aff05b3584b5102dd724c6b67e9fd3b33037918b0dd8682eabfce71"
  public static let nativeType = "kuavo_msgs/armCollisionCheckInfo"
  public static let nativeIdentity: String? = nil
  public var `link1_name`: String = ""
  public var `link2_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`link1_name`, bound: 256)
    try w.string(self.`link2_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsArmCollisionCheckInfo {
    var v = Ros1Kuavo_msgsArmCollisionCheckInfo()
    v.`link1_name` = try r.string(bound: 256)
    v.`link2_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsArmHandPose: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_728d735e83430f1eb64f24f126a24296e9efb3aff0bfea40ecfe5fe0ba8fe9f6"
  public static let nativeType = "kuavo_msgs/armHandPose"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsArmHandPose {
    var v = Ros1Kuavo_msgsArmHandPose()
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
public struct Ros1Kuavo_msgsArmHandPoseFree: Canonical {
  public static let maximumWireBytes = 212
  public static let codecIdentity =
    "UWVMROS1_59dd0e669158a32f2b312c00a6bc696012bcbb67970b611a6a6559929c02adb4"
  public static let nativeType = "kuavo_msgs/armHandPoseFree"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsArmHandPoseFree {
    var v = Ros1Kuavo_msgsArmHandPoseFree()
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
public struct Ros1Kuavo_msgsArmPoseWithTimeStamp: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_6a20a74d62ff2c106e9e9b1a15fc853135d5a1bb1a0b28b1f3ebae466e15771f"
  public static let nativeType = "kuavo_msgs/armPoseWithTimeStamp"
  public static let nativeIdentity: String? = nil
  public var `offset`: Int32 = 0
  public var `left_hand_pose`: [Double] = []
  public var `right_hand_pose`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`offset`)
    guard self.`left_hand_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_hand_pose`.count))
    for e in self.`left_hand_pose` {
      try w.float64(e)
    }
    guard self.`right_hand_pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_hand_pose`.count))
    for e in self.`right_hand_pose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsArmPoseWithTimeStamp {
    var v = Ros1Kuavo_msgsArmPoseWithTimeStamp()
    v.`offset` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_hand_pose` = []
    v.`left_hand_pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_hand_pose`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_hand_pose` = []
    v.`right_hand_pose`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_hand_pose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsArmTargetPoses: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_7ba1e04215842b08433ad7c6aaf980f4cf9142ef4e6cd1a94047888df822239f"
  public static let nativeType = "kuavo_msgs/armTargetPoses"
  public static let nativeIdentity: String? = nil
  public var `times`: [Double] = []
  public var `values`: [Double] = []
  public var `frame`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`times`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`times`.count))
    for e in self.`times` {
      try w.float64(e)
    }
    guard self.`values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
    try w.integer(self.`frame`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsArmTargetPoses {
    var v = Ros1Kuavo_msgsArmTargetPoses()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`times` = []
    v.`times`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`times`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`values` = []
    v.`values`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`values`.append(try r.float64())
    }
    v.`frame` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsBezierCurveCubicPoint: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_aed931f10d3d77a315befaf89bc33a3e8d39ec8081abde5f9f58b60c20e5c856"
  public static let nativeType = "kuavo_msgs/bezierCurveCubicPoint"
  public static let nativeIdentity: String? = nil
  public var `end_point`: [Double] = []
  public var `left_control_point`: [Double] = []
  public var `right_control_point`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`end_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`end_point`.count))
    for e in self.`end_point` {
      try w.float64(e)
    }
    guard self.`left_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_control_point`.count))
    for e in self.`left_control_point` {
      try w.float64(e)
    }
    guard self.`right_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_control_point`.count))
    for e in self.`right_control_point` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsBezierCurveCubicPoint {
    var v = Ros1Kuavo_msgsBezierCurveCubicPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`end_point` = []
    v.`end_point`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`end_point`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_control_point` = []
    v.`left_control_point`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_control_point`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_control_point` = []
    v.`right_control_point`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_control_point`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsChangeArmCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b068af7cea2b555967cc7c813996902cf68737cfd01dd82ad02500871f3a02bb"
  public static let nativeType = "kuavo_msgs/changeArmCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public static let `ik_ultra_fast_mode`: Int32 = 3
  public var `control_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsChangeArmCtrlModeRequest
  {
    var v = Ros1Kuavo_msgsChangeArmCtrlModeRequest()
    v.`control_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeArmCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_c6366fe001000894badf0bed6114d880710ebbb07958b2b95bec730b69bbd5c4"
  public static let nativeType = "kuavo_msgs/changeArmCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `mode`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.integer(self.`mode`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeArmCtrlModeResponse
  {
    var v = Ros1Kuavo_msgsChangeArmCtrlModeResponse()
    v.`result` = try r.boolean()
    v.`mode` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5a91ebca645d32d8c23e688042703cad59b3deba3930db3a0f2ff701b4f6e4f3"
  public static let nativeType = "kuavo_msgs/changeArmCtrlModeKuavoRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest
  {
    var v = Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest()
    v.`control_mode` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f5f5d8cba542d051c114c197040f0e2624f681a5b3ff92b02db70e1ade4331b1"
  public static let nativeType = "kuavo_msgs/changeArmCtrlModeKuavoResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse
  {
    var v = Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7bcfd6319a75a54a2772176b8a39313bb2e9a345b7561ae5649578bea0146f76"
  public static let nativeType = "kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `obsUpdateMode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`obsUpdateMode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest
  {
    var v = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest()
    v.`obsUpdateMode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b7f5b92bdf7ff99aaddfa2d391b5e5e65df46d21c47088ee223a88a8e5a28e9f"
  public static let nativeType = "kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse
  {
    var v = Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeLbQuickModeSrvRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_aedd6e1c52452ec88114a791b978b05876f5611e27b080055950bebf4f74e56e"
  public static let nativeType = "kuavo_msgs/changeLbQuickModeSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `quickMode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`quickMode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeLbQuickModeSrvRequest
  {
    var v = Ros1Kuavo_msgsChangeLbQuickModeSrvRequest()
    v.`quickMode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeLbQuickModeSrvResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_162770ec0ef48a2419d382c39ec6833e4de8eca9af4cae6698a3e79cbd401996"
  public static let nativeType = "kuavo_msgs/changeLbQuickModeSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeLbQuickModeSrvResponse
  {
    var v = Ros1Kuavo_msgsChangeLbQuickModeSrvResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsMotorParam: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_dc3c55c0faab62a473cc5afd1e697c9dac64857fe83d4b186619ce37db0fb2fd"
  public static let nativeType = "kuavo_msgs/motorParam"
  public static let nativeIdentity: String? = nil
  public var `Kp`: Float = 0
  public var `Kd`: Float = 0
  public var `id`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`Kp`)
    try w.float32(self.`Kd`)
    try w.integer(self.`id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMotorParam {
    var v = Ros1Kuavo_msgsMotorParam()
    v.`Kp` = try r.float32()
    v.`Kd` = try r.float32()
    v.`id` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeMotorParamRequest: Canonical {
  public static let maximumWireBytes = 84
  public static let codecIdentity =
    "UWVMROS1_27d517f878651ae667e92811351b74016389f86b29b6b41c9769ba2c3678b8c4"
  public static let nativeType = "kuavo_msgs/changeMotorParamRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: [Ros1Kuavo_msgsMotorParam] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsChangeMotorParamRequest
  {
    var v = Ros1Kuavo_msgsChangeMotorParamRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros1Kuavo_msgsMotorParam.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsChangeMotorParamResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b4140350dff17ffd2f64bd04f25a0be06c4da10e817f90ce96b8c39db6465cfb"
  public static let nativeType = "kuavo_msgs/changeMotorParamResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsChangeMotorParamResponse
  {
    var v = Ros1Kuavo_msgsChangeMotorParamResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeTorsoCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f9c72da54ebb0db0f523c4b72c5b5854e9775a9432dc27f1c06cb8bca4ca952d"
  public static let nativeType = "kuavo_msgs/changeTorsoCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeTorsoCtrlModeRequest
  {
    var v = Ros1Kuavo_msgsChangeTorsoCtrlModeRequest()
    v.`control_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeTorsoCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_e1065686a1571d4d8866f2bd17f626c7e8e2cba9db8200d649d6ea070fd8367a"
  public static let nativeType = "kuavo_msgs/changeTorsoCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `mode`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.integer(self.`mode`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeTorsoCtrlModeResponse
  {
    var v = Ros1Kuavo_msgsChangeTorsoCtrlModeResponse()
    v.`result` = try r.boolean()
    v.`mode` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeWaistCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bc255f9b1f8b583419684d6751413b5625c59e6722aa08a938939b3910a16e7b"
  public static let nativeType = "kuavo_msgs/changeWaistCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeWaistCtrlModeRequest
  {
    var v = Ros1Kuavo_msgsChangeWaistCtrlModeRequest()
    v.`control_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsChangeWaistCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_eebe8a6b6928b85aa34c68e0b3aef0f56f6ae141b3dd2f05152f3c0cb4362913"
  public static let nativeType = "kuavo_msgs/changeWaistCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `mode`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.integer(self.`mode`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChangeWaistCtrlModeResponse
  {
    var v = Ros1Kuavo_msgsChangeWaistCtrlModeResponse()
    v.`result` = try r.boolean()
    v.`mode` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsChassisPoseCmdSrvRequest: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_8bb38989ec0533d11cd98d7182ebfaf1d1c5c9a0e59314fee2a0a8cc1cf4d99f"
  public static let nativeType = "kuavo_msgs/chassisPoseCmdSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `target_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `duration`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_pose`.write(to: &w)
    guard self.`duration`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`duration`.count))
    for e in self.`duration` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsChassisPoseCmdSrvRequest
  {
    var v = Ros1Kuavo_msgsChassisPoseCmdSrvRequest()
    v.`target_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`duration` = []
    v.`duration`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`duration`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsChassisPoseCmdSrvResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d8ced0167e8370bd833499b343be634636560003755db904855a70515862e737"
  public static let nativeType = "kuavo_msgs/chassisPoseCmdSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsChassisPoseCmdSrvResponse
  {
    var v = Ros1Kuavo_msgsChassisPoseCmdSrvResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsEndEffectorData: Canonical {
  public static let maximumWireBytes = 4560
  public static let codecIdentity =
    "UWVMROS1_e984b3281bf8be9337ef4508f3499f8fe12d55fb292b85b106cbffef4f34d720"
  public static let nativeType = "kuavo_msgs/endEffectorData"
  public static let nativeIdentity: String? = nil
  public var `name`: [String] = []
  public var `position`: [Double] = []
  public var `velocity`: [Double] = []
  public var `effort`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`name`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 256)
    }
    guard self.`position`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsEndEffectorData {
    var v = Ros1Kuavo_msgsEndEffectorData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`name` = []
    v.`name`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`name`.append(try r.string(bound: 256))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position` = []
    v.`position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsControlLejuClawRequest: Canonical {
  public static let maximumWireBytes = 4560
  public static let codecIdentity =
    "UWVMROS1_881440ff46cfe5876525a730cbff55b70f2b00e2c6c0d0539640629ea064f37d"
  public static let nativeType = "kuavo_msgs/controlLejuClawRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: Ros1Kuavo_msgsEndEffectorData = Ros1Kuavo_msgsEndEffectorData()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsControlLejuClawRequest {
    var v = Ros1Kuavo_msgsControlLejuClawRequest()
    v.`data` = try Ros1Kuavo_msgsEndEffectorData.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsControlLejuClawResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1c41adab23cdf564273b166e287aba08d4ef3b25aec4260773931a456293acaf"
  public static let nativeType = "kuavo_msgs/controlLejuClawResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsControlLejuClawResponse
  {
    var v = Ros1Kuavo_msgsControlLejuClawResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsDexhandCommand: Canonical {
  public static let maximumWireBytes = 309
  public static let codecIdentity =
    "UWVMROS1_9800aeab62a5a0038869601935b796f17c761ca091196d3a2fe1f236ecac55e3"
  public static let nativeType = "kuavo_msgs/dexhandCommand"
  public static let nativeIdentity: String? = nil
  public static let `POSITION_CONTROL`: Int8 = 0
  public static let `VELOCITY_CONTROL`: Int8 = 1
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `control_mode`: Int8 = 0
  public var `data`: [Int16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`control_mode`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsDexhandCommand {
    var v = Ros1Kuavo_msgsDexhandCommand()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`control_mode` = try r.integer(Int8.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(Int16.self))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsTouchSensorStatus: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_ea916c62624747f95aee5134d578ca26f635f8d5b2661395d50ea1e9080af2fc"
  public static let nativeType = "kuavo_msgs/touchSensorStatus"
  public static let nativeIdentity: String? = nil
  public var `normal_force1`: UInt16 = 0
  public var `normal_force2`: UInt16 = 0
  public var `normal_force3`: UInt16 = 0
  public var `tangential_force1`: UInt16 = 0
  public var `tangential_force2`: UInt16 = 0
  public var `tangential_force3`: UInt16 = 0
  public var `tangential_direction1`: UInt16 = 0
  public var `tangential_direction2`: UInt16 = 0
  public var `tangential_direction3`: UInt16 = 0
  public var `self_proximity1`: UInt32 = 0
  public var `self_proximity2`: UInt32 = 0
  public var `mutual_proximity`: UInt32 = 0
  public var `status`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`normal_force1`)
    try w.integer(self.`normal_force2`)
    try w.integer(self.`normal_force3`)
    try w.integer(self.`tangential_force1`)
    try w.integer(self.`tangential_force2`)
    try w.integer(self.`tangential_force3`)
    try w.integer(self.`tangential_direction1`)
    try w.integer(self.`tangential_direction2`)
    try w.integer(self.`tangential_direction3`)
    try w.integer(self.`self_proximity1`)
    try w.integer(self.`self_proximity2`)
    try w.integer(self.`mutual_proximity`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTouchSensorStatus {
    var v = Ros1Kuavo_msgsTouchSensorStatus()
    v.`normal_force1` = try r.integer(UInt16.self)
    v.`normal_force2` = try r.integer(UInt16.self)
    v.`normal_force3` = try r.integer(UInt16.self)
    v.`tangential_force1` = try r.integer(UInt16.self)
    v.`tangential_force2` = try r.integer(UInt16.self)
    v.`tangential_force3` = try r.integer(UInt16.self)
    v.`tangential_direction1` = try r.integer(UInt16.self)
    v.`tangential_direction2` = try r.integer(UInt16.self)
    v.`tangential_direction3` = try r.integer(UInt16.self)
    v.`self_proximity1` = try r.integer(UInt32.self)
    v.`self_proximity2` = try r.integer(UInt32.self)
    v.`mutual_proximity` = try r.integer(UInt32.self)
    v.`status` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Kuavo_msgsDexhandTouchState: Canonical {
  public static let maximumWireBytes = 592
  public static let codecIdentity =
    "UWVMROS1_03a697286c716d6093b4f8d3502dbf7b09936d64928dfbaa8811b17549b01033"
  public static let nativeType = "kuavo_msgs/dexhandTouchState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_hand`: [Ros1Kuavo_msgsTouchSensorStatus] = Array(
    repeating: Ros1Kuavo_msgsTouchSensorStatus(), count: 5)
  public var `right_hand`: [Ros1Kuavo_msgsTouchSensorStatus] = Array(
    repeating: Ros1Kuavo_msgsTouchSensorStatus(), count: 5)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`left_hand`.count == 5 else { throw RosError(22) }
    for e in self.`left_hand` {
      try e.write(to: &w)
    }
    guard self.`right_hand`.count == 5 else { throw RosError(22) }
    for e in self.`right_hand` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsDexhandTouchState {
    var v = Ros1Kuavo_msgsDexhandTouchState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let count1 = 5
    v.`left_hand` = []
    v.`left_hand`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_hand`.append(try Ros1Kuavo_msgsTouchSensorStatus.read(from: &r))
    }
    let count2 = 5
    v.`right_hand` = []
    v.`right_hand`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_hand`.append(try Ros1Kuavo_msgsTouchSensorStatus.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsEePoseReachErrorRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1111a59887022419cd8a989840be446b679342e5a876236fe39af3a604234c04"
  public static let nativeType = "kuavo_msgs/eePoseReachErrorRequest"
  public static let nativeIdentity: String? = nil
  public var `isLeft`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isLeft`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsEePoseReachErrorRequest
  {
    var v = Ros1Kuavo_msgsEePoseReachErrorRequest()
    v.`isLeft` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsEePoseReachErrorResponse: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_0293d17ba1a37f2baf5703bb59629827c923d504d10852a3c2e1e2f24b888cd0"
  public static let nativeType = "kuavo_msgs/eePoseReachErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `errVector`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    guard self.`errVector`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`errVector`.count))
    for e in self.`errVector` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsEePoseReachErrorResponse
  {
    var v = Ros1Kuavo_msgsEePoseReachErrorResponse()
    v.`success` = try r.boolean()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`errVector` = []
    v.`errVector`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`errVector`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsEnableHandTouchSensorRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7492603694aed3482d3930e90339de6d809a04249b1df0d4d5effe2f7bde78fa"
  public static let nativeType = "kuavo_msgs/enableHandTouchSensorRequest"
  public static let nativeIdentity: String? = nil
  public static let `THUMB_SENSOR`: UInt8 = 1
  public static let `INDEX_SENSOR`: UInt8 = 2
  public static let `MIDDLE_SENSOR`: UInt8 = 4
  public static let `RING_SENSOR`: UInt8 = 8
  public static let `PINKY_SENSOR`: UInt8 = 16
  public var `mask`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mask`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsEnableHandTouchSensorRequest
  {
    var v = Ros1Kuavo_msgsEnableHandTouchSensorRequest()
    v.`mask` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsEnableHandTouchSensorResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_d523a7299d823eaf2a97c34ec02b353cbc1806c92e9452aa3221fb605659e0b6"
  public static let nativeType = "kuavo_msgs/enableHandTouchSensorResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsEnableHandTouchSensorResponse
  {
    var v = Ros1Kuavo_msgsEnableHandTouchSensorResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsFkSrvRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_5e1b8d650b88005066b97a2be990ef2d2c5c3e38cbb629b8d204d51595981e76"
  public static let nativeType = "kuavo_msgs/fkSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `q`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`q`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q`.count))
    for e in self.`q` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFkSrvRequest {
    var v = Ros1Kuavo_msgsFkSrvRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`q` = []
    v.`q`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`q`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPose: Canonical {
  public static let maximumWireBytes = 544
  public static let codecIdentity =
    "UWVMROS1_b75626d0314b13bb772c5813ff909de276b1069059a68e424d69bd3c8b524883"
  public static let nativeType = "kuavo_msgs/twoArmHandPose"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_pose`: Ros1Kuavo_msgsArmHandPose = Ros1Kuavo_msgsArmHandPose()
  public var `right_pose`: Ros1Kuavo_msgsArmHandPose = Ros1Kuavo_msgsArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTwoArmHandPose {
    var v = Ros1Kuavo_msgsTwoArmHandPose()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`left_pose` = try Ros1Kuavo_msgsArmHandPose.read(from: &r)
    v.`right_pose` = try Ros1Kuavo_msgsArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFkSrvResponse: Canonical {
  public static let maximumWireBytes = 545
  public static let codecIdentity =
    "UWVMROS1_4e8e29636dd04a2d166285fade3bbee860743da319fe26ce2504a0f3b713f102"
  public static let nativeType = "kuavo_msgs/fkSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPose = Ros1Kuavo_msgsTwoArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try self.`hand_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFkSrvResponse {
    var v = Ros1Kuavo_msgsFkSrvResponse()
    v.`success` = try r.boolean()
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFkSrvWithReferFrameRequest: Canonical {
  public static let maximumWireBytes = 656
  public static let codecIdentity =
    "UWVMROS1_f6bf6c9af634743b2e8404ab3b301b024fd9177b0195f11f463073205362639c"
  public static let nativeType = "kuavo_msgs/fkSrvWithReferFrameRequest"
  public static let nativeIdentity: String? = nil
  public var `q`: [Double] = []
  public var `base_frame`: String = ""
  public var `end_effector_frame`: String = ""
  public var `hand_side`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`q`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q`.count))
    for e in self.`q` {
      try w.float64(e)
    }
    try w.string(self.`base_frame`, bound: 256)
    try w.string(self.`end_effector_frame`, bound: 256)
    try w.integer(self.`hand_side`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFkSrvWithReferFrameRequest
  {
    var v = Ros1Kuavo_msgsFkSrvWithReferFrameRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`q` = []
    v.`q`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`q`.append(try r.float64())
    }
    v.`base_frame` = try r.string(bound: 256)
    v.`end_effector_frame` = try r.string(bound: 256)
    v.`hand_side` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsFkSrvWithReferFrameResponse: Canonical {
  public static let maximumWireBytes = 805
  public static let codecIdentity =
    "UWVMROS1_bfa3ab88799783d624991e303b427aef719f6a5ba1eee19bb7248e7d36d85815"
  public static let nativeType = "kuavo_msgs/fkSrvWithReferFrameResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `error_message`: String = ""
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPose = Ros1Kuavo_msgsTwoArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error_message`, bound: 256)
    try self.`hand_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFkSrvWithReferFrameResponse
  {
    var v = Ros1Kuavo_msgsFkSrvWithReferFrameResponse()
    v.`success` = try r.boolean()
    v.`error_message` = try r.string(bound: 256)
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFootPose: Canonical {
  public static let maximumWireBytes = 64
  public static let codecIdentity =
    "UWVMROS1_1dc43938a13dbe26a59007ec003aff5038173178b97cb2e3ff0d795345bac14f"
  public static let nativeType = "kuavo_msgs/footPose"
  public static let nativeIdentity: String? = nil
  public var `footPose`: [Double] = Array(repeating: 0, count: 4)
  public var `torsoPose`: [Double] = Array(repeating: 0, count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`footPose`.count == 4 else { throw RosError(22) }
    for e in self.`footPose` {
      try w.float64(e)
    }
    guard self.`torsoPose`.count == 4 else { throw RosError(22) }
    for e in self.`torsoPose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPose {
    var v = Ros1Kuavo_msgsFootPose()
    let count0 = 4
    v.`footPose` = []
    v.`footPose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`footPose`.append(try r.float64())
    }
    let count1 = 4
    v.`torsoPose` = []
    v.`torsoPose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`torsoPose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPose6D: Canonical {
  public static let maximumWireBytes = 96
  public static let codecIdentity =
    "UWVMROS1_4034cc908006c3541786b162c806a1b49e49598fda96bb68f76a060a3c48f0b9"
  public static let nativeType = "kuavo_msgs/footPose6D"
  public static let nativeIdentity: String? = nil
  public var `footPose6D`: [Double] = Array(repeating: 0, count: 6)
  public var `torsoPose6D`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`footPose6D`.count == 6 else { throw RosError(22) }
    for e in self.`footPose6D` {
      try w.float64(e)
    }
    guard self.`torsoPose6D`.count == 6 else { throw RosError(22) }
    for e in self.`torsoPose6D` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPose6D {
    var v = Ros1Kuavo_msgsFootPose6D()
    let count0 = 6
    v.`footPose6D` = []
    v.`footPose6D`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`footPose6D`.append(try r.float64())
    }
    let count1 = 6
    v.`torsoPose6D` = []
    v.`torsoPose6D`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`torsoPose6D`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoses6D: Canonical {
  public static let maximumWireBytes = 772
  public static let codecIdentity =
    "UWVMROS1_2bfbb2b401ca234254f356cf8e261cc9a43faadf7fcf16dd21775706f2925052"
  public static let nativeType = "kuavo_msgs/footPoses6D"
  public static let nativeIdentity: String? = nil
  public var `data`: [Ros1Kuavo_msgsFootPose6D] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPoses6D {
    var v = Ros1Kuavo_msgsFootPoses6D()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros1Kuavo_msgsFootPose6D.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPose6DTargetTrajectories: Canonical {
  public static let maximumWireBytes = 7292
  public static let codecIdentity =
    "UWVMROS1_c69e87081e6d953188281e1f53fbef5e25c049901827313c84e2718b97ce385e"
  public static let nativeType = "kuavo_msgs/footPose6DTargetTrajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `footIndexTrajectory`: [Int32] = []
  public var `footPoseTrajectory`: [Ros1Kuavo_msgsFootPose6D] = []
  public var `additionalFootPoseTrajectory`: [Ros1Kuavo_msgsFootPoses6D] = []
  public var `swingHeightTrajectory`: [Double] = []
  public var `insertTime`: Double = 0
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
    guard self.`footPoseTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`footPoseTrajectory`.count))
    for e in self.`footPoseTrajectory` {
      try e.write(to: &w)
    }
    guard self.`additionalFootPoseTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`additionalFootPoseTrajectory`.count))
    for e in self.`additionalFootPoseTrajectory` {
      try e.write(to: &w)
    }
    guard self.`swingHeightTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`swingHeightTrajectory`.count))
    for e in self.`swingHeightTrajectory` {
      try w.float64(e)
    }
    try w.float64(self.`insertTime`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPose6DTargetTrajectories
  {
    var v = Ros1Kuavo_msgsFootPose6DTargetTrajectories()
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
    v.`footPoseTrajectory` = []
    v.`footPoseTrajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`footPoseTrajectory`.append(try Ros1Kuavo_msgsFootPose6D.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`additionalFootPoseTrajectory` = []
    v.`additionalFootPoseTrajectory`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`additionalFootPoseTrajectory`.append(try Ros1Kuavo_msgsFootPoses6D.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`swingHeightTrajectory` = []
    v.`swingHeightTrajectory`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`swingHeightTrajectory`.append(try r.float64())
    }
    v.`insertTime` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest: Canonical {
  public static let maximumWireBytes = 7292
  public static let codecIdentity =
    "UWVMROS1_b702239b1be77367a9504b076cfcface3ecb76be696c5a0d079e237c0c1ba93d"
  public static let nativeType = "kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `foot_pose_target_trajectories`: Ros1Kuavo_msgsFootPose6DTargetTrajectories =
    Ros1Kuavo_msgsFootPose6DTargetTrajectories()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`foot_pose_target_trajectories`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest
  {
    var v = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest()
    v.`foot_pose_target_trajectories` = try Ros1Kuavo_msgsFootPose6DTargetTrajectories.read(
      from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b2c4ca80226f02e81ed6c2769481f61923f82d647e7c2e675a93a841df374b78"
  public static let nativeType = "kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse
  {
    var v = Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoses: Canonical {
  public static let maximumWireBytes = 516
  public static let codecIdentity =
    "UWVMROS1_216a16a93492de300186e7d08b26ab98ecab699e7141ccc733358773798bcc55"
  public static let nativeType = "kuavo_msgs/footPoses"
  public static let nativeIdentity: String? = nil
  public var `data`: [Ros1Kuavo_msgsFootPose] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPoses {
    var v = Ros1Kuavo_msgsFootPoses()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros1Kuavo_msgsFootPose.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoseTargetTrajectories: Canonical {
  public static let maximumWireBytes = 4980
  public static let codecIdentity =
    "UWVMROS1_a9f8c1da63f1789e36043a3d3169f77dac28d4e4cdd8d655e528973daa17a547"
  public static let nativeType = "kuavo_msgs/footPoseTargetTrajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `footIndexTrajectory`: [Int32] = []
  public var `footPoseTrajectory`: [Ros1Kuavo_msgsFootPose] = []
  public var `additionalFootPoseTrajectory`: [Ros1Kuavo_msgsFootPoses] = []
  public var `swingHeightTrajectory`: [Double] = []
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
    guard self.`footPoseTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`footPoseTrajectory`.count))
    for e in self.`footPoseTrajectory` {
      try e.write(to: &w)
    }
    guard self.`additionalFootPoseTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`additionalFootPoseTrajectory`.count))
    for e in self.`additionalFootPoseTrajectory` {
      try e.write(to: &w)
    }
    guard self.`swingHeightTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`swingHeightTrajectory`.count))
    for e in self.`swingHeightTrajectory` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPoseTargetTrajectories
  {
    var v = Ros1Kuavo_msgsFootPoseTargetTrajectories()
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
    v.`footPoseTrajectory` = []
    v.`footPoseTrajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`footPoseTrajectory`.append(try Ros1Kuavo_msgsFootPose.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`additionalFootPoseTrajectory` = []
    v.`additionalFootPoseTrajectory`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`additionalFootPoseTrajectory`.append(try Ros1Kuavo_msgsFootPoses.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`swingHeightTrajectory` = []
    v.`swingHeightTrajectory`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`swingHeightTrajectory`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest: Canonical {
  public static let maximumWireBytes = 4980
  public static let codecIdentity =
    "UWVMROS1_7b8db8268aa6bc136f472646224e802e1b4d4db82c02f183666600770dfaa898"
  public static let nativeType = "kuavo_msgs/footPoseTargetTrajectoriesSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `foot_pose_target_trajectories`: Ros1Kuavo_msgsFootPoseTargetTrajectories =
    Ros1Kuavo_msgsFootPoseTargetTrajectories()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`foot_pose_target_trajectories`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest
  {
    var v = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest()
    v.`foot_pose_target_trajectories` = try Ros1Kuavo_msgsFootPoseTargetTrajectories.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_30d352e2d02aeac74a6706d55a22f4179ef80b4a3eb66058f1fe197e0cf268ba"
  public static let nativeType = "kuavo_msgs/footPoseTargetTrajectoriesSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse
  {
    var v = Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoseWithVision: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_4432ebe58b93e7666e007984b4456abad8c425d6583b4b5d8618224e5098bdde"
  public static let nativeType = "kuavo_msgs/footPoseWithVision"
  public static let nativeIdentity: String? = nil
  public var `footPoseId`: Int32 = 0
  public var `footIndexTrajectory`: Int32 = 0
  public var `footPose`: [Double] = Array(repeating: 0, count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`footPoseId`)
    try w.integer(self.`footIndexTrajectory`)
    guard self.`footPose`.count == 4 else { throw RosError(22) }
    for e in self.`footPose` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPoseWithVision {
    var v = Ros1Kuavo_msgsFootPoseWithVision()
    v.`footPoseId` = try r.integer(Int32.self)
    v.`footIndexTrajectory` = try r.integer(Int32.self)
    let count2 = 4
    v.`footPose` = []
    v.`footPose`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`footPose`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsFootPoseWithVisionArray: Canonical {
  public static let maximumWireBytes = 596
  public static let codecIdentity =
    "UWVMROS1_66daef8fffa20e968dbf2dfee706c75886a5b13cf70bd841998d2905ec755f55"
  public static let nativeType = "kuavo_msgs/footPoseWithVisionArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `foot_poses`: [Ros1Kuavo_msgsFootPoseWithVision] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`foot_poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`foot_poses`.count))
    for e in self.`foot_poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsFootPoseWithVisionArray
  {
    var v = Ros1Kuavo_msgsFootPoseWithVisionArray()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`foot_poses` = []
    v.`foot_poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`foot_poses`.append(try Ros1Kuavo_msgsFootPoseWithVision.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsQv: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_333522100ae5fd407bcd41b20b8062e9b0d45c2e9046b9bbfd8be2d896f40832"
  public static let nativeType = "kuavo_msgs/qv"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsQv {
    var v = Ros1Kuavo_msgsQv()
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
public struct Ros1Kuavo_msgsFullBodyTargetTrajectories: Canonical {
  public static let maximumWireBytes = 2320
  public static let codecIdentity =
    "UWVMROS1_b25544601584e8fcb8d4f86bfa88497ef92fda02556c95f4a00cfba95ef3733d"
  public static let nativeType = "kuavo_msgs/fullBodyTargetTrajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `footIndexTrajectory`: [Int32] = []
  public var `fullBodyQTrajectory`: [Ros1Kuavo_msgsQv] = []
  public var `fullBodyVTrajectory`: [Ros1Kuavo_msgsQv] = []
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
    -> Ros1Kuavo_msgsFullBodyTargetTrajectories
  {
    var v = Ros1Kuavo_msgsFullBodyTargetTrajectories()
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
      v.`fullBodyQTrajectory`.append(try Ros1Kuavo_msgsQv.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`fullBodyVTrajectory` = []
    v.`fullBodyVTrajectory`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`fullBodyVTrajectory`.append(try Ros1Kuavo_msgsQv.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGaitTimeName: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_92e83b38d53d19dfe6c868ee4aec76f92cf1a6d05f22c67f3507b0db45cc9a20"
  public static let nativeType = "kuavo_msgs/gaitTimeName"
  public static let nativeIdentity: String? = nil
  public var `start_time`: Float = 0
  public var `gait_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`start_time`)
    try w.string(self.`gait_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGaitTimeName {
    var v = Ros1Kuavo_msgsGaitTimeName()
    v.`start_time` = try r.float32()
    v.`gait_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGestureTask: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_22aea7a0452228df6e91828fedb88b27a7e029b8e876f022caa7e01f86bef21d"
  public static let nativeType = "kuavo_msgs/gestureTask"
  public static let nativeIdentity: String? = nil
  public var `gesture_name`: String = ""
  public var `hand_side`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`gesture_name`, bound: 256)
    try w.integer(self.`hand_side`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureTask {
    var v = Ros1Kuavo_msgsGestureTask()
    v.`gesture_name` = try r.string(bound: 256)
    v.`hand_side` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsGestureExecuteRequest: Canonical {
  public static let maximumWireBytes = 2092
  public static let codecIdentity =
    "UWVMROS1_4fbfe488b871889a565e7d2c2dfedfe7b03900306b4c3f12b650440e3ebc3161"
  public static let nativeType = "kuavo_msgs/gestureExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `gestures`: [Ros1Kuavo_msgsGestureTask] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`gestures`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`gestures`.count))
    for e in self.`gestures` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureExecuteRequest {
    var v = Ros1Kuavo_msgsGestureExecuteRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`gestures` = []
    v.`gestures`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`gestures`.append(try Ros1Kuavo_msgsGestureTask.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGestureExecuteResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_5cb5f5ecc381aac940d267ba0c8db14e41f220c9f0e4332e2166bc8689e6353a"
  public static let nativeType = "kuavo_msgs/gestureExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureExecuteResponse {
    var v = Ros1Kuavo_msgsGestureExecuteResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGestureExecuteStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f4854bf91552e06f187d5360b274ca67b7f33e7c3a6bb32b1c1c3c3cdd94acc1"
  public static let nativeType = "kuavo_msgs/gestureExecuteStateRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGestureExecuteStateRequest
  {
    var v = Ros1Kuavo_msgsGestureExecuteStateRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGestureExecuteStateResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_99a396bb215e1c881e9b48cc4f9b4faf0d27c4984c30a9d1a2812cf2cfed3129"
  public static let nativeType = "kuavo_msgs/gestureExecuteStateResponse"
  public static let nativeIdentity: String? = nil
  public var `is_executing`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`is_executing`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGestureExecuteStateResponse
  {
    var v = Ros1Kuavo_msgsGestureExecuteStateResponse()
    v.`is_executing` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGestureInfo: Canonical {
  public static let maximumWireBytes = 1612
  public static let codecIdentity =
    "UWVMROS1_cba208289035abede579134d09ac028f8c46af5ffb48a8de8d7e51923ff7e2cf"
  public static let nativeType = "kuavo_msgs/gestureInfo"
  public static let nativeIdentity: String? = nil
  public var `gesture_name`: String = ""
  public var `alias`: [String] = []
  public var `description`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`gesture_name`, bound: 256)
    guard self.`alias`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`alias`.count))
    for e in self.`alias` {
      try w.string(e, bound: 64)
    }
    try w.string(self.`description`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureInfo {
    var v = Ros1Kuavo_msgsGestureInfo()
    v.`gesture_name` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`alias` = []
    v.`alias`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`alias`.append(try r.string(bound: 64))
    }
    v.`description` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGestureListRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_06ed0bf9e126c09fe308c390e1fab2a44482d0e4e9ace631b23e5803edb4f64e"
  public static let nativeType = "kuavo_msgs/gestureListRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureListRequest {
    var v = Ros1Kuavo_msgsGestureListRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGestureListResponse: Canonical {
  public static let maximumWireBytes = 13165
  public static let codecIdentity =
    "UWVMROS1_b6abc5725fe654f6016fbfcd1c879310435d0da67669a4d3c2e7c1dfbe570e78"
  public static let nativeType = "kuavo_msgs/gestureListResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `gesture_count`: Int32 = 0
  public var `message`: String = ""
  public var `gesture_infos`: [Ros1Kuavo_msgsGestureInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`gesture_count`)
    try w.string(self.`message`, bound: 256)
    guard self.`gesture_infos`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`gesture_infos`.count))
    for e in self.`gesture_infos` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGestureListResponse {
    var v = Ros1Kuavo_msgsGestureListResponse()
    v.`success` = try r.boolean()
    v.`gesture_count` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`gesture_infos` = []
    v.`gesture_infos`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`gesture_infos`.append(try Ros1Kuavo_msgsGestureInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGetControllerListRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3fe0e43ef20599c80ccd663069f573fcfd17f26f063dc43e7949f3d14f50175b"
  public static let nativeType = "kuavo_msgs/getControllerListRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetControllerListRequest
  {
    var v = Ros1Kuavo_msgsGetControllerListRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetControllerListResponse: Canonical {
  public static let maximumWireBytes = 4693
  public static let codecIdentity =
    "UWVMROS1_2ac6aa5380f13cd2fa02bfdf609cf1fc10b821c90c115e8c2a4d31db3959b7d2"
  public static let nativeType = "kuavo_msgs/getControllerListResponse"
  public static let nativeIdentity: String? = nil
  public var `controller_names`: [String] = []
  public var `count`: Int32 = 0
  public var `current_index`: Int32 = 0
  public var `current_controller`: String = ""
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`controller_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`controller_names`.count))
    for e in self.`controller_names` {
      try w.string(e, bound: 256)
    }
    try w.integer(self.`count`)
    try w.integer(self.`current_index`)
    try w.string(self.`current_controller`, bound: 256)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetControllerListResponse
  {
    var v = Ros1Kuavo_msgsGetControllerListResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`controller_names` = []
    v.`controller_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`controller_names`.append(try r.string(bound: 256))
    }
    v.`count` = try r.integer(Int32.self)
    v.`current_index` = try r.integer(Int32.self)
    v.`current_controller` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetCurrentGaitNameRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_99c98cfd19410a4c98971ab6ec9309bc7791eb6a539506a82ad73cecca630099"
  public static let nativeType = "kuavo_msgs/getCurrentGaitNameRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetCurrentGaitNameRequest
  {
    var v = Ros1Kuavo_msgsGetCurrentGaitNameRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetCurrentGaitNameResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_236aa41df3942d1866e3e4be54a4d76ef8eea5648a7f56a44cb970f46bd43d58"
  public static let nativeType = "kuavo_msgs/getCurrentGaitNameResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `gait_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`gait_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetCurrentGaitNameResponse
  {
    var v = Ros1Kuavo_msgsGetCurrentGaitNameResponse()
    v.`success` = try r.boolean()
    v.`gait_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ac42d9ece2adbf0dcf74b65a00a7890fe67c1ad757ac236f7a35f055614c15f0"
  public static let nativeType = "kuavo_msgs/getLbTorsoInitialPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `isNeed`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isNeed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest
  {
    var v = Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest()
    v.`isNeed` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse: Canonical {
  public static let maximumWireBytes = 309
  public static let codecIdentity =
    "UWVMROS1_ad14eef4f0317181b2d2477548a7aac0ce71ac12f76d824b8814e50c5de8daaa"
  public static let nativeType = "kuavo_msgs/getLbTorsoInitialPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `message`: String = ""
  public var `linear`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `angular`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.string(self.`message`, bound: 256)
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse
  {
    var v = Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse()
    v.`result` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsGetMotorParamRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2fcfb1ba499395e8f91e9e222ff3b967715be0d39846fa9a82fa640cbfc5705a"
  public static let nativeType = "kuavo_msgs/getMotorParamRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetMotorParamRequest {
    var v = Ros1Kuavo_msgsGetMotorParamRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetMotorParamResponse: Canonical {
  public static let maximumWireBytes = 345
  public static let codecIdentity =
    "UWVMROS1_63c79b06a964d504cf53db65481fd01ef568641075aaa5278af243fe5e50ae01"
  public static let nativeType = "kuavo_msgs/getMotorParamResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `data`: [Ros1Kuavo_msgsMotorParam] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`data`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGetMotorParamResponse {
    var v = Ros1Kuavo_msgsGetMotorParamResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try Ros1Kuavo_msgsMotorParam.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGetMotorZeroPointsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_50c631bf3fe8bc8cad2438e235c57752fe8a041985fcd5a4a40b65b9cc847c6a"
  public static let nativeType = "kuavo_msgs/getMotorZeroPointsRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetMotorZeroPointsRequest
  {
    var v = Ros1Kuavo_msgsGetMotorZeroPointsRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsGetMotorZeroPointsResponse: Canonical {
  public static let maximumWireBytes = 393
  public static let codecIdentity =
    "UWVMROS1_a8cd5aa6e83a994d12c82a811d2d98de575261b969b10a63161748f83f7cc8c3"
  public static let nativeType = "kuavo_msgs/getMotorZeroPointsResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `zero_points`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`zero_points`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`zero_points`.count))
    for e in self.`zero_points` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsGetMotorZeroPointsResponse
  {
    var v = Ros1Kuavo_msgsGetMotorZeroPointsResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`zero_points` = []
    v.`zero_points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`zero_points`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGoToZeroPointRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_297388368bf80461a3fa7ec24cb8c8612dc87c0d371c37a8c2c94f61ebd1f585"
  public static let nativeType = "kuavo_msgs/goToZeroPointRequest"
  public static let nativeIdentity: String? = nil
  public var `offset`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`offset`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`offset`.count))
    for e in self.`offset` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGoToZeroPointRequest {
    var v = Ros1Kuavo_msgsGoToZeroPointRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`offset` = []
    v.`offset`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`offset`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsGoToZeroPointResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_c288008718185fce79b7f7e3b10a4ce464f0071dc3fcd172adf0b46867a4928a"
  public static let nativeType = "kuavo_msgs/goToZeroPointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsGoToZeroPointResponse {
    var v = Ros1Kuavo_msgsGoToZeroPointResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsHandForceLevelRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_230b77fee2f8106d7474b3efd9519482be35ffb7cba8c6b0ea0efefe20cef79c"
  public static let nativeType = "kuavo_msgs/handForceLevelRequest"
  public static let nativeIdentity: String? = nil
  public static let `SMALL`: Int8 = 0
  public static let `NORMAL`: Int8 = 1
  public static let `FULL`: Int8 = 2
  public static let `LEFT_HAND`: Int8 = 0
  public static let `RIGHT_HAND`: Int8 = 1
  public static let `BOTH_HANDS`: Int8 = 2
  public var `force_level`: Int8 = 0
  public var `hand_side`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`force_level`)
    try w.integer(self.`hand_side`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsHandForceLevelRequest {
    var v = Ros1Kuavo_msgsHandForceLevelRequest()
    v.`force_level` = try r.integer(Int8.self)
    v.`hand_side` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsHandForceLevelResponse: Canonical {
  public static let maximumWireBytes = 281
  public static let codecIdentity =
    "UWVMROS1_75742d57c45498fc5127874d3da0821c801b50825687d80089d5c25a58e5a8bd"
  public static let nativeType = "kuavo_msgs/handForceLevelResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `force_level`: [Int8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`force_level`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`force_level`.count))
    for e in self.`force_level` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsHandForceLevelResponse {
    var v = Ros1Kuavo_msgsHandForceLevelResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`force_level` = []
    v.`force_level`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`force_level`.append(try r.integer(Int8.self))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsHandPose: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_7242027b488c78f932598168cfaa50b9fa4f0782cbb7820121563a32456f11cc"
  public static let nativeType = "kuavo_msgs/handPose"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsHandPose {
    var v = Ros1Kuavo_msgsHandPose()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`roll` = try r.float64()
    v.`pitch` = try r.float64()
    v.`yaw` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsHeadBodyPose: Canonical {
  public static let maximumWireBytes = 64
  public static let codecIdentity =
    "UWVMROS1_1cd38534a6dc7c226800759b1635db044c60a0976c31a00189a98da82562f639"
  public static let nativeType = "kuavo_msgs/headBodyPose"
  public static let nativeIdentity: String? = nil
  public var `head_pitch`: Double = 0
  public var `head_yaw`: Double = 0
  public var `body_roll`: Double = 0
  public var `body_pitch`: Double = 0
  public var `body_yaw`: Double = 0
  public var `body_x`: Double = 0
  public var `body_y`: Double = 0
  public var `body_height`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`head_pitch`)
    try w.float64(self.`head_yaw`)
    try w.float64(self.`body_roll`)
    try w.float64(self.`body_pitch`)
    try w.float64(self.`body_yaw`)
    try w.float64(self.`body_x`)
    try w.float64(self.`body_y`)
    try w.float64(self.`body_height`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsHeadBodyPose {
    var v = Ros1Kuavo_msgsHeadBodyPose()
    v.`head_pitch` = try r.float64()
    v.`head_yaw` = try r.float64()
    v.`body_roll` = try r.float64()
    v.`body_pitch` = try r.float64()
    v.`body_yaw` = try r.float64()
    v.`body_x` = try r.float64()
    v.`body_y` = try r.float64()
    v.`body_height` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsHeadCtrlMode: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_b2de337b9b29045a488f97f3197ffc1e6dfb2a2219cb1c371d0ffec355a8d8a2"
  public static let nativeType = "kuavo_msgs/headCtrlMode"
  public static let nativeIdentity: String? = nil
  public var `mode`: String = ""
  public var `fixed_main_hand`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`mode`, bound: 256)
    try w.string(self.`fixed_main_hand`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsHeadCtrlMode {
    var v = Ros1Kuavo_msgsHeadCtrlMode()
    v.`mode` = try r.string(bound: 256)
    v.`fixed_main_hand` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsIkSolveError: Canonical {
  public static let maximumWireBytes = 356
  public static let codecIdentity =
    "UWVMROS1_a54e6d099bee0f41556c4601c13a9e0df9d05953ee61f7f10178ca1e872057a4"
  public static let nativeType = "kuavo_msgs/ikSolveError"
  public static let nativeIdentity: String? = nil
  public var `ik_type`: String = ""
  public var `left_pose_error`: Ros1Kuavo_msgsHandPose = Ros1Kuavo_msgsHandPose()
  public var `right_pose_error`: Ros1Kuavo_msgsHandPose = Ros1Kuavo_msgsHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ik_type`, bound: 256)
    try self.`left_pose_error`.write(to: &w)
    try self.`right_pose_error`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsIkSolveError {
    var v = Ros1Kuavo_msgsIkSolveError()
    v.`ik_type` = try r.string(bound: 256)
    v.`left_pose_error` = try Ros1Kuavo_msgsHandPose.read(from: &r)
    v.`right_pose_error` = try Ros1Kuavo_msgsHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsIkSolveParam: Canonical {
  public static let maximumWireBytes = 65
  public static let codecIdentity =
    "UWVMROS1_74ede5ee2da9047184617c9c592f40e5d434411769e0b6380983dbca95362627"
  public static let nativeType = "kuavo_msgs/ikSolveParam"
  public static let nativeIdentity: String? = nil
  public var `major_optimality_tol`: Double = 0
  public var `major_feasibility_tol`: Double = 0
  public var `minor_feasibility_tol`: Double = 0
  public var `major_iterations_limit`: Double = 0
  public var `oritation_constraint_tol`: Double = 0
  public var `pos_constraint_tol`: Double = 0
  public var `pos_cost_weight`: Double = 0
  public var `constraint_mode`: UInt8 = 0
  public var `elbow_cost_scale`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`major_optimality_tol`)
    try w.float64(self.`major_feasibility_tol`)
    try w.float64(self.`minor_feasibility_tol`)
    try w.float64(self.`major_iterations_limit`)
    try w.float64(self.`oritation_constraint_tol`)
    try w.float64(self.`pos_constraint_tol`)
    try w.float64(self.`pos_cost_weight`)
    try w.integer(self.`constraint_mode`)
    try w.float64(self.`elbow_cost_scale`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsIkSolveParam {
    var v = Ros1Kuavo_msgsIkSolveParam()
    v.`major_optimality_tol` = try r.float64()
    v.`major_feasibility_tol` = try r.float64()
    v.`minor_feasibility_tol` = try r.float64()
    v.`major_iterations_limit` = try r.float64()
    v.`oritation_constraint_tol` = try r.float64()
    v.`pos_constraint_tol` = try r.float64()
    v.`pos_cost_weight` = try r.float64()
    v.`constraint_mode` = try r.integer(UInt8.self)
    v.`elbow_cost_scale` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsImuData: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_22e96f18cc9d0e1149698450d21a3eedf1b985ddd6f4fe2bbac38634a3c7749c"
  public static let nativeType = "kuavo_msgs/imuData"
  public static let nativeIdentity: String? = nil
  public var `gyro`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `acc`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `free_acc`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `quat`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`gyro`.write(to: &w)
    try self.`acc`.write(to: &w)
    try self.`free_acc`.write(to: &w)
    try self.`quat`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsImuData {
    var v = Ros1Kuavo_msgsImuData()
    v.`gyro` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`acc` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`free_acc` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`quat` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsJointBezierTrajectory: Canonical {
  public static let maximumWireBytes = 3172
  public static let codecIdentity =
    "UWVMROS1_3718dad77c1551244538575c1c16cd7c2fa1d1e78d1f3997940d5f229c819215"
  public static let nativeType = "kuavo_msgs/jointBezierTrajectory"
  public static let nativeIdentity: String? = nil
  public var `bezier_curve_points`: [Ros1Kuavo_msgsBezierCurveCubicPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`bezier_curve_points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`bezier_curve_points`.count))
    for e in self.`bezier_curve_points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJointBezierTrajectory {
    var v = Ros1Kuavo_msgsJointBezierTrajectory()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`bezier_curve_points` = []
    v.`bezier_curve_points`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`bezier_curve_points`.append(try Ros1Kuavo_msgsBezierCurveCubicPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsJointCmd: Canonical {
  public static let maximumWireBytes = 7984
  public static let codecIdentity =
    "UWVMROS1_88d1fcc2e54ee9bb36f424ca63039670a96154659d3ae9bd4a2014314277b088"
  public static let nativeType = "kuavo_msgs/jointCmd"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `joint_q`: [Double] = []
  public var `joint_v`: [Double] = []
  public var `tau`: [Double] = []
  public var `tau_max`: [Double] = []
  public var `tau_ratio`: [Double] = []
  public var `joint_kp`: [Double] = []
  public var `joint_kd`: [Double] = []
  public var `control_modes`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_q`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_q`.count))
    for e in self.`joint_q` {
      try w.float64(e)
    }
    guard self.`joint_v`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_v`.count))
    for e in self.`joint_v` {
      try w.float64(e)
    }
    guard self.`tau`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau`.count))
    for e in self.`tau` {
      try w.float64(e)
    }
    guard self.`tau_max`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_max`.count))
    for e in self.`tau_max` {
      try w.float64(e)
    }
    guard self.`tau_ratio`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_ratio`.count))
    for e in self.`tau_ratio` {
      try w.float64(e)
    }
    guard self.`joint_kp`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_kp`.count))
    for e in self.`joint_kp` {
      try w.float64(e)
    }
    guard self.`joint_kd`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_kd`.count))
    for e in self.`joint_kd` {
      try w.float64(e)
    }
    guard self.`control_modes`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`control_modes`.count))
    for e in self.`control_modes` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJointCmd {
    var v = Ros1Kuavo_msgsJointCmd()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 128 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_q` = []
    v.`joint_q`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_q`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 128 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`joint_v` = []
    v.`joint_v`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`joint_v`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 128 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`tau` = []
    v.`tau`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`tau`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 128 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`tau_max` = []
    v.`tau_max`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`tau_max`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 128 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`tau_ratio` = []
    v.`tau_ratio`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`tau_ratio`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 128 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`joint_kp` = []
    v.`joint_kp`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`joint_kp`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 128 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`joint_kd` = []
    v.`joint_kd`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`joint_kd`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 128 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`control_modes` = []
    v.`control_modes`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`control_modes`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsJointData: Canonical {
  public static let maximumWireBytes = 4112
  public static let codecIdentity =
    "UWVMROS1_3377e37ae230363d24936f58d080088f5a5e58aa6706b48263dc67b8ada7349f"
  public static let nativeType = "kuavo_msgs/jointData"
  public static let nativeIdentity: String? = nil
  public var `joint_q`: [Double] = []
  public var `joint_v`: [Double] = []
  public var `joint_vd`: [Double] = []
  public var `joint_torque`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_q`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_q`.count))
    for e in self.`joint_q` {
      try w.float64(e)
    }
    guard self.`joint_v`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_v`.count))
    for e in self.`joint_v` {
      try w.float64(e)
    }
    guard self.`joint_vd`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_vd`.count))
    for e in self.`joint_vd` {
      try w.float64(e)
    }
    guard self.`joint_torque`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_torque`.count))
    for e in self.`joint_torque` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJointData {
    var v = Ros1Kuavo_msgsJointData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_q` = []
    v.`joint_q`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_q`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 128 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_v` = []
    v.`joint_v`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_v`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 128 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`joint_vd` = []
    v.`joint_vd`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`joint_vd`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 128 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_torque` = []
    v.`joint_torque`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_torque`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsJointMoveToRequest: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_a29a8269f7983673894013deeabe4ccfc84385abc85565d0bbdbfbeca3c583e8"
  public static let nativeType = "kuavo_msgs/jointMoveToRequest"
  public static let nativeIdentity: String? = nil
  public var `goal_position`: [Double] = []
  public var `speed`: Double = 0
  public var `dt`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`goal_position`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_position`.count))
    for e in self.`goal_position` {
      try w.float64(e)
    }
    try w.float64(self.`speed`)
    try w.float64(self.`dt`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJointMoveToRequest {
    var v = Ros1Kuavo_msgsJointMoveToRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`goal_position` = []
    v.`goal_position`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`goal_position`.append(try r.float64())
    }
    v.`speed` = try r.float64()
    v.`dt` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsJointMoveToResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_10b6f17523c01e6ef31fd347e204229d6c7e87c8319817f7b6e5b155de9de66f"
  public static let nativeType = "kuavo_msgs/jointMoveToResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsJointMoveToResponse {
    var v = Ros1Kuavo_msgsJointMoveToResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsKuavoModeSchedule: Canonical {
  public static let maximumWireBytes = 1044
  public static let codecIdentity =
    "UWVMROS1_a70cfec100b2a48ddc270bdf56a6d45dc749a582aa0e22b2aaf4eec0e070b9fa"
  public static let nativeType = "kuavo_msgs/kuavoModeSchedule"
  public static let nativeIdentity: String? = nil
  public var `currentTime`: Double = 0
  public var `footPoseSequence`: [Ros1Kuavo_msgsFootPose6D] = []
  public var `eventTimes`: [Double] = []
  public var `modeSequence`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`currentTime`)
    guard self.`footPoseSequence`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`footPoseSequence`.count))
    for e in self.`footPoseSequence` {
      try e.write(to: &w)
    }
    guard self.`eventTimes`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`eventTimes`.count))
    for e in self.`eventTimes` {
      try w.float64(e)
    }
    guard self.`modeSequence`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`modeSequence`.count))
    for e in self.`modeSequence` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsKuavoModeSchedule {
    var v = Ros1Kuavo_msgsKuavoModeSchedule()
    v.`currentTime` = try r.float64()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`footPoseSequence` = []
    v.`footPoseSequence`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`footPoseSequence`.append(try Ros1Kuavo_msgsFootPose6D.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`eventTimes` = []
    v.`eventTimes`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`eventTimes`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`modeSequence` = []
    v.`modeSequence`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`modeSequence`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest: Canonical {
  public static let maximumWireBytes = 114
  public static let codecIdentity =
    "UWVMROS1_72672d25332ed3cd25766e0cd3e94abfde2d0abe95b18220fd2fde98e579201a"
  public static let nativeType = "kuavo_msgs/lbBaseLinkPoseCmdSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `with_chassis`: Bool = false
  public var `control_type`: Int8 = 0
  public var `chassis_info`: [Double] = Array(repeating: 0, count: 3)
  public var `q_lb`: [Double] = Array(repeating: 0, count: 4)
  public var `base_link`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`with_chassis`)
    try w.integer(self.`control_type`)
    guard self.`chassis_info`.count == 3 else { throw RosError(22) }
    for e in self.`chassis_info` {
      try w.float64(e)
    }
    guard self.`q_lb`.count == 4 else { throw RosError(22) }
    for e in self.`q_lb` {
      try w.float64(e)
    }
    guard self.`base_link`.count == 7 else { throw RosError(22) }
    for e in self.`base_link` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest
  {
    var v = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest()
    v.`with_chassis` = try r.boolean()
    v.`control_type` = try r.integer(Int8.self)
    let count2 = 3
    v.`chassis_info` = []
    v.`chassis_info`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`chassis_info`.append(try r.float64())
    }
    let count3 = 4
    v.`q_lb` = []
    v.`q_lb`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`q_lb`.append(try r.float64())
    }
    let count4 = 7
    v.`base_link` = []
    v.`base_link`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`base_link`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse: Canonical {
  public static let maximumWireBytes = 41
  public static let codecIdentity =
    "UWVMROS1_ec5e17c9390a042edc15be0b3bec564272decf513e7181c39e593b17fd3c8ccf"
  public static let nativeType = "kuavo_msgs/lbBaseLinkPoseCmdSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `lb_leg`: [Double] = Array(repeating: 0, count: 4)
  public var `time_cost`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    guard self.`lb_leg`.count == 4 else { throw RosError(22) }
    for e in self.`lb_leg` {
      try w.float64(e)
    }
    try w.float64(self.`time_cost`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse
  {
    var v = Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse()
    v.`success` = try r.boolean()
    let count1 = 4
    v.`lb_leg` = []
    v.`lb_leg`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`lb_leg`.append(try r.float64())
    }
    v.`time_cost` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsLbLegControlSrvRequest: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_12cdc7d74b6bc9503c9ae24337eb8ab029eff2a93f88a0b859f731a5faf1a533"
  public static let nativeType = "kuavo_msgs/lbLegControlSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `target_joints`: [Double] = Array(repeating: 0, count: 4)
  public var `duration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target_joints`.count == 4 else { throw RosError(22) }
    for e in self.`target_joints` {
      try w.float64(e)
    }
    try w.float64(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLbLegControlSrvRequest {
    var v = Ros1Kuavo_msgsLbLegControlSrvRequest()
    let count0 = 4
    v.`target_joints` = []
    v.`target_joints`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target_joints`.append(try r.float64())
    }
    v.`duration` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsLbLegControlSrvResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8a5e5e933260c3e6d086c0bd022b5019a5589b14aac83fa532cf2e6e0a085314"
  public static let nativeType = "kuavo_msgs/lbLegControlSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLbLegControlSrvResponse
  {
    var v = Ros1Kuavo_msgsLbLegControlSrvResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsTimedPoint: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_9abef61d3ddd167b34972416b5ce4899fe6adb720d2b44f46a2a1ec9e2020ac1"
  public static let nativeType = "kuavo_msgs/timedPoint"
  public static let nativeIdentity: String? = nil
  public var `desireTime`: Float = 0
  public var `cmdVec`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`desireTime`)
    guard self.`cmdVec`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cmdVec`.count))
    for e in self.`cmdVec` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTimedPoint {
    var v = Ros1Kuavo_msgsTimedPoint()
    v.`desireTime` = try r.float32()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`cmdVec` = []
    v.`cmdVec`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`cmdVec`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbTimedOfflineTraj: Canonical {
  public static let maximumWireBytes = 1094
  public static let codecIdentity =
    "UWVMROS1_af1a5fdbd4a1e23d33ae06c48f41a4b3f5cb3e390bfd8febcb8705939aeb2256"
  public static let nativeType = "kuavo_msgs/lbTimedOfflineTraj"
  public static let nativeIdentity: String? = nil
  public var `timedTraj`: [Ros1Kuavo_msgsTimedPoint] = []
  public var `frame`: Int8 = 0
  public var `plannerIndex`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`timedTraj`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`timedTraj`.count))
    for e in self.`timedTraj` {
      try e.write(to: &w)
    }
    try w.integer(self.`frame`)
    try w.integer(self.`plannerIndex`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLbTimedOfflineTraj {
    var v = Ros1Kuavo_msgsLbTimedOfflineTraj()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`timedTraj` = []
    v.`timedTraj`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`timedTraj`.append(try Ros1Kuavo_msgsTimedPoint.read(from: &r))
    }
    v.`frame` = try r.integer(Int8.self)
    v.`plannerIndex` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest: Canonical {
  public static let maximumWireBytes = 8756
  public static let codecIdentity =
    "UWVMROS1_4f37be18deb3287feb1237d7d6dbc90b34a5d3d159c57c111c5991f9f3e09263"
  public static let nativeType = "kuavo_msgs/lbMultiTimedOfflineTrajRequest"
  public static let nativeIdentity: String? = nil
  public var `offlineTraj`: [Ros1Kuavo_msgsLbTimedOfflineTraj] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`offlineTraj`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`offlineTraj`.count))
    for e in self.`offlineTraj` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest
  {
    var v = Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`offlineTraj` = []
    v.`offlineTraj`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`offlineTraj`.append(try Ros1Kuavo_msgsLbTimedOfflineTraj.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_602601ea8d7ef86e3a2c2bad5a2078a18c403522180513ccff501c68596f5d80"
  public static let nativeType = "kuavo_msgs/lbMultiTimedOfflineTrajResponse"
  public static let nativeIdentity: String? = nil
  public var `isSuccess`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isSuccess`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse
  {
    var v = Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse()
    v.`isSuccess` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsTimedSingleCmd: Canonical {
  public static let maximumWireBytes = 137
  public static let codecIdentity =
    "UWVMROS1_c08c60ff04e6c14af1327b42f580079b00bd5b9d4722d15e52ebf54f62b5553a"
  public static let nativeType = "kuavo_msgs/timedSingleCmd"
  public static let nativeIdentity: String? = nil
  public var `planner_index`: Int8 = 0
  public var `desireTime`: Float = 0
  public var `cmdVec`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`planner_index`)
    try w.float32(self.`desireTime`)
    guard self.`cmdVec`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cmdVec`.count))
    for e in self.`cmdVec` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTimedSingleCmd {
    var v = Ros1Kuavo_msgsTimedSingleCmd()
    v.`planner_index` = try r.integer(Int8.self)
    v.`desireTime` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`cmdVec` = []
    v.`cmdVec`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`cmdVec`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbMultiTimedPosCmdRequest: Canonical {
  public static let maximumWireBytes = 1101
  public static let codecIdentity =
    "UWVMROS1_09ecf038251456ac6724d19cc51398b63c950eab8261651ccbe1b70082cac923"
  public static let nativeType = "kuavo_msgs/lbMultiTimedPosCmdRequest"
  public static let nativeIdentity: String? = nil
  public var `timedCmdVec`: [Ros1Kuavo_msgsTimedSingleCmd] = []
  public var `isSync`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`timedCmdVec`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`timedCmdVec`.count))
    for e in self.`timedCmdVec` {
      try e.write(to: &w)
    }
    try w.boolean(self.`isSync`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbMultiTimedPosCmdRequest
  {
    var v = Ros1Kuavo_msgsLbMultiTimedPosCmdRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`timedCmdVec` = []
    v.`timedCmdVec`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`timedCmdVec`.append(try Ros1Kuavo_msgsTimedSingleCmd.read(from: &r))
    }
    v.`isSync` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsLbMultiTimedPosCmdResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_5e69ff6ebf02c2241db5cca0a0f0749aa9242b1f12c2f5eb1095477f82ffebb7"
  public static let nativeType = "kuavo_msgs/lbMultiTimedPosCmdResponse"
  public static let nativeIdentity: String? = nil
  public var `isSuccess`: Bool = false
  public var `actualTime`: Float = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isSuccess`)
    try w.float32(self.`actualTime`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsLbMultiTimedPosCmdResponse
  {
    var v = Ros1Kuavo_msgsLbMultiTimedPosCmdResponse()
    v.`isSuccess` = try r.boolean()
    v.`actualTime` = try r.float32()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsLbTimedPosCmdRequest: Canonical {
  public static let maximumWireBytes = 137
  public static let codecIdentity =
    "UWVMROS1_16d5924a4eacf77e4170844eefd2d1bacfa447868f02bb57c39f90afdedeb17c"
  public static let nativeType = "kuavo_msgs/lbTimedPosCmdRequest"
  public static let nativeIdentity: String? = nil
  public var `planner_index`: Int8 = 0
  public var `desireTime`: Float = 0
  public var `cmdVec`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`planner_index`)
    try w.float32(self.`desireTime`)
    guard self.`cmdVec`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cmdVec`.count))
    for e in self.`cmdVec` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLbTimedPosCmdRequest {
    var v = Ros1Kuavo_msgsLbTimedPosCmdRequest()
    v.`planner_index` = try r.integer(Int8.self)
    v.`desireTime` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`cmdVec` = []
    v.`cmdVec`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`cmdVec`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsLbTimedPosCmdResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_fe098b1606240056ddc5d203d1740dcf684d767f9638c5328afa00787265822c"
  public static let nativeType = "kuavo_msgs/lbTimedPosCmdResponse"
  public static let nativeIdentity: String? = nil
  public var `isSuccess`: Bool = false
  public var `actualTime`: Float = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isSuccess`)
    try w.float32(self.`actualTime`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLbTimedPosCmdResponse {
    var v = Ros1Kuavo_msgsLbTimedPosCmdResponse()
    v.`isSuccess` = try r.boolean()
    v.`actualTime` = try r.float32()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsLejuClawCommand: Canonical {
  public static let maximumWireBytes = 4832
  public static let codecIdentity =
    "UWVMROS1_61cf224048fbeb23d63a1801ef3b973cde8ac31d09c0f5ea9db0924e12a80deb"
  public static let nativeType = "kuavo_msgs/lejuClawCommand"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `data`: Ros1Kuavo_msgsEndEffectorData = Ros1Kuavo_msgsEndEffectorData()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLejuClawCommand {
    var v = Ros1Kuavo_msgsLejuClawCommand()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`data` = try Ros1Kuavo_msgsEndEffectorData.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsLejuClawRecoveryRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_9f3fc9f6ef90c574075787ef7857d39b9a94807581dc088e828db7d2dd2ce74c"
  public static let nativeType = "kuavo_msgs/lejuClawRecoveryRequest"
  public static let nativeIdentity: String? = nil
  public var `direction`: String = ""
  public var `current`: Float = 0
  public var `duration_ms`: Int32 = 0
  public var `repeat`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`direction`, bound: 256)
    try w.float32(self.`current`)
    try w.integer(self.`duration_ms`)
    try w.integer(self.`repeat`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLejuClawRecoveryRequest
  {
    var v = Ros1Kuavo_msgsLejuClawRecoveryRequest()
    v.`direction` = try r.string(bound: 256)
    v.`current` = try r.float32()
    v.`duration_ms` = try r.integer(Int32.self)
    v.`repeat` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsLejuClawRecoveryResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1c241829278fbff2ac2cbf8e656c6ea5fa6237a76dcbe0ab8662313f87ad116f"
  public static let nativeType = "kuavo_msgs/lejuClawRecoveryResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLejuClawRecoveryResponse
  {
    var v = Ros1Kuavo_msgsLejuClawRecoveryResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsLejuClawState: Canonical {
  public static let maximumWireBytes = 4853
  public static let codecIdentity =
    "UWVMROS1_873d5940af0c6f0fedc5ac43038682fb0b9f8fc9e7044d571d2a8968657ad087"
  public static let nativeType = "kuavo_msgs/lejuClawState"
  public static let nativeIdentity: String? = nil
  public static let `kError`: Int8 = -1
  public static let `kUnknown`: Int8 = 0
  public static let `kMoving`: Int8 = 1
  public static let `kReached`: Int8 = 2
  public static let `kGrabbed`: Int8 = 3
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `state`: [Int8] = []
  public var `data`: Ros1Kuavo_msgsEndEffectorData = Ros1Kuavo_msgsEndEffectorData()
  public var `is_high_freq`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`state`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`state`.count))
    for e in self.`state` {
      try w.integer(e)
    }
    try self.`data`.write(to: &w)
    try w.boolean(self.`is_high_freq`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLejuClawState {
    var v = Ros1Kuavo_msgsLejuClawState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`state` = []
    v.`state`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`state`.append(try r.integer(Int8.self))
    }
    v.`data` = try Ros1Kuavo_msgsEndEffectorData.read(from: &r)
    v.`is_high_freq` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsLejuClawTarget: Canonical {
  public static let maximumWireBytes = 4969
  public static let codecIdentity =
    "UWVMROS1_486d61b61edf26e7f93fab2c996b6e2036b1aa9195c19ff9076eddc2dc1b13bb"
  public static let nativeType = "kuavo_msgs/lejuClawTarget"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `data`: Ros1Kuavo_msgsEndEffectorData = Ros1Kuavo_msgsEndEffectorData()
  public var `kp`: [Int32] = []
  public var `kd`: [Int32] = []
  public var `zero_kp`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
    guard self.`kp`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`kp`.count))
    for e in self.`kp` {
      try w.integer(e)
    }
    guard self.`kd`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`kd`.count))
    for e in self.`kd` {
      try w.integer(e)
    }
    try w.boolean(self.`zero_kp`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsLejuClawTarget {
    var v = Ros1Kuavo_msgsLejuClawTarget()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`data` = try Ros1Kuavo_msgsEndEffectorData.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`kp` = []
    v.`kp`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`kp`.append(try r.integer(Int32.self))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`kd` = []
    v.`kd`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`kd`.append(try r.integer(Int32.self))
    }
    v.`zero_kp` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsMpc_input: Canonical {
  public static let maximumWireBytes = 516
  public static let codecIdentity =
    "UWVMROS1_bd1388fba8e1ace866c53ba674fdc9d8b728619d282c22fa4963e0100b91dba6"
  public static let nativeType = "kuavo_msgs/mpc_input"
  public static let nativeIdentity: String? = nil
  public var `value`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`value`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMpc_input {
    var v = Ros1Kuavo_msgsMpc_input()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`value` = []
    v.`value`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`value`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsMpc_state: Canonical {
  public static let maximumWireBytes = 516
  public static let codecIdentity =
    "UWVMROS1_c2111b86d981faa073c2656691837639b1278da2cd82847e95176730147883c8"
  public static let nativeType = "kuavo_msgs/mpc_state"
  public static let nativeIdentity: String? = nil
  public var `value`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`value`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMpc_state {
    var v = Ros1Kuavo_msgsMpc_state()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`value` = []
    v.`value`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`value`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsMpc_target_trajectories: Canonical {
  public static let maximumWireBytes = 8396
  public static let codecIdentity =
    "UWVMROS1_ed56d3f768e6916760ebc26369c6f39535fc4451e446c2b7bff43f2755d9c446"
  public static let nativeType = "kuavo_msgs/mpc_target_trajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `stateTrajectory`: [Ros1Kuavo_msgsMpc_state] = []
  public var `inputTrajectory`: [Ros1Kuavo_msgsMpc_input] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`timeTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`timeTrajectory`.count))
    for e in self.`timeTrajectory` {
      try w.float64(e)
    }
    guard self.`stateTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`stateTrajectory`.count))
    for e in self.`stateTrajectory` {
      try e.write(to: &w)
    }
    guard self.`inputTrajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`inputTrajectory`.count))
    for e in self.`inputTrajectory` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsMpc_target_trajectories
  {
    var v = Ros1Kuavo_msgsMpc_target_trajectories()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`timeTrajectory` = []
    v.`timeTrajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`timeTrajectory`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`stateTrajectory` = []
    v.`stateTrajectory`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`stateTrajectory`.append(try Ros1Kuavo_msgsMpc_state.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`inputTrajectory` = []
    v.`inputTrajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`inputTrajectory`.append(try Ros1Kuavo_msgsMpc_input.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsPicoPoseInfo: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_389cc7dcc63b71073f207a5688ee803721fd94edd72b24e684008de0fb984166"
  public static let nativeType = "kuavo_msgs/picoPoseInfo"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPicoPoseInfo {
    var v = Ros1Kuavo_msgsPicoPoseInfo()
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsPicoPoseInfoList: Canonical {
  public static let maximumWireBytes = 462
  public static let codecIdentity =
    "UWVMROS1_777577a782cccf306706ce2b91f7713e81e67c71b413a959ccd548b16dc4af93"
  public static let nativeType = "kuavo_msgs/picoPoseInfoList"
  public static let nativeIdentity: String? = nil
  public var `timestamp_ms`: Int64 = 0
  public var `is_high_confidence`: Bool = false
  public var `is_hand_tracking`: Bool = false
  public var `poses`: [Ros1Kuavo_msgsPicoPoseInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timestamp_ms`)
    try w.boolean(self.`is_high_confidence`)
    try w.boolean(self.`is_hand_tracking`)
    guard self.`poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`poses`.count))
    for e in self.`poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPicoPoseInfoList {
    var v = Ros1Kuavo_msgsPicoPoseInfoList()
    v.`timestamp_ms` = try r.integer(Int64.self)
    v.`is_high_confidence` = try r.boolean()
    v.`is_hand_tracking` = try r.boolean()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`poses` = []
    v.`poses`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`poses`.append(try Ros1Kuavo_msgsPicoPoseInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsPicoPoseRetarget: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_c516c64d21d323894b86c39aec7093372adaad3ad24e0c1604d6ce6d60358323"
  public static let nativeType = "kuavo_msgs/picoPoseRetarget"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `base_link_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `base_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `joint_position`: [Double] = Array(repeating: 0, count: 27)
  public var `joint_velocity`: [Double] = Array(repeating: 0, count: 27)
  public var `end_effector_poses`: [Ros1Geometry_msgsPoint] = Array(
    repeating: Ros1Geometry_msgsPoint(), count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`base_link_pose`.write(to: &w)
    guard self.`base_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`base_velocity` {
      try w.float64(e)
    }
    guard self.`joint_position`.count == 27 else { throw RosError(22) }
    for e in self.`joint_position` {
      try w.float64(e)
    }
    guard self.`joint_velocity`.count == 27 else { throw RosError(22) }
    for e in self.`joint_velocity` {
      try w.float64(e)
    }
    guard self.`end_effector_poses`.count == 4 else { throw RosError(22) }
    for e in self.`end_effector_poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPicoPoseRetarget {
    var v = Ros1Kuavo_msgsPicoPoseRetarget()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`base_link_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count2 = 6
    v.`base_velocity` = []
    v.`base_velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`base_velocity`.append(try r.float64())
    }
    let count3 = 27
    v.`joint_position` = []
    v.`joint_position`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_position`.append(try r.float64())
    }
    let count4 = 27
    v.`joint_velocity` = []
    v.`joint_velocity`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`joint_velocity`.append(try r.float64())
    }
    let count5 = 4
    v.`end_effector_poses` = []
    v.`end_effector_poses`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`end_effector_poses`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsPlanArmState: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_f658938a7d2cab0cdb3714e1330594371711f106f7ff7c9542c1fc5804ed079b"
  public static let nativeType = "kuavo_msgs/planArmState"
  public static let nativeIdentity: String? = nil
  public var `progress`: Int32 = 0
  public var `is_finished`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`progress`)
    try w.boolean(self.`is_finished`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPlanArmState {
    var v = Ros1Kuavo_msgsPlanArmState()
    v.`progress` = try r.integer(Int32.self)
    v.`is_finished` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest: Canonical {
  public static let maximumWireBytes = 29560
  public static let codecIdentity =
    "UWVMROS1_bd6f732aaa84ae6643d17e856993945498116ef4e7769e08c5b4855d8d5b4865"
  public static let nativeType = "kuavo_msgs/planArmTrajectoryBezierCurveRequest"
  public static let nativeIdentity: String? = nil
  public var `multi_joint_bezier_trajectory`: [Ros1Kuavo_msgsJointBezierTrajectory] = []
  public var `start_frame_time`: Double = 0
  public var `end_frame_time`: Double = 0
  public var `joint_names`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`multi_joint_bezier_trajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_joint_bezier_trajectory`.count))
    for e in self.`multi_joint_bezier_trajectory` {
      try e.write(to: &w)
    }
    try w.float64(self.`start_frame_time`)
    try w.float64(self.`end_frame_time`)
    guard self.`joint_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest
  {
    var v = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`multi_joint_bezier_trajectory` = []
    v.`multi_joint_bezier_trajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`multi_joint_bezier_trajectory`.append(
        try Ros1Kuavo_msgsJointBezierTrajectory.read(from: &r))
    }
    v.`start_frame_time` = try r.float64()
    v.`end_frame_time` = try r.float64()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_00e6a99ebf6d4712e8ec2619535b3490b0d422580d8f1965e33f10543fc27b66"
  public static let nativeType = "kuavo_msgs/planArmTrajectoryBezierCurveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse
  {
    var v = Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest: Canonical {
  public static let maximumWireBytes = 8728
  public static let codecIdentity =
    "UWVMROS1_afc4c22f3fe55c5ca5b63d0f79b292a92e0a55a2021fe4621a3fd22c91a25490"
  public static let nativeType = "kuavo_msgs/planArmTrajectoryCubicSplineRequest"
  public static let nativeIdentity: String? = nil
  public var `joint_trajectory`: Ros1Trajectory_msgsJointTrajectory =
    Ros1Trajectory_msgsJointTrajectory()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`joint_trajectory`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest
  {
    var v = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest()
    v.`joint_trajectory` = try Ros1Trajectory_msgsJointTrajectory.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_774b62fb3350e85125ec570db082a036b108bc5f36483b35b98bd632fc31a6c2"
  public static let nativeType = "kuavo_msgs/planArmTrajectoryCubicSplineResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse
  {
    var v = Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsPlaymusicRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_2a349ee4a8190253d22453eb1a2455647ec65fbe0ae6461155288c874fcbe76c"
  public static let nativeType = "kuavo_msgs/playmusicRequest"
  public static let nativeIdentity: String? = nil
  public var `music_number`: String = ""
  public var `volume`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`music_number`, bound: 256)
    try w.integer(self.`volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPlaymusicRequest {
    var v = Ros1Kuavo_msgsPlaymusicRequest()
    v.`music_number` = try r.string(bound: 256)
    v.`volume` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Kuavo_msgsPlaymusicResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e072b42b1fe3c1f478b44656375fb9f1a246b24813126254e12c7a15eb770788"
  public static let nativeType = "kuavo_msgs/playmusicResponse"
  public static let nativeIdentity: String? = nil
  public var `success_flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success_flag`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsPlaymusicResponse {
    var v = Ros1Kuavo_msgsPlaymusicResponse()
    v.`success_flag` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsRecordArmHandPose: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_96c99a2bc1b6e6925510aeaed151da5676d3bbed7cc3a7b8505cda9a3fd6485f"
  public static let nativeType = "kuavo_msgs/recordArmHandPose"
  public static let nativeIdentity: String? = nil
  public var `left_pose`: Ros1Kuavo_msgsArmHandPose = Ros1Kuavo_msgsArmHandPose()
  public var `right_pose`: Ros1Kuavo_msgsArmHandPose = Ros1Kuavo_msgsArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRecordArmHandPose {
    var v = Ros1Kuavo_msgsRecordArmHandPose()
    v.`left_pose` = try Ros1Kuavo_msgsArmHandPose.read(from: &r)
    v.`right_pose` = try Ros1Kuavo_msgsArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsRecordmusicRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_d076a9e4c8d1fa77a223bfa94e2cf561f611b6096f65b04204b86b2b8324e0bd"
  public static let nativeType = "kuavo_msgs/recordmusicRequest"
  public static let nativeIdentity: String? = nil
  public var `music_number`: String = ""
  public var `time_out`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`music_number`, bound: 256)
    try w.integer(self.`time_out`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRecordmusicRequest {
    var v = Ros1Kuavo_msgsRecordmusicRequest()
    v.`music_number` = try r.string(bound: 256)
    v.`time_out` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Kuavo_msgsRecordmusicResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6c5e189aae3bc1f824a5025b6a4b00cf53c147a9d4a8c44850726e243ae83861"
  public static let nativeType = "kuavo_msgs/recordmusicResponse"
  public static let nativeIdentity: String? = nil
  public var `success_flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success_flag`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRecordmusicResponse {
    var v = Ros1Kuavo_msgsRecordmusicResponse()
    v.`success_flag` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsRobotArmQVVD: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_1f364a0b8cdd5f9db4a5f83d4c677ad87680b0bbbd8e2f2b114522359dabf04c"
  public static let nativeType = "kuavo_msgs/robotArmQVVD"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotArmQVVD {
    var v = Ros1Kuavo_msgsRobotArmQVVD()
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
public struct Ros1Kuavo_msgsRobotBodyMatrices: Canonical {
  public static let maximumWireBytes = 4840
  public static let codecIdentity =
    "UWVMROS1_13513ef94b12b9fdbba594455112bb5943ead6664b50b3a64428beeed71c6f5d"
  public static let nativeType = "kuavo_msgs/robotBodyMatrices"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `timestamp`: Ros1Time = Ros1Time()
  public var `matrices_data`: [Double] = []
  public var `num_matrices`: UInt32 = 0
  public var `body_parts`: [String] = []
  public var `data_source`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`timestamp`.write(to: &w)
    guard self.`matrices_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`matrices_data`.count))
    for e in self.`matrices_data` {
      try w.float64(e)
    }
    try w.integer(self.`num_matrices`)
    guard self.`body_parts`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`body_parts`.count))
    for e in self.`body_parts` {
      try w.string(e, bound: 256)
    }
    try w.string(self.`data_source`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotBodyMatrices {
    var v = Ros1Kuavo_msgsRobotBodyMatrices()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`timestamp` = try Ros1Time.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`matrices_data` = []
    v.`matrices_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`matrices_data`.append(try r.float64())
    }
    v.`num_matrices` = try r.integer(UInt32.self)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`body_parts` = []
    v.`body_parts`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`body_parts`.append(try r.string(bound: 256))
    }
    v.`data_source` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsRobotHandPosition: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_3dbded158dee1f75041282790dc3d776f604e03c0335d8e9dc6b38ad136c3575"
  public static let nativeType = "kuavo_msgs/robotHandPosition"
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
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotHandPosition {
    var v = Ros1Kuavo_msgsRobotHandPosition()
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
public struct Ros1Kuavo_msgsRobotHeadMotionData: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_e3e8d5f01513b9d351f628901cebeb01eb0852e51e91a6fe74da656fb5c751bd"
  public static let nativeType = "kuavo_msgs/robotHeadMotionData"
  public static let nativeIdentity: String? = nil
  public var `joint_data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_data`.count))
    for e in self.`joint_data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotHeadMotionData {
    var v = Ros1Kuavo_msgsRobotHeadMotionData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_data` = []
    v.`joint_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_data`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsRobotState: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_3a52e2bf289af0445b3f53e85238efd5eb79788aaa5cf32eba0212266c141747"
  public static let nativeType = "kuavo_msgs/robotState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `q`: [Double] = []
  public var `v`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
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
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotState {
    var v = Ros1Kuavo_msgsRobotState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`q` = []
    v.`q`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`q`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`v` = []
    v.`v`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`v`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsRobotSwitchPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_140d6e179bf9c5d4ca2b2e42ea4438e5ff8dd59910345e5e46e20db075bc173c"
  public static let nativeType = "kuavo_msgs/robotSwitchPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`status`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotSwitchPoseRequest {
    var v = Ros1Kuavo_msgsRobotSwitchPoseRequest()
    v.`status` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsRobotSwitchPoseResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_d5095cdc52058e4525c2b7f367352d2cc6e817b0ba3e9b521b29993220b34b82"
  public static let nativeType = "kuavo_msgs/robotSwitchPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotSwitchPoseResponse
  {
    var v = Ros1Kuavo_msgsRobotSwitchPoseResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Std_msgsFloat64MultiArray: Canonical {
  public static let maximumWireBytes = 1264
  public static let codecIdentity =
    "UWVMROS1_505ab8c50603482c78cd75d2961b416f9c15ac5f4f33766ce0c6ddb8811952e0"
  public static let nativeType = "std_msgs/Float64MultiArray"
  public static let nativeIdentity: String? = nil
  public var `layout`: Ros1Std_msgsMultiArrayLayout = Ros1Std_msgsMultiArrayLayout()
  public var `data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`layout`.write(to: &w)
    guard self.`data`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsFloat64MultiArray {
    var v = Ros1Std_msgsFloat64MultiArray()
    v.`layout` = try Ros1Std_msgsMultiArrayLayout.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 128 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsRobotWaistControl: Canonical {
  public static let maximumWireBytes = 1536
  public static let codecIdentity =
    "UWVMROS1_3e71b95a60d90f00a56eefd1555101c1d0d898963968d1dcfc3d2a1057126b74"
  public static let nativeType = "kuavo_msgs/robotWaistControl"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `data`: Ros1Std_msgsFloat64MultiArray = Ros1Std_msgsFloat64MultiArray()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsRobotWaistControl {
    var v = Ros1Kuavo_msgsRobotWaistControl()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`data` = try Ros1Std_msgsFloat64MultiArray.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsSensorsData: Canonical {
  public static let maximumWireBytes = 9848
  public static let codecIdentity =
    "UWVMROS1_23303add22b51fe745c3ba5986a823d979d2f0a548af4701237da30b135bfe22"
  public static let nativeType = "kuavo_msgs/sensorsData"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `sensor_time`: Ros1Time = Ros1Time()
  public var `joint_data`: Ros1Kuavo_msgsJointData = Ros1Kuavo_msgsJointData()
  public var `imu_data`: Ros1Kuavo_msgsImuData = Ros1Kuavo_msgsImuData()
  public var `end_effector_data`: Ros1Kuavo_msgsEndEffectorData = Ros1Kuavo_msgsEndEffectorData()
  public var `FTsensor_data`: Ros1Kuavo_msgsFTsensorData = Ros1Kuavo_msgsFTsensorData()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`sensor_time`.write(to: &w)
    try self.`joint_data`.write(to: &w)
    try self.`imu_data`.write(to: &w)
    try self.`end_effector_data`.write(to: &w)
    try self.`FTsensor_data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSensorsData {
    var v = Ros1Kuavo_msgsSensorsData()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`sensor_time` = try Ros1Time.read(from: &r)
    v.`joint_data` = try Ros1Kuavo_msgsJointData.read(from: &r)
    v.`imu_data` = try Ros1Kuavo_msgsImuData.read(from: &r)
    v.`end_effector_data` = try Ros1Kuavo_msgsEndEffectorData.read(from: &r)
    v.`FTsensor_data` = try Ros1Kuavo_msgsFTsensorData.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsSetContactForceInterpParamsRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_ea248485955eb6a12dd10962833e4dcbfab36ee4425cc07539567f03fb0e8421"
  public static let nativeType = "kuavo_msgs/setContactForceInterpParamsRequest"
  public static let nativeIdentity: String? = nil
  public var `transition_time`: Double = 0
  public var `interpolation_speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`transition_time`)
    try w.float64(self.`interpolation_speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetContactForceInterpParamsRequest
  {
    var v = Ros1Kuavo_msgsSetContactForceInterpParamsRequest()
    v.`transition_time` = try r.float64()
    v.`interpolation_speed` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsSetContactForceInterpParamsResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_cba26e18d897f5bc02217172486e3271bb36da79a1d57feb30507fbc3d393986"
  public static let nativeType = "kuavo_msgs/setContactForceInterpParamsResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetContactForceInterpParamsResponse
  {
    var v = Ros1Kuavo_msgsSetContactForceInterpParamsResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetHwIntialStateRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_625eb67a22347aafcc0ff12a04b1e7a6727a6edf1af25c6fbe756710b0b27389"
  public static let nativeType = "kuavo_msgs/setHwIntialStateRequest"
  public static let nativeIdentity: String? = nil
  public var `q_intial`: [Double] = []
  public var `v_intial`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`q_intial`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_intial`.count))
    for e in self.`q_intial` {
      try w.float64(e)
    }
    guard self.`v_intial`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`v_intial`.count))
    for e in self.`v_intial` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetHwIntialStateRequest
  {
    var v = Ros1Kuavo_msgsSetHwIntialStateRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`q_intial` = []
    v.`q_intial`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`q_intial`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`v_intial` = []
    v.`v_intial`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`v_intial`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_msgsSetHwIntialStateResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_317d7531d5126d5c2788e3fd2e8de7e4906d14f2972b5625f88c884ffcd6b4ed"
  public static let nativeType = "kuavo_msgs/setHwIntialStateResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetHwIntialStateResponse
  {
    var v = Ros1Kuavo_msgsSetHwIntialStateResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetMmCtrlFrameRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e470a541d808efb7692cd9ca591f0390191b2e18c25931579c10d25a021c5cac"
  public static let nativeType = "kuavo_msgs/setMmCtrlFrameRequest"
  public static let nativeIdentity: String? = nil
  public var `frame`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`frame`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetMmCtrlFrameRequest {
    var v = Ros1Kuavo_msgsSetMmCtrlFrameRequest()
    v.`frame` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsSetMmCtrlFrameResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_207ff9a5522860a36f1e4157da5e97cc6adab58d388522c6f4038c7f7c249127"
  public static let nativeType = "kuavo_msgs/setMmCtrlFrameResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `currentFrame`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.integer(self.`currentFrame`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetMmCtrlFrameResponse {
    var v = Ros1Kuavo_msgsSetMmCtrlFrameResponse()
    v.`result` = try r.boolean()
    v.`currentFrame` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_22ad54033813c5e23840d2a3ed11f76e22e22201e9d95fd0d4e7bc3f1cba5a14"
  public static let nativeType = "kuavo_msgs/setMotorEncoderRoundServiceRequest"
  public static let nativeIdentity: String? = nil
  public var `motor_id`: Int32 = 0
  public var `direction`: Int32 = 0
  public var `save_offset`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`motor_id`)
    try w.integer(self.`direction`)
    try w.boolean(self.`save_offset`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest
  {
    var v = Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest()
    v.`motor_id` = try r.integer(Int32.self)
    v.`direction` = try r.integer(Int32.self)
    v.`save_offset` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_006f40ae705ec93b138b9fc1fad8f443a400b94b11d735025923587164221390"
  public static let nativeType = "kuavo_msgs/setMotorEncoderRoundServiceResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse
  {
    var v = Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetRuckigPlannerParamsRequest: Canonical {
  public static let maximumWireBytes = 662
  public static let codecIdentity =
    "UWVMROS1_262e25da01761ab01bc4fbe8b73524553213097645bbb28bc672655e10e91205"
  public static let nativeType = "kuavo_msgs/setRuckigPlannerParamsRequest"
  public static let nativeIdentity: String? = nil
  public var `planner_index`: Int8 = 0
  public var `velocity_max`: [Double] = []
  public var `velocity_min`: [Double] = []
  public var `acceleration_max`: [Double] = []
  public var `acceleration_min`: [Double] = []
  public var `jerk_max`: [Double] = []
  public var `is_sync`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`planner_index`)
    guard self.`velocity_max`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity_max`.count))
    for e in self.`velocity_max` {
      try w.float64(e)
    }
    guard self.`velocity_min`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity_min`.count))
    for e in self.`velocity_min` {
      try w.float64(e)
    }
    guard self.`acceleration_max`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`acceleration_max`.count))
    for e in self.`acceleration_max` {
      try w.float64(e)
    }
    guard self.`acceleration_min`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`acceleration_min`.count))
    for e in self.`acceleration_min` {
      try w.float64(e)
    }
    guard self.`jerk_max`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`jerk_max`.count))
    for e in self.`jerk_max` {
      try w.float64(e)
    }
    try w.boolean(self.`is_sync`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetRuckigPlannerParamsRequest
  {
    var v = Ros1Kuavo_msgsSetRuckigPlannerParamsRequest()
    v.`planner_index` = try r.integer(Int8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocity_max` = []
    v.`velocity_max`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocity_max`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`velocity_min` = []
    v.`velocity_min`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`velocity_min`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`acceleration_max` = []
    v.`acceleration_max`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`acceleration_max`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`acceleration_min` = []
    v.`acceleration_min`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`acceleration_min`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`jerk_max` = []
    v.`jerk_max`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`jerk_max`.append(try r.float64())
    }
    v.`is_sync` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_msgsSetRuckigPlannerParamsResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_eb63f08d9a4e74bf0bb7f9282d89f72c2b92761929a9b0195ec60d59452f6bc7"
  public static let nativeType = "kuavo_msgs/setRuckigPlannerParamsResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSetRuckigPlannerParamsResponse
  {
    var v = Ros1Kuavo_msgsSetRuckigPlannerParamsResponse()
    v.`result` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSetTagIdRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0ea1935dec369a91e662aedd2d6927e33662bab5e43298b824f1b7de11f1bd7b"
  public static let nativeType = "kuavo_msgs/setTagIdRequest"
  public static let nativeIdentity: String? = nil
  public var `tag_id`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`tag_id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetTagIdRequest {
    var v = Ros1Kuavo_msgsSetTagIdRequest()
    v.`tag_id` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsSetTagIdResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_72de7136b0a989ae4cb2c44c7571a66693729fba977030208b9a12361d1450b8"
  public static let nativeType = "kuavo_msgs/setTagIdResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `tag_id`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`tag_id`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSetTagIdResponse {
    var v = Ros1Kuavo_msgsSetTagIdResponse()
    v.`success` = try r.boolean()
    v.`tag_id` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSingleStepControlRequest: Canonical {
  public static let maximumWireBytes = 4980
  public static let codecIdentity =
    "UWVMROS1_6607efed62ff2f9c23cab328b64b7c35756962b0bbeb1af0977dcfbdbea2a73b"
  public static let nativeType = "kuavo_msgs/singleStepControlRequest"
  public static let nativeIdentity: String? = nil
  public var `foot_pose_target_trajectories`: Ros1Kuavo_msgsFootPoseTargetTrajectories =
    Ros1Kuavo_msgsFootPoseTargetTrajectories()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`foot_pose_target_trajectories`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSingleStepControlRequest
  {
    var v = Ros1Kuavo_msgsSingleStepControlRequest()
    v.`foot_pose_target_trajectories` = try Ros1Kuavo_msgsFootPoseTargetTrajectories.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsSingleStepControlResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b5c0a376b5738f83b1406e895c5db58d5bf81e20506c39beeaa331793d4b0ed0"
  public static let nativeType = "kuavo_msgs/singleStepControlResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSingleStepControlResponse
  {
    var v = Ros1Kuavo_msgsSingleStepControlResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsStairAlignmentSrvRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_b62638d7e9ff883987a217605c039ac71f9bf9b248e42958e41c44518a4db6ba"
  public static let nativeType = "kuavo_msgs/stairAlignmentSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `tag_id`: UInt8 = 0
  public var `offset_x`: Double = 0
  public var `offset_y`: Double = 0
  public var `offset_yaw`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`tag_id`)
    try w.float64(self.`offset_x`)
    try w.float64(self.`offset_y`)
    try w.float64(self.`offset_yaw`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsStairAlignmentSrvRequest
  {
    var v = Ros1Kuavo_msgsStairAlignmentSrvRequest()
    v.`tag_id` = try r.integer(UInt8.self)
    v.`offset_x` = try r.float64()
    v.`offset_y` = try r.float64()
    v.`offset_yaw` = try r.float64()
    return v
  }
}
public struct Ros1Kuavo_msgsStairAlignmentSrvResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_66232d726f1351b04e09fefcfa983a97df0f1844f59b584bcc0130360df3648c"
  public static let nativeType = "kuavo_msgs/stairAlignmentSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsStairAlignmentSrvResponse
  {
    var v = Ros1Kuavo_msgsStairAlignmentSrvResponse()
    v.`result` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSwitchControllerRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_6aa7e95aa6baff80769d12dd04202b9b7ef3b2fcff53f7427601d387f5f52d7a"
  public static let nativeType = "kuavo_msgs/switchControllerRequest"
  public static let nativeIdentity: String? = nil
  public var `controller_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`controller_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSwitchControllerRequest
  {
    var v = Ros1Kuavo_msgsSwitchControllerRequest()
    v.`controller_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSwitchControllerResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_f6ade06123cc21d53344151f9cd39e80ac7722d032b398f25432ba323bdfec69"
  public static let nativeType = "kuavo_msgs/switchControllerResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSwitchControllerResponse
  {
    var v = Ros1Kuavo_msgsSwitchControllerResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSwitchGaitByName: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_7afbe1b0fa72af5ea4e9ac707669866c77e05e941c0491e17247b9a569c05944"
  public static let nativeType = "kuavo_msgs/switchGaitByName"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `gait_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`gait_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsSwitchGaitByName {
    var v = Ros1Kuavo_msgsSwitchGaitByName()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`gait_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_msgsSwitchToNextControllerRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_73be6d8d17af6f6d92add04f8b7a5a2767e2639ddcb3d63b336320f35327950e"
  public static let nativeType = "kuavo_msgs/switchToNextControllerRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSwitchToNextControllerRequest
  {
    var v = Ros1Kuavo_msgsSwitchToNextControllerRequest()
    return v
  }
}
public struct Ros1Kuavo_msgsSwitchToNextControllerResponse: Canonical {
  public static let maximumWireBytes = 789
  public static let codecIdentity =
    "UWVMROS1_968c3f7bbfc784eb98ea0ea2dddf0ea4f80a71ffcc8d95f193c819b218e8702f"
  public static let nativeType = "kuavo_msgs/switchToNextControllerResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `current_controller`: String = ""
  public var `next_controller`: String = ""
  public var `current_index`: Int32 = 0
  public var `next_index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`current_controller`, bound: 256)
    try w.string(self.`next_controller`, bound: 256)
    try w.integer(self.`current_index`)
    try w.integer(self.`next_index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsSwitchToNextControllerResponse
  {
    var v = Ros1Kuavo_msgsSwitchToNextControllerResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`current_controller` = try r.string(bound: 256)
    v.`next_controller` = try r.string(bound: 256)
    v.`current_index` = try r.integer(Int32.self)
    v.`next_index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsTagDataArray: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_bd1ca7cda22d48d12ee69b784abdf507a8271e04e0555a9372cc5f5ea54fb486"
  public static let nativeType = "kuavo_msgs/tagDataArray"
  public static let nativeIdentity: String? = nil
  public var `tag_ids`: [Int32] = []
  public var `tag_poses`: [Ros1Geometry_msgsPose] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`tag_ids`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tag_ids`.count))
    for e in self.`tag_ids` {
      try w.integer(e)
    }
    guard self.`tag_poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`tag_poses`.count))
    for e in self.`tag_poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTagDataArray {
    var v = Ros1Kuavo_msgsTagDataArray()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`tag_ids` = []
    v.`tag_ids`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`tag_ids`.append(try r.integer(Int32.self))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`tag_poses` = []
    v.`tag_poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`tag_poses`.append(try Ros1Geometry_msgsPose.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmd: Canonical {
  public static let maximumWireBytes = 615
  public static let codecIdentity =
    "UWVMROS1_b2de00afe4c247abce8f642ee285e0944e35ea3cf4107b4dacb4b004c03dfbe6"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmd"
  public static let nativeIdentity: String? = nil
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPose = Ros1Kuavo_msgsTwoArmHandPose()
  public var `use_custom_ik_param`: Bool = false
  public var `joint_angles_as_q0`: Bool = false
  public var `ik_param`: Ros1Kuavo_msgsIkSolveParam = Ros1Kuavo_msgsIkSolveParam()
  public var `frame`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`hand_poses`.write(to: &w)
    try w.boolean(self.`use_custom_ik_param`)
    try w.boolean(self.`joint_angles_as_q0`)
    try self.`ik_param`.write(to: &w)
    try w.integer(self.`frame`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTwoArmHandPoseCmd {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmd()
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPose.read(from: &r)
    v.`use_custom_ik_param` = try r.boolean()
    v.`joint_angles_as_q0` = try r.boolean()
    v.`ik_param` = try Ros1Kuavo_msgsIkSolveParam.read(from: &r)
    v.`frame` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseFree: Canonical {
  public static let maximumWireBytes = 696
  public static let codecIdentity =
    "UWVMROS1_a4d9e75be28cdbbcf5b930ca7a117dcfb16dc413200391e2bb2dee903a05607d"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseFree"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_pose`: Ros1Kuavo_msgsArmHandPoseFree = Ros1Kuavo_msgsArmHandPoseFree()
  public var `right_pose`: Ros1Kuavo_msgsArmHandPoseFree = Ros1Kuavo_msgsArmHandPoseFree()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTwoArmHandPoseFree {
    var v = Ros1Kuavo_msgsTwoArmHandPoseFree()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`left_pose` = try Ros1Kuavo_msgsArmHandPoseFree.read(from: &r)
    v.`right_pose` = try Ros1Kuavo_msgsArmHandPoseFree.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmdFree: Canonical {
  public static let maximumWireBytes = 763
  public static let codecIdentity =
    "UWVMROS1_eaa74e02440a8bd43aa6d75eac26651041af7b84602b72cc17d2cd73c40b3d0d"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmdFree"
  public static let nativeIdentity: String? = nil
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPoseFree = Ros1Kuavo_msgsTwoArmHandPoseFree()
  public var `use_custom_ik_param`: Bool = false
  public var `joint_angles_as_q0`: Bool = false
  public var `ik_param`: Ros1Kuavo_msgsIkSolveParam = Ros1Kuavo_msgsIkSolveParam()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`hand_poses`.write(to: &w)
    try w.boolean(self.`use_custom_ik_param`)
    try w.boolean(self.`joint_angles_as_q0`)
    try self.`ik_param`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsTwoArmHandPoseCmdFree {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmdFree()
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPoseFree.read(from: &r)
    v.`use_custom_ik_param` = try r.boolean()
    v.`joint_angles_as_q0` = try r.boolean()
    v.`ik_param` = try Ros1Kuavo_msgsIkSolveParam.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest: Canonical {
  public static let maximumWireBytes = 763
  public static let codecIdentity =
    "UWVMROS1_6e9adfdc52db0e35c32cf3bc87ca6a02f393833e750c8282b3a6f94ecbc4c144"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `twoArmHandPoseCmdFreeRequest`: Ros1Kuavo_msgsTwoArmHandPoseCmdFree =
    Ros1Kuavo_msgsTwoArmHandPoseCmdFree()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`twoArmHandPoseCmdFreeRequest`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest
  {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest()
    v.`twoArmHandPoseCmdFreeRequest` = try Ros1Kuavo_msgsTwoArmHandPoseCmdFree.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse: Canonical {
  public static let maximumWireBytes = 970
  public static let codecIdentity =
    "UWVMROS1_c8c8fe2a765c984ede1c8607cb907de1fa060c9e79ad920e0f495e7bd8c82a31"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `with_torso`: Bool = false
  public var `q_arm`: [Double] = []
  public var `q_torso`: [Double] = []
  public var `time_cost`: Double = 0
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPoseFree = Ros1Kuavo_msgsTwoArmHandPoseFree()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.boolean(self.`with_torso`)
    guard self.`q_arm`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_arm`.count))
    for e in self.`q_arm` {
      try w.float64(e)
    }
    guard self.`q_torso`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_torso`.count))
    for e in self.`q_torso` {
      try w.float64(e)
    }
    try w.float64(self.`time_cost`)
    try self.`hand_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse
  {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse()
    v.`success` = try r.boolean()
    v.`with_torso` = try r.boolean()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`q_arm` = []
    v.`q_arm`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`q_arm`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`q_torso` = []
    v.`q_torso`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`q_torso`.append(try r.float64())
    }
    v.`time_cost` = try r.float64()
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPoseFree.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest: Canonical {
  public static let maximumWireBytes = 615
  public static let codecIdentity =
    "UWVMROS1_14d5004996c8ab84c1e5e9c1259bd1d201e2826be4a5dda14c240f7e02ac0bbd"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmdSrvRequest"
  public static let nativeIdentity: String? = nil
  public var `twoArmHandPoseCmdRequest`: Ros1Kuavo_msgsTwoArmHandPoseCmd =
    Ros1Kuavo_msgsTwoArmHandPoseCmd()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`twoArmHandPoseCmdRequest`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest
  {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest()
    v.`twoArmHandPoseCmdRequest` = try Ros1Kuavo_msgsTwoArmHandPoseCmd.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse: Canonical {
  public static let maximumWireBytes = 1078
  public static let codecIdentity =
    "UWVMROS1_fab07467cba381d8e73b0c9c574fe029b01ea29a0673de186eddee01ed7057eb"
  public static let nativeType = "kuavo_msgs/twoArmHandPoseCmdSrvResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `with_torso`: Bool = false
  public var `q_arm`: [Double] = []
  public var `q_torso`: [Double] = []
  public var `time_cost`: Double = 0
  public var `error_reason`: String = ""
  public var `hand_poses`: Ros1Kuavo_msgsTwoArmHandPose = Ros1Kuavo_msgsTwoArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.boolean(self.`with_torso`)
    guard self.`q_arm`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_arm`.count))
    for e in self.`q_arm` {
      try w.float64(e)
    }
    guard self.`q_torso`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_torso`.count))
    for e in self.`q_torso` {
      try w.float64(e)
    }
    try w.float64(self.`time_cost`)
    try w.string(self.`error_reason`, bound: 256)
    try self.`hand_poses`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse
  {
    var v = Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse()
    v.`success` = try r.boolean()
    v.`with_torso` = try r.boolean()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`q_arm` = []
    v.`q_arm`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`q_arm`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`q_torso` = []
    v.`q_torso`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`q_torso`.append(try r.float64())
    }
    v.`time_cost` = try r.float64()
    v.`error_reason` = try r.string(bound: 256)
    v.`hand_poses` = try Ros1Kuavo_msgsTwoArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsXsensePoseInfo: Canonical {
  public static let maximumWireBytes = 320
  public static let codecIdentity =
    "UWVMROS1_efeb05e63c1cca8ac28ee7c2fc9f1a2b12d95c3b96994626eb1bc2ff5e727c84"
  public static let nativeType = "kuavo_msgs/xsensePoseInfo"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `segment_id`: UInt32 = 0
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`segment_id`)
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsXsensePoseInfo {
    var v = Ros1Kuavo_msgsXsensePoseInfo()
    v.`name` = try r.string(bound: 256)
    v.`segment_id` = try r.integer(UInt32.self)
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Kuavo_msgsXsensePoseInfoList: Canonical {
  public static let maximumWireBytes = 2836
  public static let codecIdentity =
    "UWVMROS1_738bca9fd4602bcc5a2b44b7b00405a07c89a8d056029f8afbf3b116165725f8"
  public static let nativeType = "kuavo_msgs/xsensePoseInfoList"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `poses`: [Ros1Kuavo_msgsXsensePoseInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`poses`.count))
    for e in self.`poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsXsensePoseInfoList {
    var v = Ros1Kuavo_msgsXsensePoseInfoList()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`poses` = []
    v.`poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`poses`.append(try Ros1Kuavo_msgsXsensePoseInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsXsensePoseRetarget: Canonical {
  public static let maximumWireBytes = 904
  public static let codecIdentity =
    "UWVMROS1_1ba734c87905a6a83cfee0bb39f2e55267d51768be9ec64ae6ac652ebec559eb"
  public static let nativeType = "kuavo_msgs/xsensePoseRetarget"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `base_link_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `base_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `joint_position`: [Double] = Array(repeating: 0, count: 27)
  public var `joint_velocity`: [Double] = Array(repeating: 0, count: 27)
  public var `end_effector_poses`: [Ros1Geometry_msgsPoint] = Array(
    repeating: Ros1Geometry_msgsPoint(), count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`base_link_pose`.write(to: &w)
    guard self.`base_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`base_velocity` {
      try w.float64(e)
    }
    guard self.`joint_position`.count == 27 else { throw RosError(22) }
    for e in self.`joint_position` {
      try w.float64(e)
    }
    guard self.`joint_velocity`.count == 27 else { throw RosError(22) }
    for e in self.`joint_velocity` {
      try w.float64(e)
    }
    guard self.`end_effector_poses`.count == 4 else { throw RosError(22) }
    for e in self.`end_effector_poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsXsensePoseRetarget {
    var v = Ros1Kuavo_msgsXsensePoseRetarget()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`base_link_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count2 = 6
    v.`base_velocity` = []
    v.`base_velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`base_velocity`.append(try r.float64())
    }
    let count3 = 27
    v.`joint_position` = []
    v.`joint_position`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_position`.append(try r.float64())
    }
    let count4 = 27
    v.`joint_velocity` = []
    v.`joint_velocity`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`joint_velocity`.append(try r.float64())
    }
    let count5 = 4
    v.`end_effector_poses` = []
    v.`end_effector_poses`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`end_effector_poses`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_msgsYoloOutputData: Canonical {
  public static let maximumWireBytes = 288
  public static let codecIdentity =
    "UWVMROS1_9ba281150bdac894cd7d0a603896f7b145be3519c05b2748884c884ab39abe05"
  public static let nativeType = "kuavo_msgs/yoloOutputData"
  public static let nativeIdentity: String? = nil
  public var `class_name`: String = ""
  public var `class_id`: Int32 = 0
  public var `confidence`: Float = 0
  public var `x_pos`: Float = 0
  public var `y_pos`: Float = 0
  public var `height`: Float = 0
  public var `width`: Float = 0
  public var `area_ratio`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`class_name`, bound: 256)
    try w.integer(self.`class_id`)
    try w.float32(self.`confidence`)
    try w.float32(self.`x_pos`)
    try w.float32(self.`y_pos`)
    try w.float32(self.`height`)
    try w.float32(self.`width`)
    try w.float32(self.`area_ratio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsYoloOutputData {
    var v = Ros1Kuavo_msgsYoloOutputData()
    v.`class_name` = try r.string(bound: 256)
    v.`class_id` = try r.integer(Int32.self)
    v.`confidence` = try r.float32()
    v.`x_pos` = try r.float32()
    v.`y_pos` = try r.float32()
    v.`height` = try r.float32()
    v.`width` = try r.float32()
    v.`area_ratio` = try r.float32()
    return v
  }
}
public struct Ros1Kuavo_msgsYoloDetection: Canonical {
  public static let maximumWireBytes = 2580
  public static let codecIdentity =
    "UWVMROS1_95ad858fbc422a7f9b3ef00b11c78e07e859a76983e69e57c7ce88c88626b3d6"
  public static let nativeType = "kuavo_msgs/yoloDetection"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `data`: [Ros1Kuavo_msgsYoloOutputData] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`data`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_msgsYoloDetection {
    var v = Ros1Kuavo_msgsYoloDetection()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try Ros1Kuavo_msgsYoloOutputData.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_pico_gmrAmpJoyRouteRequest: Canonical {
  public static let maximumWireBytes = 806
  public static let codecIdentity =
    "UWVMROS1_b496e1da35802ea32c834576fa6d1565bf4aafebd82e2e953654e32614e19dbc"
  public static let nativeType = "kuavo_pico_gmr/AmpJoyRouteRequest"
  public static let nativeIdentity: String? = nil
  public static let `ACTION_PREPARE`: UInt8 = 1
  public static let `ACTION_STATUS`: UInt8 = 2
  public static let `ACTION_ABORT`: UInt8 = 3
  public static let `REASON_CONTROLLER_EVENT`: UInt8 = 1
  public static let `REASON_CONTROLLER_QUERY`: UInt8 = 2
  public static let `REASON_SET_TOPIC_RECOVERY`: UInt8 = 3
  public static let `REASON_CONVERTER_RECOVERY`: UInt8 = 4
  public var `action`: UInt8 = 0
  public var `manager_epoch`: String = ""
  public var `route_generation`: UInt64 = 0
  public var `reason`: UInt8 = 0
  public var `controller_event_revision`: UInt64 = 0
  public var `controller_event_stamp`: Ros1Time = Ros1Time()
  public var `from_controller`: String = ""
  public var `to_controller`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`action`)
    try w.string(self.`manager_epoch`, bound: 256)
    try w.integer(self.`route_generation`)
    try w.integer(self.`reason`)
    try w.integer(self.`controller_event_revision`)
    try self.`controller_event_stamp`.write(to: &w)
    try w.string(self.`from_controller`, bound: 256)
    try w.string(self.`to_controller`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_pico_gmrAmpJoyRouteRequest {
    var v = Ros1Kuavo_pico_gmrAmpJoyRouteRequest()
    v.`action` = try r.integer(UInt8.self)
    v.`manager_epoch` = try r.string(bound: 256)
    v.`route_generation` = try r.integer(UInt64.self)
    v.`reason` = try r.integer(UInt8.self)
    v.`controller_event_revision` = try r.integer(UInt64.self)
    v.`controller_event_stamp` = try Ros1Time.read(from: &r)
    v.`from_controller` = try r.string(bound: 256)
    v.`to_controller` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_pico_gmrAmpJoyRouteResponse: Canonical {
  public static let maximumWireBytes = 533
  public static let codecIdentity =
    "UWVMROS1_8c5184c18056610e7b6bf1e6edd2a3faf33f7335df94bce91c04968ef3928014"
  public static let nativeType = "kuavo_pico_gmr/AmpJoyRouteResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `ready`: Bool = false
  public var `target_connected`: Bool = false
  public var `local_barrier_established`: Bool = false
  public var `output_button_count`: UInt8 = 0
  public var `manager_epoch`: String = ""
  public var `route_generation`: UInt64 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.boolean(self.`ready`)
    try w.boolean(self.`target_connected`)
    try w.boolean(self.`local_barrier_established`)
    try w.integer(self.`output_button_count`)
    try w.string(self.`manager_epoch`, bound: 256)
    try w.integer(self.`route_generation`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_pico_gmrAmpJoyRouteResponse
  {
    var v = Ros1Kuavo_pico_gmrAmpJoyRouteResponse()
    v.`success` = try r.boolean()
    v.`ready` = try r.boolean()
    v.`target_connected` = try r.boolean()
    v.`local_barrier_established` = try r.boolean()
    v.`output_button_count` = try r.integer(UInt8.self)
    v.`manager_epoch` = try r.string(bound: 256)
    v.`route_generation` = try r.integer(UInt64.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesArmTargetPoses: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_97f845040396ade2f3e97ab69b22879b06ec1e14b199e8598f28a3be724ed2a2"
  public static let nativeType = "kuavo_ros_interfaces/armTargetPoses"
  public static let nativeIdentity: String? = nil
  public var `times`: [Double] = []
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`times`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`times`.count))
    for e in self.`times` {
      try w.float64(e)
    }
    guard self.`values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_ros_interfacesArmTargetPoses
  {
    var v = Ros1Kuavo_ros_interfacesArmTargetPoses()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`times` = []
    v.`times`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`times`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`values` = []
    v.`values`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesBezierCurveCubicPoint: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_833ae440e34747826f7d67a8152718b7d6066b8003dd190fe992863be7817764"
  public static let nativeType = "kuavo_ros_interfaces/bezierCurveCubicPoint"
  public static let nativeIdentity: String? = nil
  public var `end_point`: [Double] = []
  public var `left_control_point`: [Double] = []
  public var `right_control_point`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`end_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`end_point`.count))
    for e in self.`end_point` {
      try w.float64(e)
    }
    guard self.`left_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_control_point`.count))
    for e in self.`left_control_point` {
      try w.float64(e)
    }
    guard self.`right_control_point`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_control_point`.count))
    for e in self.`right_control_point` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesBezierCurveCubicPoint
  {
    var v = Ros1Kuavo_ros_interfacesBezierCurveCubicPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`end_point` = []
    v.`end_point`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`end_point`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_control_point` = []
    v.`left_control_point`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_control_point`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_control_point` = []
    v.`right_control_point`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_control_point`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesJointBezierTrajectory: Canonical {
  public static let maximumWireBytes = 3172
  public static let codecIdentity =
    "UWVMROS1_171cf2fb73e32d7a59b29ff4b94d1954c7b9b53a9d91820990419d27ed95fffb"
  public static let nativeType = "kuavo_ros_interfaces/jointBezierTrajectory"
  public static let nativeIdentity: String? = nil
  public var `bezier_curve_points`: [Ros1Kuavo_ros_interfacesBezierCurveCubicPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`bezier_curve_points`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`bezier_curve_points`.count))
    for e in self.`bezier_curve_points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesJointBezierTrajectory
  {
    var v = Ros1Kuavo_ros_interfacesJointBezierTrajectory()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`bezier_curve_points` = []
    v.`bezier_curve_points`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`bezier_curve_points`.append(
        try Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1bfe2dbd86542e6066404e3c1973c1bfb284a8f65f5559cb8fb3d7718bd1e915"
  public static let nativeType = "kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest
  {
    var v = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest()
    v.`control_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_fbcce1790258668da4aa99848601f7074ffa08539bc4ee9449447ab123387435"
  public static let nativeType = "kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public var `mode`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
    try w.integer(self.`mode`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse
  {
    var v = Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse()
    v.`result` = try r.boolean()
    v.`mode` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesPlanArmState: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_5a54f550181f3b855c88fbf7752b1bdd9c8e6ddc68ab877fedb343b0deca0eb9"
  public static let nativeType = "kuavo_ros_interfaces/planArmState"
  public static let nativeIdentity: String? = nil
  public var `progress`: Int32 = 0
  public var `is_finished`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`progress`)
    try w.boolean(self.`is_finished`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Kuavo_ros_interfacesPlanArmState {
    var v = Ros1Kuavo_ros_interfacesPlanArmState()
    v.`progress` = try r.integer(Int32.self)
    v.`is_finished` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest: Canonical {
  public static let maximumWireBytes = 29560
  public static let codecIdentity =
    "UWVMROS1_0000b6a1ced744aa869707acd6f5ba6737d20c039a2b8507c408d6646d72d499"
  public static let nativeType = "kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest"
  public static let nativeIdentity: String? = nil
  public var `multi_joint_bezier_trajectory`: [Ros1Kuavo_ros_interfacesJointBezierTrajectory] = []
  public var `start_frame_time`: Double = 0
  public var `end_frame_time`: Double = 0
  public var `joint_names`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`multi_joint_bezier_trajectory`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_joint_bezier_trajectory`.count))
    for e in self.`multi_joint_bezier_trajectory` {
      try e.write(to: &w)
    }
    try w.float64(self.`start_frame_time`)
    try w.float64(self.`end_frame_time`)
    guard self.`joint_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest
  {
    var v = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`multi_joint_bezier_trajectory` = []
    v.`multi_joint_bezier_trajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`multi_joint_bezier_trajectory`.append(
        try Ros1Kuavo_ros_interfacesJointBezierTrajectory.read(from: &r))
    }
    v.`start_frame_time` = try r.float64()
    v.`end_frame_time` = try r.float64()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6ae21fa51f8999275503aa598339fa178a2a6b1921fad5cbc3006fdd3d6e4c8c"
  public static let nativeType = "kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse
  {
    var v = Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesRobotHandPosition: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_dd50bba79b85c0a712865ed4a2cbb402d9f4904904658be85e36015a20da97c7"
  public static let nativeType = "kuavo_ros_interfaces/robotHandPosition"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesRobotHandPosition
  {
    var v = Ros1Kuavo_ros_interfacesRobotHandPosition()
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
public struct Ros1Kuavo_ros_interfacesRobotHeadMotionData: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_ad19b205bead81ac20090763bf2ab60fbfe85485b170f0813eb297077809248c"
  public static let nativeType = "kuavo_ros_interfaces/robotHeadMotionData"
  public static let nativeIdentity: String? = nil
  public var `joint_data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_data`.count))
    for e in self.`joint_data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesRobotHeadMotionData
  {
    var v = Ros1Kuavo_ros_interfacesRobotHeadMotionData()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_data` = []
    v.`joint_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_data`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_aeedc378b282e01b603e63b5d7573e6fe348128c35d5812239c1876c871500ff"
  public static let nativeType = "kuavo_ros_interfaces/stopPlanArmTrajectoryRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest
  {
    var v = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest()
    return v
  }
}
public struct Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_87c79c603a6c2b4c9d5c3994414a765a8a69539a6a0aeaaae95afe3dc4814e0f"
  public static let nativeType = "kuavo_ros_interfaces/stopPlanArmTrajectoryResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse
  {
    var v = Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsBMS: Canonical {
  public static let maximumWireBytes = 453
  public static let codecIdentity =
    "UWVMROS1_5ecd5afcb63528e45be42a925160e9d64c11e19102354e52a79b064660351c4f"
  public static let nativeType = "leju_mobile_base_msgs/BMS"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `pack_voltage`: Float = 0
  public var `pack_current`: Float = 0
  public var `soc`: Float = 0
  public var `soh`: Float = 0
  public var `cell_count`: UInt8 = 0
  public var `cell_voltages`: [Float] = []
  public var `cell_temperatures`: [Float] = []
  public var `max_cell_voltage`: Float = 0
  public var `min_cell_voltage`: Float = 0
  public var `max_cell_temp`: Float = 0
  public var `min_cell_temp`: Float = 0
  public var `cycle_count`: UInt32 = 0
  public var `status_flags`: UInt32 = 0
  public var `error_code`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`pack_voltage`)
    try w.float32(self.`pack_current`)
    try w.float32(self.`soc`)
    try w.float32(self.`soh`)
    try w.integer(self.`cell_count`)
    guard self.`cell_voltages`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cell_voltages`.count))
    for e in self.`cell_voltages` {
      try w.float32(e)
    }
    guard self.`cell_temperatures`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cell_temperatures`.count))
    for e in self.`cell_temperatures` {
      try w.float32(e)
    }
    try w.float32(self.`max_cell_voltage`)
    try w.float32(self.`min_cell_voltage`)
    try w.float32(self.`max_cell_temp`)
    try w.float32(self.`min_cell_temp`)
    try w.integer(self.`cycle_count`)
    try w.integer(self.`status_flags`)
    try w.integer(self.`error_code`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsBMS {
    var v = Ros1Leju_mobile_base_msgsBMS()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pack_voltage` = try r.float32()
    v.`pack_current` = try r.float32()
    v.`soc` = try r.float32()
    v.`soh` = try r.float32()
    v.`cell_count` = try r.integer(UInt8.self)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`cell_voltages` = []
    v.`cell_voltages`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`cell_voltages`.append(try r.float32())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`cell_temperatures` = []
    v.`cell_temperatures`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`cell_temperatures`.append(try r.float32())
    }
    v.`max_cell_voltage` = try r.float32()
    v.`min_cell_voltage` = try r.float32()
    v.`max_cell_temp` = try r.float32()
    v.`min_cell_temp` = try r.float32()
    v.`cycle_count` = try r.integer(UInt32.self)
    v.`status_flags` = try r.integer(UInt32.self)
    v.`error_code` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsBaseCmdVelStatus: Canonical {
  public static let maximumWireBytes = 534
  public static let codecIdentity =
    "UWVMROS1_fc23abfcc2d6d08caedea4cbfa84ba8da572aab078682f888f378773ffe2df5f"
  public static let nativeType = "leju_mobile_base_msgs/BaseCmdVelStatus"
  public static let nativeIdentity: String? = nil
  public static let `REASON_NONE`: UInt8 = 0
  public static let `REASON_MANUAL_MODE`: UInt8 = 1
  public static let `REASON_DISABLED`: UInt8 = 2
  public static let `REASON_SOFT_ESTOP`: UInt8 = 3
  public static let `REASON_OTHER`: UInt8 = 255
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `cmd_vel_effective`: Bool = false
  public var `reason`: UInt8 = 0
  public var `description`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`cmd_vel_effective`)
    try w.integer(self.`reason`)
    try w.string(self.`description`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsBaseCmdVelStatus
  {
    var v = Ros1Leju_mobile_base_msgsBaseCmdVelStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`cmd_vel_effective` = try r.boolean()
    v.`reason` = try r.integer(UInt8.self)
    v.`description` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsMoveToTargetOptions: Canonical {
  public static let maximumWireBytes = 22
  public static let codecIdentity =
    "UWVMROS1_9663a92439424e065cc52dc2440eea928aa64228a21e3f05017d2209c53305bd"
  public static let nativeType = "leju_mobile_base_msgs/MoveToTargetOptions"
  public static let nativeIdentity: String? = nil
  public var `avoid_enabled`: Bool = false
  public var `avoid_distance`: Float = 0
  public var `linear_velocity`: Float = 0
  public var `angular_velocity`: Float = 0
  public var `position_threshold`: Float = 0
  public var `angle_threshold`: Float = 0
  public var `allow_rotation`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`avoid_enabled`)
    try w.float32(self.`avoid_distance`)
    try w.float32(self.`linear_velocity`)
    try w.float32(self.`angular_velocity`)
    try w.float32(self.`position_threshold`)
    try w.float32(self.`angle_threshold`)
    try w.boolean(self.`allow_rotation`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsMoveToTargetOptions
  {
    var v = Ros1Leju_mobile_base_msgsMoveToTargetOptions()
    v.`avoid_enabled` = try r.boolean()
    v.`avoid_distance` = try r.float32()
    v.`linear_velocity` = try r.float32()
    v.`angular_velocity` = try r.float32()
    v.`position_threshold` = try r.float32()
    v.`angle_threshold` = try r.float32()
    v.`allow_rotation` = try r.boolean()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsBaseMoveRequest: Canonical {
  public static let maximumWireBytes = 34
  public static let codecIdentity =
    "UWVMROS1_6088af209211fe723a2ef9cc1aa5a584c9bd04b3f6c73839e059dc74bc08561f"
  public static let nativeType = "leju_mobile_base_msgs/BaseMoveRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `theta`: Float = 0
  public var `options`: Ros1Leju_mobile_base_msgsMoveToTargetOptions =
    Ros1Leju_mobile_base_msgsMoveToTargetOptions()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`theta`)
    try self.`options`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsBaseMoveRequest
  {
    var v = Ros1Leju_mobile_base_msgsBaseMoveRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`theta` = try r.float32()
    v.`options` = try Ros1Leju_mobile_base_msgsMoveToTargetOptions.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsBaseMoveResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_8ae9b3ad134546dd4446257c683a899c4809434795d1247707a64c0fd1298d96"
  public static let nativeType = "leju_mobile_base_msgs/BaseMoveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `task_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`task_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsBaseMoveResponse
  {
    var v = Ros1Leju_mobile_base_msgsBaseMoveResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`task_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsBattery: Canonical {
  public static let maximumWireBytes = 294
  public static let codecIdentity =
    "UWVMROS1_0f2ac616c13c8c34286c9fb85888ee01a17afc29a47c9910a7d741f358231835"
  public static let nativeType = "leju_mobile_base_msgs/Battery"
  public static let nativeIdentity: String? = nil
  public static let `STATUS_UNKNOWN`: UInt8 = 0
  public static let `STATUS_CHARGING`: UInt8 = 1
  public static let `STATUS_DISCHARGING`: UInt8 = 2
  public static let `STATUS_NOT_CHARGING`: UInt8 = 3
  public static let `STATUS_FULL`: UInt8 = 4
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `voltage`: Float = 0
  public var `current`: Float = 0
  public var `percentage`: Float = 0
  public var `temperature`: Float = 0
  public var `status`: UInt8 = 0
  public var `time_remaining`: Int32 = 0
  public var `health`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`voltage`)
    try w.float32(self.`current`)
    try w.float32(self.`percentage`)
    try w.float32(self.`temperature`)
    try w.integer(self.`status`)
    try w.integer(self.`time_remaining`)
    try w.integer(self.`health`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsBattery {
    var v = Ros1Leju_mobile_base_msgsBattery()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`voltage` = try r.float32()
    v.`current` = try r.float32()
    v.`percentage` = try r.float32()
    v.`temperature` = try r.float32()
    v.`status` = try r.integer(UInt8.self)
    v.`time_remaining` = try r.integer(Int32.self)
    v.`health` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsCheckArrivedRequest: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_1f03497d14422de520ed720ec6a38e4e3ff33f737ca79367ecaaa9fe071a0b8e"
  public static let nativeType = "leju_mobile_base_msgs/CheckArrivedRequest"
  public static let nativeIdentity: String? = nil
  public var `task_id`: String = ""
  public var `blocking`: Bool = false
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_id`, bound: 256)
    try w.boolean(self.`blocking`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsCheckArrivedRequest
  {
    var v = Ros1Leju_mobile_base_msgsCheckArrivedRequest()
    v.`task_id` = try r.string(bound: 256)
    v.`blocking` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsCheckArrivedResponse: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_1dacb94e8840976e80a070c6bd70a503df1e540954cfb58c1730e183e2a4dc72"
  public static let nativeType = "leju_mobile_base_msgs/CheckArrivedResponse"
  public static let nativeIdentity: String? = nil
  public var `arrived`: Bool = false
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`arrived`)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsCheckArrivedResponse
  {
    var v = Ros1Leju_mobile_base_msgsCheckArrivedResponse()
    v.`arrived` = try r.boolean()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsControlLaserScanRequest: Canonical {
  public static let maximumWireBytes = 4185
  public static let codecIdentity =
    "UWVMROS1_4fde496fbac10f7bf33bfeee048ba4f3f65b5c7fd06a1f474b30548ef6f60cbb"
  public static let nativeType = "leju_mobile_base_msgs/ControlLaserScanRequest"
  public static let nativeIdentity: String? = nil
  public static let `MODE_SET`: UInt8 = 0
  public static let `MODE_ENABLE_ALL`: UInt8 = 1
  public static let `MODE_DISABLE_ALL`: UInt8 = 2
  public var `topic_names`: [String] = []
  public var `enable_publishing`: [Bool] = []
  public var `control_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`topic_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`topic_names`.count))
    for e in self.`topic_names` {
      try w.string(e, bound: 256)
    }
    guard self.`enable_publishing`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`enable_publishing`.count))
    for e in self.`enable_publishing` {
      try w.boolean(e)
    }
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsControlLaserScanRequest
  {
    var v = Ros1Leju_mobile_base_msgsControlLaserScanRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`topic_names` = []
    v.`topic_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`topic_names`.append(try r.string(bound: 256))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`enable_publishing` = []
    v.`enable_publishing`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`enable_publishing`.append(try r.boolean())
    }
    v.`control_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsControlLaserScanResponse: Canonical {
  public static let maximumWireBytes = 4449
  public static let codecIdentity =
    "UWVMROS1_9e1d1e6334e86362d5d6b32d50ff36d5c919b9af2688c3edfe410bbb10feebf3"
  public static let nativeType = "leju_mobile_base_msgs/ControlLaserScanResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `updated_topics`: [String] = []
  public var `current_status`: [Bool] = []
  public var `error_code`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`updated_topics`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`updated_topics`.count))
    for e in self.`updated_topics` {
      try w.string(e, bound: 256)
    }
    guard self.`current_status`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`current_status`.count))
    for e in self.`current_status` {
      try w.boolean(e)
    }
    try w.integer(self.`error_code`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsControlLaserScanResponse
  {
    var v = Ros1Leju_mobile_base_msgsControlLaserScanResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`updated_topics` = []
    v.`updated_topics`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`updated_topics`.append(try r.string(bound: 256))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`current_status` = []
    v.`current_status`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`current_status`.append(try r.boolean())
    }
    v.`error_code` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsDispatchMoveRequest: Canonical {
  public static let maximumWireBytes = 282
  public static let codecIdentity =
    "UWVMROS1_a7bec9d55830bed3d26b2718571f30188dd2742c15a2fe3974524bc3e30ff794"
  public static let nativeType = "leju_mobile_base_msgs/DispatchMoveRequest"
  public static let nativeIdentity: String? = nil
  public var `target`: String = ""
  public var `options`: Ros1Leju_mobile_base_msgsMoveToTargetOptions =
    Ros1Leju_mobile_base_msgsMoveToTargetOptions()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`target`, bound: 256)
    try self.`options`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsDispatchMoveRequest
  {
    var v = Ros1Leju_mobile_base_msgsDispatchMoveRequest()
    v.`target` = try r.string(bound: 256)
    v.`options` = try Ros1Leju_mobile_base_msgsMoveToTargetOptions.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsDispatchMoveResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_355d963be35564a519cfedac67a6a043385c6455fe382b7e34a8235e12e63799"
  public static let nativeType = "leju_mobile_base_msgs/DispatchMoveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `task_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`task_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsDispatchMoveResponse
  {
    var v = Ros1Leju_mobile_base_msgsDispatchMoveResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`task_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsExecTaskRequest: Canonical {
  public static let maximumWireBytes = 7321
  public static let codecIdentity =
    "UWVMROS1_74776dd167950429fff4ec5baf8775412e4a7b1194a47f2907a49136af6d5d94"
  public static let nativeType = "leju_mobile_base_msgs/ExecTaskRequest"
  public static let nativeIdentity: String? = nil
  public static let `TASK_TYPE_NAVIGATION`: UInt8 = 0
  public static let `TASK_TYPE_DOCKING`: UInt8 = 1
  public static let `TASK_TYPE_CHARGING`: UInt8 = 2
  public static let `TASK_TYPE_DELIVERY`: UInt8 = 3
  public static let `TASK_TYPE_CUSTOM`: UInt8 = 99
  public var `task_id`: String = ""
  public var `task_type`: UInt8 = 0
  public var `task_name`: String = ""
  public var `waypoints`: [Ros1Geometry_msgsPoseStamped] = []
  public var `parameters`: [String] = []
  public var `priority`: Float = 0
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_id`, bound: 256)
    try w.integer(self.`task_type`)
    try w.string(self.`task_name`, bound: 256)
    guard self.`waypoints`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`waypoints`.count))
    for e in self.`waypoints` {
      try e.write(to: &w)
    }
    guard self.`parameters`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`parameters`.count))
    for e in self.`parameters` {
      try w.string(e, bound: 256)
    }
    try w.float32(self.`priority`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsExecTaskRequest
  {
    var v = Ros1Leju_mobile_base_msgsExecTaskRequest()
    v.`task_id` = try r.string(bound: 256)
    v.`task_type` = try r.integer(UInt8.self)
    v.`task_name` = try r.string(bound: 256)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`waypoints` = []
    v.`waypoints`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`waypoints`.append(try Ros1Geometry_msgsPoseStamped.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`parameters` = []
    v.`parameters`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`parameters`.append(try r.string(bound: 256))
    }
    v.`priority` = try r.float32()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsExecTaskResponse: Canonical {
  public static let maximumWireBytes = 525
  public static let codecIdentity =
    "UWVMROS1_f3ae4321df5893f9e99b3a2e258ab53986c671b94d93fb501f61eb80ce970b9e"
  public static let nativeType = "leju_mobile_base_msgs/ExecTaskResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `error_code`: UInt32 = 0
  public var `assigned_task_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`error_code`)
    try w.string(self.`assigned_task_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsExecTaskResponse
  {
    var v = Ros1Leju_mobile_base_msgsExecTaskResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`error_code` = try r.integer(UInt32.self)
    v.`assigned_task_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_99a04f38a22a48ec485be6c7184822492d2e0fb6ef5946d290c2af4b745f52d0"
  public static let nativeType = "leju_mobile_base_msgs/GetGlobalOdometerRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest
  {
    var v = Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_50a45e288952dd4fe54ff708844ea1b049ae2980d1f3f89d46d0bf81336fda42"
  public static let nativeType = "leju_mobile_base_msgs/GetGlobalOdometerResponse"
  public static let nativeIdentity: String? = nil
  public var `total_distance_m`: Double = 0
  public var `total_distance_km`: Double = 0
  public var `measured_at`: Ros1Time = Ros1Time()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`total_distance_m`)
    try w.float64(self.`total_distance_km`)
    try self.`measured_at`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse
  {
    var v = Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse()
    v.`total_distance_m` = try r.float64()
    v.`total_distance_km` = try r.float64()
    v.`measured_at` = try Ros1Time.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsGetLaserScanListRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8760e4255a0e6393911e45d0fa9b381c53443247e378f4921361307a1393c818"
  public static let nativeType = "leju_mobile_base_msgs/GetLaserScanListRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsGetLaserScanListRequest
  {
    var v = Ros1Leju_mobile_base_msgsGetLaserScanListRequest()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsGetLaserScanListResponse: Canonical {
  public static let maximumWireBytes = 4449
  public static let codecIdentity =
    "UWVMROS1_bc059d5821821e0d7fbcc574685cb336b465ab0ef5eda52649e75cc6da8b7264"
  public static let nativeType = "leju_mobile_base_msgs/GetLaserScanListResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `topic_names`: [String] = []
  public var `is_publishing`: [Bool] = []
  public var `error_code`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    guard self.`topic_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`topic_names`.count))
    for e in self.`topic_names` {
      try w.string(e, bound: 256)
    }
    guard self.`is_publishing`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`is_publishing`.count))
    for e in self.`is_publishing` {
      try w.boolean(e)
    }
    try w.integer(self.`error_code`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsGetLaserScanListResponse
  {
    var v = Ros1Leju_mobile_base_msgsGetLaserScanListResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`topic_names` = []
    v.`topic_names`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`topic_names`.append(try r.string(bound: 256))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`is_publishing` = []
    v.`is_publishing`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`is_publishing`.append(try r.boolean())
    }
    v.`error_code` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsHardwareStatus: Canonical {
  public static let maximumWireBytes = 19543
  public static let codecIdentity =
    "UWVMROS1_893137c1cfd22ed3d4fb5db90dd6ad540a458602ba1d2e0748a3e387d1b29627"
  public static let nativeType = "leju_mobile_base_msgs/HardwareStatus"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `battery_soc`: Float = 0
  public var `low_battery_alarm`: Bool = false
  public var `battery_temperature`: Float = 0
  public var `battery_health`: Float = 0
  public var `driver_status`: UInt8 = 0
  public var `driver_fault_code`: [String] = []
  public var `driver_fault_message`: [String] = []
  public var `imu_status`: UInt8 = 0
  public var `imu_fault_code`: [String] = []
  public var `imu_fault_message`: [String] = []
  public var `all_distance`: Float = 0
  public var `odom_status`: UInt8 = 0
  public var `odom_fault_code`: [String] = []
  public var `odom_fault_message`: [String] = []
  public var `laser_status`: UInt8 = 0
  public var `laser_fault_code`: [String] = []
  public var `laser_fault_message`: [String] = []
  public var `camera_status`: UInt8 = 0
  public var `camera_fault_code`: [String] = []
  public var `camera_fault_message`: [String] = []
  public var `robot_status`: UInt8 = 0
  public var `robot_fault_code`: [String] = []
  public var `robot_fault_message`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`battery_soc`)
    try w.boolean(self.`low_battery_alarm`)
    try w.float32(self.`battery_temperature`)
    try w.float32(self.`battery_health`)
    try w.integer(self.`driver_status`)
    guard self.`driver_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`driver_fault_code`.count))
    for e in self.`driver_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`driver_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`driver_fault_message`.count))
    for e in self.`driver_fault_message` {
      try w.string(e, bound: 128)
    }
    try w.integer(self.`imu_status`)
    guard self.`imu_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`imu_fault_code`.count))
    for e in self.`imu_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`imu_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`imu_fault_message`.count))
    for e in self.`imu_fault_message` {
      try w.string(e, bound: 128)
    }
    try w.float32(self.`all_distance`)
    try w.integer(self.`odom_status`)
    guard self.`odom_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`odom_fault_code`.count))
    for e in self.`odom_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`odom_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`odom_fault_message`.count))
    for e in self.`odom_fault_message` {
      try w.string(e, bound: 128)
    }
    try w.integer(self.`laser_status`)
    guard self.`laser_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`laser_fault_code`.count))
    for e in self.`laser_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`laser_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`laser_fault_message`.count))
    for e in self.`laser_fault_message` {
      try w.string(e, bound: 128)
    }
    try w.integer(self.`camera_status`)
    guard self.`camera_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`camera_fault_code`.count))
    for e in self.`camera_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`camera_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`camera_fault_message`.count))
    for e in self.`camera_fault_message` {
      try w.string(e, bound: 128)
    }
    try w.integer(self.`robot_status`)
    guard self.`robot_fault_code`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`robot_fault_code`.count))
    for e in self.`robot_fault_code` {
      try w.string(e, bound: 64)
    }
    guard self.`robot_fault_message`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`robot_fault_message`.count))
    for e in self.`robot_fault_message` {
      try w.string(e, bound: 128)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsHardwareStatus
  {
    var v = Ros1Leju_mobile_base_msgsHardwareStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`battery_soc` = try r.float32()
    v.`low_battery_alarm` = try r.boolean()
    v.`battery_temperature` = try r.float32()
    v.`battery_health` = try r.float32()
    v.`driver_status` = try r.integer(UInt8.self)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`driver_fault_code` = []
    v.`driver_fault_code`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`driver_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`driver_fault_message` = []
    v.`driver_fault_message`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`driver_fault_message`.append(try r.string(bound: 128))
    }
    v.`imu_status` = try r.integer(UInt8.self)
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 16 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`imu_fault_code` = []
    v.`imu_fault_code`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`imu_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 16 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`imu_fault_message` = []
    v.`imu_fault_message`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`imu_fault_message`.append(try r.string(bound: 128))
    }
    v.`all_distance` = try r.float32()
    v.`odom_status` = try r.integer(UInt8.self)
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`odom_fault_code` = []
    v.`odom_fault_code`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`odom_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 16 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`odom_fault_message` = []
    v.`odom_fault_message`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`odom_fault_message`.append(try r.string(bound: 128))
    }
    v.`laser_status` = try r.integer(UInt8.self)
    let rawcount16 = try r.integer(UInt32.self)
    guard rawcount16 <= 16 else { throw RosError(22) }
    let count16 = Int(rawcount16)
    v.`laser_fault_code` = []
    v.`laser_fault_code`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`laser_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount17 = try r.integer(UInt32.self)
    guard rawcount17 <= 16 else { throw RosError(22) }
    let count17 = Int(rawcount17)
    v.`laser_fault_message` = []
    v.`laser_fault_message`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`laser_fault_message`.append(try r.string(bound: 128))
    }
    v.`camera_status` = try r.integer(UInt8.self)
    let rawcount19 = try r.integer(UInt32.self)
    guard rawcount19 <= 16 else { throw RosError(22) }
    let count19 = Int(rawcount19)
    v.`camera_fault_code` = []
    v.`camera_fault_code`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`camera_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount20 = try r.integer(UInt32.self)
    guard rawcount20 <= 16 else { throw RosError(22) }
    let count20 = Int(rawcount20)
    v.`camera_fault_message` = []
    v.`camera_fault_message`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`camera_fault_message`.append(try r.string(bound: 128))
    }
    v.`robot_status` = try r.integer(UInt8.self)
    let rawcount22 = try r.integer(UInt32.self)
    guard rawcount22 <= 16 else { throw RosError(22) }
    let count22 = Int(rawcount22)
    v.`robot_fault_code` = []
    v.`robot_fault_code`.reserveCapacity(count22)
    for _ in 0..<count22 {
      v.`robot_fault_code`.append(try r.string(bound: 64))
    }
    let rawcount23 = try r.integer(UInt32.self)
    guard rawcount23 <= 16 else { throw RosError(22) }
    let count23 = Int(rawcount23)
    v.`robot_fault_message` = []
    v.`robot_fault_message`.reserveCapacity(count23)
    for _ in 0..<count23 {
      v.`robot_fault_message`.append(try r.string(bound: 128))
    }
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsInformation: Canonical {
  public static let maximumWireBytes = 9900
  public static let codecIdentity =
    "UWVMROS1_352be9fbc7a5e7dce370dccf518c0254956adba3531408d79cad669c18eaeab5"
  public static let nativeType = "leju_mobile_base_msgs/Information"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `firmware_version`: String = ""
  public var `hardware_version`: String = ""
  public var `controller_id`: String = ""
  public var `serial_number`: String = ""
  public var `build_date`: String = ""
  public var `param_names`: [String] = []
  public var `param_values`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`firmware_version`, bound: 256)
    try w.string(self.`hardware_version`, bound: 256)
    try w.string(self.`controller_id`, bound: 256)
    try w.string(self.`serial_number`, bound: 256)
    try w.string(self.`build_date`, bound: 256)
    guard self.`param_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_names`.count))
    for e in self.`param_names` {
      try w.string(e, bound: 256)
    }
    guard self.`param_values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`param_values`.count))
    for e in self.`param_values` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsInformation {
    var v = Ros1Leju_mobile_base_msgsInformation()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`firmware_version` = try r.string(bound: 256)
    v.`hardware_version` = try r.string(bound: 256)
    v.`controller_id` = try r.string(bound: 256)
    v.`serial_number` = try r.string(bound: 256)
    v.`build_date` = try r.string(bound: 256)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`param_names` = []
    v.`param_names`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`param_names`.append(try r.string(bound: 256))
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`param_values` = []
    v.`param_values`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`param_values`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsLED: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_e9725b60f7c284e08d91be5176f55c403d1f390561a5df2e597d797e35cc6e9b"
  public static let nativeType = "leju_mobile_base_msgs/LED"
  public static let nativeIdentity: String? = nil
  public static let `MODE_OFF`: UInt8 = 0
  public static let `MODE_SOLID`: UInt8 = 1
  public static let `MODE_BLINK`: UInt8 = 2
  public static let `MODE_BREATH`: UInt8 = 3
  public static let `MODE_RAINBOW`: UInt8 = 4
  public static let `MODE_CHASE`: UInt8 = 5
  public var `mode`: UInt8 = 0
  public var `red`: UInt8 = 0
  public var `green`: UInt8 = 0
  public var `blue`: UInt8 = 0
  public var `brightness`: UInt8 = 0
  public var `speed`: UInt8 = 0
  public var `frequency`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`red`)
    try w.integer(self.`green`)
    try w.integer(self.`blue`)
    try w.integer(self.`brightness`)
    try w.integer(self.`speed`)
    try w.float32(self.`frequency`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsLED {
    var v = Ros1Leju_mobile_base_msgsLED()
    v.`mode` = try r.integer(UInt8.self)
    v.`red` = try r.integer(UInt8.self)
    v.`green` = try r.integer(UInt8.self)
    v.`blue` = try r.integer(UInt8.self)
    v.`brightness` = try r.integer(UInt8.self)
    v.`speed` = try r.integer(UInt8.self)
    v.`frequency` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsLiftControl3Feedback: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_c330ee6d960ed2e4eb77758a3c1544bb323f8200782de9b079593efeee30d048"
  public static let nativeType = "leju_mobile_base_msgs/LiftControl3Feedback"
  public static let nativeIdentity: String? = nil
  public static let `STATUS_IDLE`: UInt8 = 0
  public static let `STATUS_MOVING_UP`: UInt8 = 1
  public static let `STATUS_MOVING_DOWN`: UInt8 = 2
  public static let `STATUS_HOLDING`: UInt8 = 3
  public static let `STATUS_ERROR`: UInt8 = 4
  public var `current_position`: Float = 0
  public var `target_position`: Float = 0
  public var `velocity`: Float = 0
  public var `status`: UInt8 = 0
  public var `progress`: UInt8 = 0
  public var `error_code`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`current_position`)
    try w.float32(self.`target_position`)
    try w.float32(self.`velocity`)
    try w.integer(self.`status`)
    try w.integer(self.`progress`)
    try w.integer(self.`error_code`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsLiftControl3Feedback
  {
    var v = Ros1Leju_mobile_base_msgsLiftControl3Feedback()
    v.`current_position` = try r.float32()
    v.`target_position` = try r.float32()
    v.`velocity` = try r.float32()
    v.`status` = try r.integer(UInt8.self)
    v.`progress` = try r.integer(UInt8.self)
    v.`error_code` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsLiftControl3Goal: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_5010015d2dcbcfd757d916bc7e9ca3813ffd02ed9f9a57c7810dcd95db2473c7"
  public static let nativeType = "leju_mobile_base_msgs/LiftControl3Goal"
  public static let nativeIdentity: String? = nil
  public static let `MODE_POSITION`: UInt8 = 0
  public static let `MODE_VELOCITY`: UInt8 = 1
  public static let `MODE_FORCE`: UInt8 = 2
  public var `target_position`: Float = 0
  public var `max_velocity`: Float = 0
  public var `max_acceleration`: Float = 0
  public var `position_tolerance`: Float = 0
  public var `control_mode`: UInt8 = 0
  public var `target_force`: Float = 0
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`target_position`)
    try w.float32(self.`max_velocity`)
    try w.float32(self.`max_acceleration`)
    try w.float32(self.`position_tolerance`)
    try w.integer(self.`control_mode`)
    try w.float32(self.`target_force`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsLiftControl3Goal
  {
    var v = Ros1Leju_mobile_base_msgsLiftControl3Goal()
    v.`target_position` = try r.float32()
    v.`max_velocity` = try r.float32()
    v.`max_acceleration` = try r.float32()
    v.`position_tolerance` = try r.float32()
    v.`control_mode` = try r.integer(UInt8.self)
    v.`target_force` = try r.float32()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsLiftControl3Result: Canonical {
  public static let maximumWireBytes = 273
  public static let codecIdentity =
    "UWVMROS1_b8ff817a12dee5de61fda25c5a381277463a6f99cdaac51af443a94710c6eb0c"
  public static let nativeType = "leju_mobile_base_msgs/LiftControl3Result"
  public static let nativeIdentity: String? = nil
  public static let `RESULT_SUCCESS`: UInt8 = 0
  public static let `RESULT_FAILED`: UInt8 = 1
  public static let `RESULT_TIMEOUT`: UInt8 = 2
  public static let `RESULT_CANCELLED`: UInt8 = 3
  public static let `RESULT_OUT_OF_RANGE`: UInt8 = 4
  public var `final_position`: Float = 0
  public var `result`: UInt8 = 0
  public var `error_code`: UInt32 = 0
  public var `error_msg`: String = ""
  public var `execution_time`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`final_position`)
    try w.integer(self.`result`)
    try w.integer(self.`error_code`)
    try w.string(self.`error_msg`, bound: 256)
    try w.float32(self.`execution_time`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsLiftControl3Result
  {
    var v = Ros1Leju_mobile_base_msgsLiftControl3Result()
    v.`final_position` = try r.float32()
    v.`result` = try r.integer(UInt8.self)
    v.`error_code` = try r.integer(UInt32.self)
    v.`error_msg` = try r.string(bound: 256)
    v.`execution_time` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsLiftStatus: Canonical {
  public static let maximumWireBytes = 559
  public static let codecIdentity =
    "UWVMROS1_c7e73731cc14f27209320edfe8d05d5d2582e4d65d414f45066bac67744244e8"
  public static let nativeType = "leju_mobile_base_msgs/LiftStatus"
  public static let nativeIdentity: String? = nil
  public static let `STATE_UNKNOWN`: UInt8 = 0
  public static let `STATE_IDLE`: UInt8 = 1
  public static let `STATE_MOVING_UP`: UInt8 = 2
  public static let `STATE_MOVING_DOWN`: UInt8 = 3
  public static let `STATE_HOLDING`: UInt8 = 4
  public static let `STATE_ERROR`: UInt8 = 5
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `current_height`: Float = 0
  public var `target_height`: Float = 0
  public var `min_height`: Float = 0
  public var `max_height`: Float = 0
  public var `velocity`: Float = 0
  public var `is_enabled`: Bool = false
  public var `is_calibrated`: Bool = false
  public var `state`: UInt8 = 0
  public var `error_code`: UInt32 = 0
  public var `error_msg`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`current_height`)
    try w.float32(self.`target_height`)
    try w.float32(self.`min_height`)
    try w.float32(self.`max_height`)
    try w.float32(self.`velocity`)
    try w.boolean(self.`is_enabled`)
    try w.boolean(self.`is_calibrated`)
    try w.integer(self.`state`)
    try w.integer(self.`error_code`)
    try w.string(self.`error_msg`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsLiftStatus {
    var v = Ros1Leju_mobile_base_msgsLiftStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`current_height` = try r.float32()
    v.`target_height` = try r.float32()
    v.`min_height` = try r.float32()
    v.`max_height` = try r.float32()
    v.`velocity` = try r.float32()
    v.`is_enabled` = try r.boolean()
    v.`is_calibrated` = try r.boolean()
    v.`state` = try r.integer(UInt8.self)
    v.`error_code` = try r.integer(UInt32.self)
    v.`error_msg` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsMoveBaseActionGoal: Canonical {
  public static let maximumWireBytes = 882
  public static let codecIdentity =
    "UWVMROS1_859abb2603e8bf9bc6b80737e781061f5f0f26f4572b4d389fcf7fd5a4eb83a4"
  public static let nativeType = "leju_mobile_base_msgs/MoveBaseActionGoal"
  public static let nativeIdentity: String? = nil
  public static let `MODE_NORMAL`: UInt8 = 0
  public static let `MODE_CAREFUL`: UInt8 = 1
  public static let `MODE_FAST`: UInt8 = 2
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `goal_id`: String = ""
  public var `target_pose`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  public var `max_linear_vel`: Float = 0
  public var `max_angular_vel`: Float = 0
  public var `position_tolerance`: Float = 0
  public var `orientation_tolerance`: Float = 0
  public var `navigation_mode`: UInt8 = 0
  public var `ignore_orientation`: Bool = false
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`goal_id`, bound: 256)
    try self.`target_pose`.write(to: &w)
    try w.float32(self.`max_linear_vel`)
    try w.float32(self.`max_angular_vel`)
    try w.float32(self.`position_tolerance`)
    try w.float32(self.`orientation_tolerance`)
    try w.integer(self.`navigation_mode`)
    try w.boolean(self.`ignore_orientation`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsMoveBaseActionGoal
  {
    var v = Ros1Leju_mobile_base_msgsMoveBaseActionGoal()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`goal_id` = try r.string(bound: 256)
    v.`target_pose` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    v.`max_linear_vel` = try r.float32()
    v.`max_angular_vel` = try r.float32()
    v.`position_tolerance` = try r.float32()
    v.`orientation_tolerance` = try r.float32()
    v.`navigation_mode` = try r.integer(UInt8.self)
    v.`ignore_orientation` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsMoveToTargetRequest: Canonical {
  public static let maximumWireBytes = 34
  public static let codecIdentity =
    "UWVMROS1_295e988de4c4693ab477756bcc4a4d6448230de2ba62339a14e322950c65ed64"
  public static let nativeType = "leju_mobile_base_msgs/MoveToTargetRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `theta`: Float = 0
  public var `options`: Ros1Leju_mobile_base_msgsMoveToTargetOptions =
    Ros1Leju_mobile_base_msgsMoveToTargetOptions()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`theta`)
    try self.`options`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsMoveToTargetRequest
  {
    var v = Ros1Leju_mobile_base_msgsMoveToTargetRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`theta` = try r.float32()
    v.`options` = try Ros1Leju_mobile_base_msgsMoveToTargetOptions.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsMoveToTargetResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_3a03fe3eb268239605c030d29bff1cc7a67e7b6a27c065a05be4562619440757"
  public static let nativeType = "leju_mobile_base_msgs/MoveToTargetResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `task_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.string(self.`task_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsMoveToTargetResponse
  {
    var v = Ros1Leju_mobile_base_msgsMoveToTargetResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`task_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsNavigationModeGoal: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_8d0f6ac4a2ba103c3e4c454b22b50dbe39ea9e5163ab5138b3094f8c9fdcf1f9"
  public static let nativeType = "leju_mobile_base_msgs/NavigationModeGoal"
  public static let nativeIdentity: String? = nil
  public static let `MODE_NORMAL`: UInt8 = 0
  public static let `MODE_CAREFUL`: UInt8 = 1
  public static let `MODE_FAST`: UInt8 = 2
  public static let `MODE_TIGHT_SPACE`: UInt8 = 3
  public static let `MODE_DOCK`: UInt8 = 4
  public var `navigation_mode`: UInt8 = 0
  public var `mode_parameter`: UInt8 = 0
  public var `persist_mode`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`navigation_mode`)
    try w.integer(self.`mode_parameter`)
    try w.boolean(self.`persist_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsNavigationModeGoal
  {
    var v = Ros1Leju_mobile_base_msgsNavigationModeGoal()
    v.`navigation_mode` = try r.integer(UInt8.self)
    v.`mode_parameter` = try r.integer(UInt8.self)
    v.`persist_mode` = try r.boolean()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsParameter: Canonical {
  public static let maximumWireBytes = 401
  public static let codecIdentity =
    "UWVMROS1_b09c75c56ca378dcc08c723ee5c911d03191ea58296ef214f7a44ff65fd2cf6c"
  public static let nativeType = "leju_mobile_base_msgs/Parameter"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `wheel_base`: Float = 0
  public var `track_width`: Float = 0
  public var `wheel_radius`: Float = 0
  public var `max_linear_vel`: Float = 0
  public var `max_angular_vel`: Float = 0
  public var `max_linear_acc`: Float = 0
  public var `max_angular_acc`: Float = 0
  public var `motor_count`: UInt8 = 0
  public var `motor_ratios`: [Float] = []
  public var `pid_linear_p`: Float = 0
  public var `pid_linear_i`: Float = 0
  public var `pid_linear_d`: Float = 0
  public var `pid_angular_p`: Float = 0
  public var `pid_angular_i`: Float = 0
  public var `pid_angular_d`: Float = 0
  public var `safety_stop_distance`: Float = 0
  public var `slow_down_distance`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`wheel_base`)
    try w.float32(self.`track_width`)
    try w.float32(self.`wheel_radius`)
    try w.float32(self.`max_linear_vel`)
    try w.float32(self.`max_angular_vel`)
    try w.float32(self.`max_linear_acc`)
    try w.float32(self.`max_angular_acc`)
    try w.integer(self.`motor_count`)
    guard self.`motor_ratios`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`motor_ratios`.count))
    for e in self.`motor_ratios` {
      try w.float32(e)
    }
    try w.float32(self.`pid_linear_p`)
    try w.float32(self.`pid_linear_i`)
    try w.float32(self.`pid_linear_d`)
    try w.float32(self.`pid_angular_p`)
    try w.float32(self.`pid_angular_i`)
    try w.float32(self.`pid_angular_d`)
    try w.float32(self.`safety_stop_distance`)
    try w.float32(self.`slow_down_distance`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsParameter {
    var v = Ros1Leju_mobile_base_msgsParameter()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`wheel_base` = try r.float32()
    v.`track_width` = try r.float32()
    v.`wheel_radius` = try r.float32()
    v.`max_linear_vel` = try r.float32()
    v.`max_angular_vel` = try r.float32()
    v.`max_linear_acc` = try r.float32()
    v.`max_angular_acc` = try r.float32()
    v.`motor_count` = try r.integer(UInt8.self)
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 16 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`motor_ratios` = []
    v.`motor_ratios`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`motor_ratios`.append(try r.float32())
    }
    v.`pid_linear_p` = try r.float32()
    v.`pid_linear_i` = try r.float32()
    v.`pid_linear_d` = try r.float32()
    v.`pid_angular_p` = try r.float32()
    v.`pid_angular_i` = try r.float32()
    v.`pid_angular_d` = try r.float32()
    v.`safety_stop_distance` = try r.float32()
    v.`slow_down_distance` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_8bb35f59026ca6385da33a4c86f58042897083c9418825fcba097d8dee2d2a52"
  public static let nativeType = "leju_mobile_base_msgs/ResetTemporaryOdometerRequest"
  public static let nativeIdentity: String? = nil
  public var `task_id`: String = ""
  public var `requester`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`task_id`, bound: 256)
    try w.string(self.`requester`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest
  {
    var v = Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest()
    v.`task_id` = try r.string(bound: 256)
    v.`requester` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse: Canonical {
  public static let maximumWireBytes = 277
  public static let codecIdentity =
    "UWVMROS1_7360918f159601fcc66ffd1f9a46286ebea582b4b96cb0a361b086abd5ccc522"
  public static let nativeType = "leju_mobile_base_msgs/ResetTemporaryOdometerResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `distance_before_reset_m`: Double = 0
  public var `reset_time`: Ros1Time = Ros1Time()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.float64(self.`distance_before_reset_m`)
    try self.`reset_time`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse
  {
    var v = Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`distance_before_reset_m` = try r.float64()
    v.`reset_time` = try Ros1Time.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsRobotStatus: Canonical {
  public static let maximumWireBytes = 799
  public static let codecIdentity =
    "UWVMROS1_e8585cf2e66624a2359e34f11cca3b811b388e46a54ed91102ee329327ea62ca"
  public static let nativeType = "leju_mobile_base_msgs/RobotStatus"
  public static let nativeIdentity: String? = nil
  public static let `MODE_IDLE`: UInt8 = 0
  public static let `MODE_MANUAL`: UInt8 = 1
  public static let `MODE_AUTO`: UInt8 = 2
  public static let `MODE_ERROR`: UInt8 = 3
  public static let `TASK_NONE`: UInt8 = 0
  public static let `TASK_RUNNING`: UInt8 = 1
  public static let `TASK_PAUSED`: UInt8 = 2
  public static let `TASK_COMPLETED`: UInt8 = 3
  public static let `TASK_FAILED`: UInt8 = 4
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `mode`: UInt8 = 0
  public var `task_status`: UInt8 = 0
  public var `task_id`: String = ""
  public var `progress`: UInt8 = 0
  public var `error_code`: UInt32 = 0
  public var `error_msg`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`mode`)
    try w.integer(self.`task_status`)
    try w.string(self.`task_id`, bound: 256)
    try w.integer(self.`progress`)
    try w.integer(self.`error_code`)
    try w.string(self.`error_msg`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Leju_mobile_base_msgsRobotStatus {
    var v = Ros1Leju_mobile_base_msgsRobotStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`mode` = try r.integer(UInt8.self)
    v.`task_status` = try r.integer(UInt8.self)
    v.`task_id` = try r.string(bound: 256)
    v.`progress` = try r.integer(UInt8.self)
    v.`error_code` = try r.integer(UInt32.self)
    v.`error_msg` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSetDispatchModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8cd6f393f131ef1b32924a4eaa9a534b3ed45392589cfd42ab1ed3459d6663d5"
  public static let nativeType = "leju_mobile_base_msgs/SetDispatchModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSetDispatchModeRequest
  {
    var v = Ros1Leju_mobile_base_msgsSetDispatchModeRequest()
    v.`control_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSetDispatchModeResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_d80977c78bcc3720cb22332a9699c6a9a0e7f867c88e540cf3978b0cc83553c0"
  public static let nativeType = "leju_mobile_base_msgs/SetDispatchModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSetDispatchModeResponse
  {
    var v = Ros1Leju_mobile_base_msgsSetDispatchModeResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSetMapServerRequest: Canonical {
  public static let maximumWireBytes = 523
  public static let codecIdentity =
    "UWVMROS1_bd963aa394a550c16c364de75d1c27141171face3ee56de59acf1ec9e3acdc97"
  public static let nativeType = "leju_mobile_base_msgs/SetMapServerRequest"
  public static let nativeIdentity: String? = nil
  public static let `MODE_REPLACE`: UInt8 = 0
  public static let `MODE_MERGE`: UInt8 = 1
  public static let `MODE_OVERLAY`: UInt8 = 2
  public var `map_name`: String = ""
  public var `map_path`: String = ""
  public var `load_immediately`: Bool = false
  public var `save_current_pose`: Bool = false
  public var `switching_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`map_name`, bound: 256)
    try w.string(self.`map_path`, bound: 256)
    try w.boolean(self.`load_immediately`)
    try w.boolean(self.`save_current_pose`)
    try w.integer(self.`switching_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSetMapServerRequest
  {
    var v = Ros1Leju_mobile_base_msgsSetMapServerRequest()
    v.`map_name` = try r.string(bound: 256)
    v.`map_path` = try r.string(bound: 256)
    v.`load_immediately` = try r.boolean()
    v.`save_current_pose` = try r.boolean()
    v.`switching_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSetMapServerResponse: Canonical {
  public static let maximumWireBytes = 853
  public static let codecIdentity =
    "UWVMROS1_07338cc9283fd0fab08b0ac371353e22077690eab7309a88c1ef9e3537f4dc5b"
  public static let nativeType = "leju_mobile_base_msgs/SetMapServerResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public var `error_code`: UInt32 = 0
  public var `active_map_name`: String = ""
  public var `initial_pose`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`error_code`)
    try w.string(self.`active_map_name`, bound: 256)
    try self.`initial_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSetMapServerResponse
  {
    var v = Ros1Leju_mobile_base_msgsSetMapServerResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`error_code` = try r.integer(UInt32.self)
    v.`active_map_name` = try r.string(bound: 256)
    v.`initial_pose` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsStartLocalizationRequest: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_f31e881138598c8c487adf458a1d858fd73b21cd4716dd63bdda896b565c7116"
  public static let nativeType = "leju_mobile_base_msgs/StartLocalizationRequest"
  public static let nativeIdentity: String? = nil
  public var `enable`: Bool = false
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `theta`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enable`)
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`theta`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsStartLocalizationRequest
  {
    var v = Ros1Leju_mobile_base_msgsStartLocalizationRequest()
    v.`enable` = try r.boolean()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`theta` = try r.float64()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsStartLocalizationResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_544bd2a4f941512b0d278dba39f36066ad7e3b04da37acb535b2910efe7457d5"
  public static let nativeType = "leju_mobile_base_msgs/StartLocalizationResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsStartLocalizationResponse
  {
    var v = Ros1Leju_mobile_base_msgsStartLocalizationResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsStepControlGoal: Canonical {
  public static let maximumWireBytes = 70
  public static let codecIdentity =
    "UWVMROS1_3a8801fcedf6f173d35031ad4c4a681f608f250692c283698ba07e2a0d247a78"
  public static let nativeType = "leju_mobile_base_msgs/StepControlGoal"
  public static let nativeIdentity: String? = nil
  public static let `CMD_STOP`: UInt8 = 0
  public static let `CMD_FORWARD`: UInt8 = 1
  public static let `CMD_BACKWARD`: UInt8 = 2
  public static let `CMD_ROTATE_LEFT`: UInt8 = 3
  public static let `CMD_ROTATE_RIGHT`: UInt8 = 4
  public static let `CMD_CUSTOM`: UInt8 = 5
  public var `command_type`: UInt8 = 0
  public var `velocity`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
  public var `target_distance`: Float = 0
  public var `max_velocity`: Float = 0
  public var `max_acceleration`: Float = 0
  public var `tolerance`: Float = 0
  public var `hold_position`: Bool = false
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`command_type`)
    try self.`velocity`.write(to: &w)
    try w.float32(self.`target_distance`)
    try w.float32(self.`max_velocity`)
    try w.float32(self.`max_acceleration`)
    try w.float32(self.`tolerance`)
    try w.boolean(self.`hold_position`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsStepControlGoal
  {
    var v = Ros1Leju_mobile_base_msgsStepControlGoal()
    v.`command_type` = try r.integer(UInt8.self)
    v.`velocity` = try Ros1Geometry_msgsTwist.read(from: &r)
    v.`target_distance` = try r.float32()
    v.`max_velocity` = try r.float32()
    v.`max_acceleration` = try r.float32()
    v.`tolerance` = try r.float32()
    v.`hold_position` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSyncCostmapRequest: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_847bda1b17d57f07bb26e3e8d6979bca8b3d063d98f9a9ccb5c9568d77d2465d"
  public static let nativeType = "leju_mobile_base_msgs/SyncCostmapRequest"
  public static let nativeIdentity: String? = nil
  public var `publish_global_costmap`: Bool = false
  public var `publish_local_costmap`: Bool = false
  public var `publish_incremental_updates`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`publish_global_costmap`)
    try w.boolean(self.`publish_local_costmap`)
    try w.boolean(self.`publish_incremental_updates`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSyncCostmapRequest
  {
    var v = Ros1Leju_mobile_base_msgsSyncCostmapRequest()
    v.`publish_global_costmap` = try r.boolean()
    v.`publish_local_costmap` = try r.boolean()
    v.`publish_incremental_updates` = try r.boolean()
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsSyncCostmapResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_753a053dff8383274686de510ef920532ee3cbb6d4f5f346774b587d1ea77e94"
  public static let nativeType = "leju_mobile_base_msgs/SyncCostmapResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsSyncCostmapResponse
  {
    var v = Ros1Leju_mobile_base_msgsSyncCostmapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Leju_mobile_base_msgsTaskDetailStatus: Canonical {
  public static let maximumWireBytes = 881
  public static let codecIdentity =
    "UWVMROS1_3bcd8911bfbfa987dbd8a22a7e92546862215e9cb4bc5ae2f3e254381bc9f121"
  public static let nativeType = "leju_mobile_base_msgs/TaskDetailStatus"
  public static let nativeIdentity: String? = nil
  public static let `TASK_NONE`: UInt8 = 0
  public static let `TASK_RUNNING`: UInt8 = 1
  public static let `TASK_PAUSED`: UInt8 = 2
  public static let `TASK_COMPLETED`: UInt8 = 3
  public static let `TASK_FAILED`: UInt8 = 4
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `task_id`: String = ""
  public var `current_waypoint_index`: UInt32 = 0
  public var `passed_waypoints`: [UInt32] = []
  public var `total_waypoints`: UInt32 = 0
  public var `estimated_time_remaining`: Float = 0
  public var `distance_to_next_waypoint`: Float = 0
  public var `task_status`: UInt8 = 0
  public var `error_code`: UInt32 = 0
  public var `error_msg`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`task_id`, bound: 256)
    try w.integer(self.`current_waypoint_index`)
    guard self.`passed_waypoints`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`passed_waypoints`.count))
    for e in self.`passed_waypoints` {
      try w.integer(e)
    }
    try w.integer(self.`total_waypoints`)
    try w.float32(self.`estimated_time_remaining`)
    try w.float32(self.`distance_to_next_waypoint`)
    try w.integer(self.`task_status`)
    try w.integer(self.`error_code`)
    try w.string(self.`error_msg`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Leju_mobile_base_msgsTaskDetailStatus
  {
    var v = Ros1Leju_mobile_base_msgsTaskDetailStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`task_id` = try r.string(bound: 256)
    v.`current_waypoint_index` = try r.integer(UInt32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`passed_waypoints` = []
    v.`passed_waypoints`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`passed_waypoints`.append(try r.integer(UInt32.self))
    }
    v.`total_waypoints` = try r.integer(UInt32.self)
    v.`estimated_time_remaining` = try r.float32()
    v.`distance_to_next_waypoint` = try r.float32()
    v.`task_status` = try r.integer(UInt8.self)
    v.`error_code` = try r.integer(UInt32.self)
    v.`error_msg` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1MotioncaptureForcePlateData: Canonical {
  public static let maximumWireBytes = 280
  public static let codecIdentity =
    "UWVMROS1_e7ef4632661a80660bd892281e4f820842d293103892d82934522eb165089930"
  public static let nativeType = "motioncapture/ForcePlateData"
  public static let nativeIdentity: String? = nil
  public var `frame`: Int32 = 0
  public var `plate_id`: Int32 = 0
  public var `Fxyz`: [Double] = []
  public var `xyz`: [Double] = []
  public var `Mfree`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`frame`)
    try w.integer(self.`plate_id`)
    guard self.`Fxyz`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`Fxyz`.count))
    for e in self.`Fxyz` {
      try w.float64(e)
    }
    guard self.`xyz`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`xyz`.count))
    for e in self.`xyz` {
      try w.float64(e)
    }
    try w.float64(self.`Mfree`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1MotioncaptureForcePlateData {
    var v = Ros1MotioncaptureForcePlateData()
    v.`frame` = try r.integer(Int32.self)
    v.`plate_id` = try r.integer(Int32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`Fxyz` = []
    v.`Fxyz`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`Fxyz`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`xyz` = []
    v.`xyz`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`xyz`.append(try r.float64())
    }
    v.`Mfree` = try r.float64()
    return v
  }
}
public struct Ros1Network_monitorNetworkPingRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_c76fdf02624613021df1dde84435640759d522c9cbfef93377d65c4da68b6424"
  public static let nativeType = "network_monitor/NetworkPingRequest"
  public static let nativeIdentity: String? = nil
  public var `timestamp`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`timestamp`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Network_monitorNetworkPingRequest
  {
    var v = Ros1Network_monitorNetworkPingRequest()
    v.`timestamp` = try r.float64()
    return v
  }
}
public struct Ros1Network_monitorNetworkPingResponse: Canonical {
  public static let maximumWireBytes = 269
  public static let codecIdentity =
    "UWVMROS1_9f818cf04a6515748cfda9f8f8ebd323500f1b4c69687c53388d9dc89b96695e"
  public static let nativeType = "network_monitor/NetworkPingResponse"
  public static let nativeIdentity: String? = nil
  public var `timestamp`: Double = 0
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`timestamp`)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Network_monitorNetworkPingResponse
  {
    var v = Ros1Network_monitorNetworkPingResponse()
    v.`timestamp` = try r.float64()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Network_monitorNetworkPingMsg: Canonical {
  public static let maximumWireBytes = 273
  public static let codecIdentity =
    "UWVMROS1_fea34714c4490be02928a28270b020ce60e0e59c06e91017029e13a86c4f5885"
  public static let nativeType = "network_monitor/NetworkPingMsg"
  public static let nativeIdentity: String? = nil
  public var `request_id`: Int32 = 0
  public var `timestamp`: Double = 0
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`request_id`)
    try w.float64(self.`timestamp`)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Network_monitorNetworkPingMsg {
    var v = Ros1Network_monitorNetworkPingMsg()
    v.`request_id` = try r.integer(Int32.self)
    v.`timestamp` = try r.float64()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Nimservos_controllerMotor_cmd: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_0ba0f7cb1224af45f72675d5c50fef6885acf4da2052af836c4050cfaac42ade"
  public static let nativeType = "nimservos_controller/motor_cmd"
  public static let nativeIdentity: String? = nil
  public var `linear_x`: Int64 = 0
  public var `linear_y`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`linear_x`)
    try w.integer(self.`linear_y`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nimservos_controllerMotor_cmd {
    var v = Ros1Nimservos_controllerMotor_cmd()
    v.`linear_x` = try r.integer(Int64.self)
    v.`linear_y` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1Nimservos_controllerMotor_state: Canonical {
  public static let maximumWireBytes = 538
  public static let codecIdentity =
    "UWVMROS1_67369c975c98e8bf8c7a77c9c2d129ed14d9a5a4892cdaab0037a614ddc81a5b"
  public static let nativeType = "nimservos_controller/motor_state"
  public static let nativeIdentity: String? = nil
  public var `device_id`: Int32 = 0
  public var `control_mode`: String = ""
  public var `state`: String = ""
  public var `sensor_position`: Int64 = 0
  public var `sensor_velocity`: Int32 = 0
  public var `sensor_temp`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`device_id`)
    try w.string(self.`control_mode`, bound: 256)
    try w.string(self.`state`, bound: 256)
    try w.integer(self.`sensor_position`)
    try w.integer(self.`sensor_velocity`)
    try w.integer(self.`sensor_temp`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nimservos_controllerMotor_state {
    var v = Ros1Nimservos_controllerMotor_state()
    v.`device_id` = try r.integer(Int32.self)
    v.`control_mode` = try r.string(bound: 256)
    v.`state` = try r.string(bound: 256)
    v.`sensor_position` = try r.integer(Int64.self)
    v.`sensor_velocity` = try r.integer(Int32.self)
    v.`sensor_temp` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Nlink_parserIotFrame0Node: Canonical {
  public static let maximumWireBytes = 284
  public static let codecIdentity =
    "UWVMROS1_6c60ca30e0e00ce014fdf8e8103cdb58f17053d01d13c20b60db11db8fe31993"
  public static let nativeType = "nlink_parser/IotFrame0Node"
  public static let nativeIdentity: String? = nil
  public var `uid`: UInt32 = 0
  public var `dis`: Float = 0
  public var `aoa_angle_horizontal`: Float = 0
  public var `aoa_angle_vertical`: Float = 0
  public var `fp_rssi`: Float = 0
  public var `rx_rssi`: Float = 0
  public var `user_data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`uid`)
    try w.float32(self.`dis`)
    try w.float32(self.`aoa_angle_horizontal`)
    try w.float32(self.`aoa_angle_vertical`)
    try w.float32(self.`fp_rssi`)
    try w.float32(self.`rx_rssi`)
    try w.string(self.`user_data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserIotFrame0Node {
    var v = Ros1Nlink_parserIotFrame0Node()
    v.`uid` = try r.integer(UInt32.self)
    v.`dis` = try r.float32()
    v.`aoa_angle_horizontal` = try r.float32()
    v.`aoa_angle_vertical` = try r.float32()
    v.`fp_rssi` = try r.float32()
    v.`rx_rssi` = try r.float32()
    v.`user_data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Nlink_parserIotFrame0: Canonical {
  public static let maximumWireBytes = 2285
  public static let codecIdentity =
    "UWVMROS1_f9374a7b69be82e8ee93132d2be6132e4901f32863fb7938d2af17b21d43e0f3"
  public static let nativeType = "nlink_parser/IotFrame0"
  public static let nativeIdentity: String? = nil
  public var `uid`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `io_status`: UInt8 = 0
  public var `nodes`: [Ros1Nlink_parserIotFrame0Node] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`uid`)
    try w.integer(self.`system_time`)
    try w.integer(self.`io_status`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserIotFrame0 {
    var v = Ros1Nlink_parserIotFrame0()
    v.`uid` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`io_status` = try r.integer(UInt8.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`nodes`.append(try Ros1Nlink_parserIotFrame0Node.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackTag: Canonical {
  public static let maximumWireBytes = 46
  public static let codecIdentity =
    "UWVMROS1_1313c238498fc689cf9fdc603f7ac91062aca481bff5a7e4c282af0c3fc44694"
  public static let nativeType = "nlink_parser/LinktrackTag"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `pos_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `dis_arr`: [Float] = Array(repeating: 0, count: 8)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`pos_3d`.count == 3 else { throw RosError(22) }
    for e in self.`pos_3d` {
      try w.float32(e)
    }
    guard self.`dis_arr`.count == 8 else { throw RosError(22) }
    for e in self.`dis_arr` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackTag {
    var v = Ros1Nlink_parserLinktrackTag()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    let count2 = 3
    v.`pos_3d` = []
    v.`pos_3d`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`pos_3d`.append(try r.float32())
    }
    let count3 = 8
    v.`dis_arr` = []
    v.`dis_arr`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`dis_arr`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackAnchorframe0: Canonical {
  public static let maximumWireBytes = 386
  public static let codecIdentity =
    "UWVMROS1_31b31e307fea711add727566eaa5791d4a3e4fb75e949af2890a1650260da7b0"
  public static let nativeType = "nlink_parser/LinktrackAnchorframe0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackTag] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackAnchorframe0
  {
    var v = Ros1Nlink_parserLinktrackAnchorframe0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackTag.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackAoaNode0: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_b019b95f03ec635e8319d6c3f2ea4d77bb9001ab054aea2f15afb2e55f6767b7"
  public static let nativeType = "nlink_parser/LinktrackAoaNode0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `dis`: Float = 0
  public var `angle`: Float = 0
  public var `fp_rssi`: Float = 0
  public var `rx_rssi`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.float32(self.`dis`)
    try w.float32(self.`angle`)
    try w.float32(self.`fp_rssi`)
    try w.float32(self.`rx_rssi`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackAoaNode0 {
    var v = Ros1Nlink_parserLinktrackAoaNode0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`dis` = try r.float32()
    v.`angle` = try r.float32()
    v.`fp_rssi` = try r.float32()
    v.`rx_rssi` = try r.float32()
    return v
  }
}
public struct Ros1Nlink_parserLinktrackAoaNodeframe0: Canonical {
  public static let maximumWireBytes = 162
  public static let codecIdentity =
    "UWVMROS1_c7ae90d747b6ee44750a53ebb3c982293179a1b0815c924b3abb5864953e6fa6"
  public static let nativeType = "nlink_parser/LinktrackAoaNodeframe0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackAoaNode0] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackAoaNodeframe0
  {
    var v = Ros1Nlink_parserLinktrackAoaNodeframe0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackAoaNode0.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode0: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_d82f50e1b623d4b24ebbc5985d03314cc0e7eff4756cce5ce2271112cdfcebce"
  public static let nativeType = "nlink_parser/LinktrackNode0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode0 {
    var v = Ros1Nlink_parserLinktrackNode0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 256 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode1: Canonical {
  public static let maximumWireBytes = 14
  public static let codecIdentity =
    "UWVMROS1_9789b48575ab6ef9713ee56a2bfd05a5a3079ec6fbcf9d3ce7bd3e2b991d5bef"
  public static let nativeType = "nlink_parser/LinktrackNode1"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `pos_3d`: [Float] = Array(repeating: 0, count: 3)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`pos_3d`.count == 3 else { throw RosError(22) }
    for e in self.`pos_3d` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode1 {
    var v = Ros1Nlink_parserLinktrackNode1()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    let count2 = 3
    v.`pos_3d` = []
    v.`pos_3d`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`pos_3d`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode2: Canonical {
  public static let maximumWireBytes = 14
  public static let codecIdentity =
    "UWVMROS1_c0e124f1ab05da79f895f76e4a3aa047b588b136c50ab023cdaaa34b246f9076"
  public static let nativeType = "nlink_parser/LinktrackNode2"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `dis`: Float = 0
  public var `fp_rssi`: Float = 0
  public var `rx_rssi`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.float32(self.`dis`)
    try w.float32(self.`fp_rssi`)
    try w.float32(self.`rx_rssi`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode2 {
    var v = Ros1Nlink_parserLinktrackNode2()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`dis` = try r.float32()
    v.`fp_rssi` = try r.float32()
    v.`rx_rssi` = try r.float32()
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode4Anchor: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_e38f8c5c5eeb964ee53b95ba23457586c9bbe8cbb40806c6b7e11cbe085e4a91"
  public static let nativeType = "nlink_parser/LinktrackNode4Anchor"
  public static let nativeIdentity: String? = nil
  public var `id`: UInt8 = 0
  public var `dis`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.float32(self.`dis`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode4Anchor {
    var v = Ros1Nlink_parserLinktrackNode4Anchor()
    v.`id` = try r.integer(UInt8.self)
    v.`dis` = try r.float32()
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode4Tag: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_88e4a347b1f7d898e76a7e4a38cd87b296d501bc62619fef532f077c1a5e5b71"
  public static let nativeType = "nlink_parser/LinktrackNode4Tag"
  public static let nativeIdentity: String? = nil
  public var `id`: UInt8 = 0
  public var `voltage`: Float = 0
  public var `anchors`: [Ros1Nlink_parserLinktrackNode4Anchor] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.float32(self.`voltage`)
    guard self.`anchors`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`anchors`.count))
    for e in self.`anchors` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode4Tag {
    var v = Ros1Nlink_parserLinktrackNode4Tag()
    v.`id` = try r.integer(UInt8.self)
    v.`voltage` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`anchors` = []
    v.`anchors`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`anchors`.append(try Ros1Nlink_parserLinktrackNode4Anchor.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode5: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_2b540f35cfc48b799e4c0ec371352fe14a666e4712d6525aa9159790ffa9ad2f"
  public static let nativeType = "nlink_parser/LinktrackNode5"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt32 = 0
  public var `dis`: Float = 0
  public var `fp_rssi`: Float = 0
  public var `rx_rssi`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.float32(self.`dis`)
    try w.float32(self.`fp_rssi`)
    try w.float32(self.`rx_rssi`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode5 {
    var v = Ros1Nlink_parserLinktrackNode5()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt32.self)
    v.`dis` = try r.float32()
    v.`fp_rssi` = try r.float32()
    v.`rx_rssi` = try r.float32()
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNode6: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_e628121146b5539270c84e7f2d9d2febd2d016c77ecbb6b683e8568ffebf9dd4"
  public static let nativeType = "nlink_parser/LinktrackNode6"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt32 = 0
  public var `data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNode6 {
    var v = Ros1Nlink_parserLinktrackNode6()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 256 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe0: Canonical {
  public static let maximumWireBytes = 2102
  public static let codecIdentity =
    "UWVMROS1_d52f67f7a97929fcc86b851b928cd78fb661b8399ef7a01cc7961d6db16b8c2a"
  public static let nativeType = "nlink_parser/LinktrackNodeframe0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackNode0] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe0 {
    var v = Ros1Nlink_parserLinktrackNodeframe0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode0.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe1: Canonical {
  public static let maximumWireBytes = 130
  public static let codecIdentity =
    "UWVMROS1_932012b6f61f02afc460cdfd988d1cbeeff2259eaef0c6028c514ddfb2110e37"
  public static let nativeType = "nlink_parser/LinktrackNodeframe1"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackNode1] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe1 {
    var v = Ros1Nlink_parserLinktrackNodeframe1()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode1.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe2: Canonical {
  public static let maximumWireBytes = 218
  public static let codecIdentity =
    "UWVMROS1_8a42ec243ba2f497b7ba5a48854f63f5da2141f8ebd8661577e02dc2d6bc7440"
  public static let nativeType = "nlink_parser/LinktrackNodeframe2"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `pos_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `eop_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `vel_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `angle_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `quaternion`: [Float] = Array(repeating: 0, count: 4)
  public var `imu_gyro_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `imu_acc_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `nodes`: [Ros1Nlink_parserLinktrackNode2] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`pos_3d`.count == 3 else { throw RosError(22) }
    for e in self.`pos_3d` {
      try w.float32(e)
    }
    guard self.`eop_3d`.count == 3 else { throw RosError(22) }
    for e in self.`eop_3d` {
      try w.float32(e)
    }
    guard self.`vel_3d`.count == 3 else { throw RosError(22) }
    for e in self.`vel_3d` {
      try w.float32(e)
    }
    guard self.`angle_3d`.count == 3 else { throw RosError(22) }
    for e in self.`angle_3d` {
      try w.float32(e)
    }
    guard self.`quaternion`.count == 4 else { throw RosError(22) }
    for e in self.`quaternion` {
      try w.float32(e)
    }
    guard self.`imu_gyro_3d`.count == 3 else { throw RosError(22) }
    for e in self.`imu_gyro_3d` {
      try w.float32(e)
    }
    guard self.`imu_acc_3d`.count == 3 else { throw RosError(22) }
    for e in self.`imu_acc_3d` {
      try w.float32(e)
    }
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe2 {
    var v = Ros1Nlink_parserLinktrackNodeframe2()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let count5 = 3
    v.`pos_3d` = []
    v.`pos_3d`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`pos_3d`.append(try r.float32())
    }
    let count6 = 3
    v.`eop_3d` = []
    v.`eop_3d`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`eop_3d`.append(try r.float32())
    }
    let count7 = 3
    v.`vel_3d` = []
    v.`vel_3d`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`vel_3d`.append(try r.float32())
    }
    let count8 = 3
    v.`angle_3d` = []
    v.`angle_3d`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`angle_3d`.append(try r.float32())
    }
    let count9 = 4
    v.`quaternion` = []
    v.`quaternion`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`quaternion`.append(try r.float32())
    }
    let count10 = 3
    v.`imu_gyro_3d` = []
    v.`imu_gyro_3d`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`imu_gyro_3d`.append(try r.float32())
    }
    let count11 = 3
    v.`imu_acc_3d` = []
    v.`imu_acc_3d`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`imu_acc_3d`.append(try r.float32())
    }
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 8 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode2.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe3: Canonical {
  public static let maximumWireBytes = 130
  public static let codecIdentity =
    "UWVMROS1_ab2f6e3b7a0c3f0461e70459ac96f9b96d54eaf9db6c6261670d3d9a95138c7c"
  public static let nativeType = "nlink_parser/LinktrackNodeframe3"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackNode2] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe3 {
    var v = Ros1Nlink_parserLinktrackNodeframe3()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode2.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe4: Canonical {
  public static let maximumWireBytes = 410
  public static let codecIdentity =
    "UWVMROS1_efbf3229eec7a96bf3e8f2fa39930e1a967e244f7a00578a9862bee4bf8d9e29"
  public static let nativeType = "nlink_parser/LinktrackNodeframe4"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `tags`: [Ros1Nlink_parserLinktrackNode4Tag] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`tags`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`tags`.count))
    for e in self.`tags` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe4 {
    var v = Ros1Nlink_parserLinktrackNodeframe4()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`tags` = []
    v.`tags`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`tags`.append(try Ros1Nlink_parserLinktrackNode4Tag.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe5: Canonical {
  public static let maximumWireBytes = 157
  public static let codecIdentity =
    "UWVMROS1_cda6c090504cb171ea69e6913386ac6b9cbdf5e64a07296f1e3d3686b39cb5ae"
  public static let nativeType = "nlink_parser/LinktrackNodeframe5"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt32 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackNode5] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe5 {
    var v = Ros1Nlink_parserLinktrackNodeframe5()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt32.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode5.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackNodeframe6: Canonical {
  public static let maximumWireBytes = 2129
  public static let codecIdentity =
    "UWVMROS1_e438b25ee7cc6b79857819e51aefaef704b99fc0e7a6bc7f37a4e43dbd321211"
  public static let nativeType = "nlink_parser/LinktrackNodeframe6"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt32 = 0
  public var `nodes`: [Ros1Nlink_parserLinktrackNode6] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackNodeframe6 {
    var v = Ros1Nlink_parserLinktrackNodeframe6()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`nodes`.append(try Ros1Nlink_parserLinktrackNode6.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserLinktrackTagframe0: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_bca695ff6973552184fe842d7e6c1c3881b981ca7681bc2758458bbf5f89b7bd"
  public static let nativeType = "nlink_parser/LinktrackTagframe0"
  public static let nativeIdentity: String? = nil
  public var `role`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `local_time`: UInt32 = 0
  public var `system_time`: UInt32 = 0
  public var `voltage`: Float = 0
  public var `pos_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `eop_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `vel_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `dis_arr`: [Float] = Array(repeating: 0, count: 8)
  public var `angle_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `quaternion`: [Float] = Array(repeating: 0, count: 4)
  public var `imu_gyro_3d`: [Float] = Array(repeating: 0, count: 3)
  public var `imu_acc_3d`: [Float] = Array(repeating: 0, count: 3)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`role`)
    try w.integer(self.`id`)
    try w.integer(self.`local_time`)
    try w.integer(self.`system_time`)
    try w.float32(self.`voltage`)
    guard self.`pos_3d`.count == 3 else { throw RosError(22) }
    for e in self.`pos_3d` {
      try w.float32(e)
    }
    guard self.`eop_3d`.count == 3 else { throw RosError(22) }
    for e in self.`eop_3d` {
      try w.float32(e)
    }
    guard self.`vel_3d`.count == 3 else { throw RosError(22) }
    for e in self.`vel_3d` {
      try w.float32(e)
    }
    guard self.`dis_arr`.count == 8 else { throw RosError(22) }
    for e in self.`dis_arr` {
      try w.float32(e)
    }
    guard self.`angle_3d`.count == 3 else { throw RosError(22) }
    for e in self.`angle_3d` {
      try w.float32(e)
    }
    guard self.`quaternion`.count == 4 else { throw RosError(22) }
    for e in self.`quaternion` {
      try w.float32(e)
    }
    guard self.`imu_gyro_3d`.count == 3 else { throw RosError(22) }
    for e in self.`imu_gyro_3d` {
      try w.float32(e)
    }
    guard self.`imu_acc_3d`.count == 3 else { throw RosError(22) }
    for e in self.`imu_acc_3d` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserLinktrackTagframe0 {
    var v = Ros1Nlink_parserLinktrackTagframe0()
    v.`role` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`local_time` = try r.integer(UInt32.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`voltage` = try r.float32()
    let count5 = 3
    v.`pos_3d` = []
    v.`pos_3d`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`pos_3d`.append(try r.float32())
    }
    let count6 = 3
    v.`eop_3d` = []
    v.`eop_3d`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`eop_3d`.append(try r.float32())
    }
    let count7 = 3
    v.`vel_3d` = []
    v.`vel_3d`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`vel_3d`.append(try r.float32())
    }
    let count8 = 8
    v.`dis_arr` = []
    v.`dis_arr`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`dis_arr`.append(try r.float32())
    }
    let count9 = 3
    v.`angle_3d` = []
    v.`angle_3d`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`angle_3d`.append(try r.float32())
    }
    let count10 = 4
    v.`quaternion` = []
    v.`quaternion`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`quaternion`.append(try r.float32())
    }
    let count11 = 3
    v.`imu_gyro_3d` = []
    v.`imu_gyro_3d`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`imu_gyro_3d`.append(try r.float32())
    }
    let count12 = 3
    v.`imu_acc_3d` = []
    v.`imu_acc_3d`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`imu_acc_3d`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Nlink_parserTofsenseFrame0: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_7055915ce923839d76e5eded20b40e1aa7d95c9cdbf23973c6a522a7ae1826a1"
  public static let nativeType = "nlink_parser/TofsenseFrame0"
  public static let nativeIdentity: String? = nil
  public var `id`: UInt8 = 0
  public var `system_time`: UInt32 = 0
  public var `dis`: Float = 0
  public var `dis_status`: UInt8 = 0
  public var `signal_strength`: UInt16 = 0
  public var `range_precision`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.integer(self.`system_time`)
    try w.float32(self.`dis`)
    try w.integer(self.`dis_status`)
    try w.integer(self.`signal_strength`)
    try w.integer(self.`range_precision`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserTofsenseFrame0 {
    var v = Ros1Nlink_parserTofsenseFrame0()
    v.`id` = try r.integer(UInt8.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`dis` = try r.float32()
    v.`dis_status` = try r.integer(UInt8.self)
    v.`signal_strength` = try r.integer(UInt16.self)
    v.`range_precision` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Nlink_parserTofsenseCascade: Canonical {
  public static let maximumWireBytes = 108
  public static let codecIdentity =
    "UWVMROS1_8deb19890056e86ef4f670c0e8ccccf0b60e50d8c1c84436c693790f9e3c78ec"
  public static let nativeType = "nlink_parser/TofsenseCascade"
  public static let nativeIdentity: String? = nil
  public var `nodes`: [Ros1Nlink_parserTofsenseFrame0] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`nodes`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`nodes`.count))
    for e in self.`nodes` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserTofsenseCascade {
    var v = Ros1Nlink_parserTofsenseCascade()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`nodes` = []
    v.`nodes`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`nodes`.append(try Ros1Nlink_parserTofsenseFrame0.read(from: &r))
    }
    return v
  }
}
public struct Ros1Nlink_parserTofsenseMFrame0Pixel: Canonical {
  public static let maximumWireBytes = 7
  public static let codecIdentity =
    "UWVMROS1_3dd391c2d1057d91a06a585c6be40bc733ed97cd27d7c1c79d6b90c0ec432eb4"
  public static let nativeType = "nlink_parser/TofsenseMFrame0Pixel"
  public static let nativeIdentity: String? = nil
  public var `dis`: Float = 0
  public var `dis_status`: UInt8 = 0
  public var `signal_strength`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`dis`)
    try w.integer(self.`dis_status`)
    try w.integer(self.`signal_strength`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserTofsenseMFrame0Pixel {
    var v = Ros1Nlink_parserTofsenseMFrame0Pixel()
    v.`dis` = try r.float32()
    v.`dis_status` = try r.integer(UInt8.self)
    v.`signal_strength` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Nlink_parserTofsenseMFrame0: Canonical {
  public static let maximumWireBytes = 66
  public static let codecIdentity =
    "UWVMROS1_2cceeaeda033d4c522163c3f8191c086012c4adf9cc65560c7ed8cbd0edcc95c"
  public static let nativeType = "nlink_parser/TofsenseMFrame0"
  public static let nativeIdentity: String? = nil
  public var `id`: UInt8 = 0
  public var `system_time`: UInt32 = 0
  public var `pixel_count`: UInt8 = 0
  public var `pixels`: [Ros1Nlink_parserTofsenseMFrame0Pixel] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.integer(self.`system_time`)
    try w.integer(self.`pixel_count`)
    guard self.`pixels`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`pixels`.count))
    for e in self.`pixels` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Nlink_parserTofsenseMFrame0 {
    var v = Ros1Nlink_parserTofsenseMFrame0()
    v.`id` = try r.integer(UInt8.self)
    v.`system_time` = try r.integer(UInt32.self)
    v.`pixel_count` = try r.integer(UInt8.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`pixels` = []
    v.`pixels`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`pixels`.append(try Ros1Nlink_parserTofsenseMFrame0Pixel.read(from: &r))
    }
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonJoySticks: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_9cf32e8d4a21b3a46bc3bc82f07cc9c109aa1471bb8ceb3c409f1596e910aaea"
  public static let nativeType = "noitom_hi5_hand_udp_python/JoySticks"
  public static let nativeIdentity: String? = nil
  public var `left_x`: Float = 0
  public var `left_y`: Float = 0
  public var `left_trigger`: Float = 0
  public var `left_grip`: Float = 0
  public var `left_first_button_pressed`: Bool = false
  public var `left_second_button_pressed`: Bool = false
  public var `left_first_button_touched`: Bool = false
  public var `left_second_button_touched`: Bool = false
  public var `right_x`: Float = 0
  public var `right_y`: Float = 0
  public var `right_trigger`: Float = 0
  public var `right_grip`: Float = 0
  public var `right_first_button_pressed`: Bool = false
  public var `right_second_button_pressed`: Bool = false
  public var `right_first_button_touched`: Bool = false
  public var `right_second_button_touched`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`left_x`)
    try w.float32(self.`left_y`)
    try w.float32(self.`left_trigger`)
    try w.float32(self.`left_grip`)
    try w.boolean(self.`left_first_button_pressed`)
    try w.boolean(self.`left_second_button_pressed`)
    try w.boolean(self.`left_first_button_touched`)
    try w.boolean(self.`left_second_button_touched`)
    try w.float32(self.`right_x`)
    try w.float32(self.`right_y`)
    try w.float32(self.`right_trigger`)
    try w.float32(self.`right_grip`)
    try w.boolean(self.`right_first_button_pressed`)
    try w.boolean(self.`right_second_button_pressed`)
    try w.boolean(self.`right_first_button_touched`)
    try w.boolean(self.`right_second_button_touched`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Noitom_hi5_hand_udp_pythonJoySticks
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonJoySticks()
    v.`left_x` = try r.float32()
    v.`left_y` = try r.float32()
    v.`left_trigger` = try r.float32()
    v.`left_grip` = try r.float32()
    v.`left_first_button_pressed` = try r.boolean()
    v.`left_second_button_pressed` = try r.boolean()
    v.`left_first_button_touched` = try r.boolean()
    v.`left_second_button_touched` = try r.boolean()
    v.`right_x` = try r.float32()
    v.`right_y` = try r.float32()
    v.`right_trigger` = try r.float32()
    v.`right_grip` = try r.float32()
    v.`right_first_button_pressed` = try r.boolean()
    v.`right_second_button_pressed` = try r.boolean()
    v.`right_first_button_touched` = try r.boolean()
    v.`right_second_button_touched` = try r.boolean()
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonPoseInfo: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_57591e1ee89a8e3850cb474e4f4bb7c0b9bb4d7a855294f9764a3d2662366776"
  public static let nativeType = "noitom_hi5_hand_udp_python/PoseInfo"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Noitom_hi5_hand_udp_pythonPoseInfo
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonPoseInfo()
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonPoseInfoList: Canonical {
  public static let maximumWireBytes = 462
  public static let codecIdentity =
    "UWVMROS1_e81ff54c597bbe2d4e7d8089b6d52fc34b01870a63ec5bbea579a6614c095a6f"
  public static let nativeType = "noitom_hi5_hand_udp_python/PoseInfoList"
  public static let nativeIdentity: String? = nil
  public var `timestamp_ms`: Int64 = 0
  public var `is_high_confidence`: Bool = false
  public var `is_hand_tracking`: Bool = false
  public var `poses`: [Ros1Noitom_hi5_hand_udp_pythonPoseInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timestamp_ms`)
    try w.boolean(self.`is_high_confidence`)
    try w.boolean(self.`is_hand_tracking`)
    guard self.`poses`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`poses`.count))
    for e in self.`poses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Noitom_hi5_hand_udp_pythonPoseInfoList
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonPoseInfoList()
    v.`timestamp_ms` = try r.integer(Int64.self)
    v.`is_high_confidence` = try r.boolean()
    v.`is_hand_tracking` = try r.boolean()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`poses` = []
    v.`poses`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`poses`.append(try Ros1Noitom_hi5_hand_udp_pythonPoseInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonQuaternionArray: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f775507277ae2b1a141a81b587f8043969398fd05d3acb9fc000d15fa9733354"
  public static let nativeType = "noitom_hi5_hand_udp_python/QuaternionArray"
  public static let nativeIdentity: String? = nil
  public var `quaternions`: [Ros1Geometry_msgsQuaternion] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`quaternions`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`quaternions`.count))
    for e in self.`quaternions` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Noitom_hi5_hand_udp_pythonQuaternionArray
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonQuaternionArray()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`quaternions` = []
    v.`quaternions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`quaternions`.append(try Ros1Geometry_msgsQuaternion.read(from: &r))
    }
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonVector4: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_59d75e32f1d014dbf662f9847ed07e0e867a9dee9a2afdbb931e0528fdd615e0"
  public static let nativeType = "noitom_hi5_hand_udp_python/Vector4"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `w`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Noitom_hi5_hand_udp_pythonVector4
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonVector4()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`w` = try r.float32()
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonHandRotation: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f05ca89e8e5dfd73346ee7f14b27ccc0c06a6540ca21548e06caafbbae791714"
  public static let nativeType = "noitom_hi5_hand_udp_python/handRotation"
  public static let nativeIdentity: String? = nil
  public var `quaternions`: [Ros1Geometry_msgsQuaternion] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`quaternions`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`quaternions`.count))
    for e in self.`quaternions` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Noitom_hi5_hand_udp_pythonHandRotation
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonHandRotation()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`quaternions` = []
    v.`quaternions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`quaternions`.append(try Ros1Geometry_msgsQuaternion.read(from: &r))
    }
    return v
  }
}
public struct Ros1Noitom_hi5_hand_udp_pythonHandRotationEular: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_3f9488442c2eaab4082975c08f1c530625f911e56a05b24d941e5abfd8ca31c2"
  public static let nativeType = "noitom_hi5_hand_udp_python/handRotationEular"
  public static let nativeIdentity: String? = nil
  public var `eulerAngles`: [Ros1Noitom_hi5_hand_udp_pythonVector4] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`eulerAngles`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`eulerAngles`.count))
    for e in self.`eulerAngles` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Noitom_hi5_hand_udp_pythonHandRotationEular
  {
    var v = Ros1Noitom_hi5_hand_udp_pythonHandRotationEular()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`eulerAngles` = []
    v.`eulerAngles`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`eulerAngles`.append(try Ros1Noitom_hi5_hand_udp_pythonVector4.read(from: &r))
    }
    return v
  }
}
public struct Ros1Ocs2_msgsConstraint: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_5ed57216e90358bfcc530ac80a88c0af3d867bafaebca58bbc61ff1ed7b875f4"
  public static let nativeType = "ocs2_msgs/constraint"
  public static let nativeIdentity: String? = nil
  public var `time`: Float = 0
  public var `value`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`time`)
    guard self.`value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsConstraint {
    var v = Ros1Ocs2_msgsConstraint()
    v.`time` = try r.float32()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`value` = []
    v.`value`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`value`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsController_data: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_e78a3ab284c7d3a89b8246dafbe2f4b111186df637124d9f37a0e29e36c56fe9"
  public static let nativeType = "ocs2_msgs/controller_data"
  public static let nativeIdentity: String? = nil
  public var `data`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsController_data {
    var v = Ros1Ocs2_msgsController_data()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsLagrangian_metrics: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_231ec27a2d55a6e336615abf806942d83122b344374089161bd0a32e2b9be240"
  public static let nativeType = "ocs2_msgs/lagrangian_metrics"
  public static let nativeIdentity: String? = nil
  public var `time`: Float = 0
  public var `penalty`: Float = 0
  public var `constraint`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`time`)
    try w.float32(self.`penalty`)
    guard self.`constraint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`constraint`.count))
    for e in self.`constraint` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsLagrangian_metrics {
    var v = Ros1Ocs2_msgsLagrangian_metrics()
    v.`time` = try r.float32()
    v.`penalty` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`constraint` = []
    v.`constraint`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`constraint`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMode_schedule: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_3947a55981647683f9345b7e9d169fd72c50d38e343d64b4681598359b9f1643"
  public static let nativeType = "ocs2_msgs/mode_schedule"
  public static let nativeIdentity: String? = nil
  public var `eventTimes`: [Double] = []
  public var `modeSequence`: [Int8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`eventTimes`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`eventTimes`.count))
    for e in self.`eventTimes` {
      try w.float64(e)
    }
    guard self.`modeSequence`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`modeSequence`.count))
    for e in self.`modeSequence` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMode_schedule {
    var v = Ros1Ocs2_msgsMode_schedule()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`eventTimes` = []
    v.`eventTimes`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`eventTimes`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`modeSequence` = []
    v.`modeSequence`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`modeSequence`.append(try r.integer(Int8.self))
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_state: Canonical {
  public static let maximumWireBytes = 516
  public static let codecIdentity =
    "UWVMROS1_3c9644ad4773e490b934d0307b09b1dad08631ecb5f7aae5d786595402119492"
  public static let nativeType = "ocs2_msgs/mpc_state"
  public static let nativeIdentity: String? = nil
  public var `value`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`value`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_state {
    var v = Ros1Ocs2_msgsMpc_state()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`value` = []
    v.`value`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`value`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_input: Canonical {
  public static let maximumWireBytes = 516
  public static let codecIdentity =
    "UWVMROS1_2591643ee7dfe9762a73f543c7bf7dea0fc384abcf2a9e8305153011de43b3f8"
  public static let nativeType = "ocs2_msgs/mpc_input"
  public static let nativeIdentity: String? = nil
  public var `value`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`value`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_input {
    var v = Ros1Ocs2_msgsMpc_input()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`value` = []
    v.`value`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`value`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_observation: Canonical {
  public static let maximumWireBytes = 1041
  public static let codecIdentity =
    "UWVMROS1_ba910059c5be1476eec8dbad8d745afaba40c89885adb202d2a35aa37f9f075e"
  public static let nativeType = "ocs2_msgs/mpc_observation"
  public static let nativeIdentity: String? = nil
  public var `time`: Double = 0
  public var `state`: Ros1Ocs2_msgsMpc_state = Ros1Ocs2_msgsMpc_state()
  public var `input`: Ros1Ocs2_msgsMpc_input = Ros1Ocs2_msgsMpc_input()
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time`)
    try self.`state`.write(to: &w)
    try self.`input`.write(to: &w)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_observation {
    var v = Ros1Ocs2_msgsMpc_observation()
    v.`time` = try r.float64()
    v.`state` = try Ros1Ocs2_msgsMpc_state.read(from: &r)
    v.`input` = try Ros1Ocs2_msgsMpc_input.read(from: &r)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_target_trajectories: Canonical {
  public static let maximumWireBytes = 4268
  public static let codecIdentity =
    "UWVMROS1_6e349264eb44f2b5b41a1b569bdcc8782b18b2631a5534e6d3a165eecbc2930c"
  public static let nativeType = "ocs2_msgs/mpc_target_trajectories"
  public static let nativeIdentity: String? = nil
  public var `timeTrajectory`: [Double] = []
  public var `stateTrajectory`: [Ros1Ocs2_msgsMpc_state] = []
  public var `inputTrajectory`: [Ros1Ocs2_msgsMpc_input] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`timeTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`timeTrajectory`.count))
    for e in self.`timeTrajectory` {
      try w.float64(e)
    }
    guard self.`stateTrajectory`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`stateTrajectory`.count))
    for e in self.`stateTrajectory` {
      try e.write(to: &w)
    }
    guard self.`inputTrajectory`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`inputTrajectory`.count))
    for e in self.`inputTrajectory` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_target_trajectories {
    var v = Ros1Ocs2_msgsMpc_target_trajectories()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`timeTrajectory` = []
    v.`timeTrajectory`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`timeTrajectory`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`stateTrajectory` = []
    v.`stateTrajectory`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`stateTrajectory`.append(try Ros1Ocs2_msgsMpc_state.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`inputTrajectory` = []
    v.`inputTrajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`inputTrajectory`.append(try Ros1Ocs2_msgsMpc_input.read(from: &r))
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_performance_indices: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_273d68282cf27631b424f01d8ec4adc53b2af16477b4419a1e9bf259413b4c15"
  public static let nativeType = "ocs2_msgs/mpc_performance_indices"
  public static let nativeIdentity: String? = nil
  public var `initTime`: Float = 0
  public var `merit`: Float = 0
  public var `cost`: Float = 0
  public var `dynamicsViolationSSE`: Float = 0
  public var `equalityConstraintsSSE`: Float = 0
  public var `equalityLagrangian`: Float = 0
  public var `inequalityLagrangian`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`initTime`)
    try w.float32(self.`merit`)
    try w.float32(self.`cost`)
    try w.float32(self.`dynamicsViolationSSE`)
    try w.float32(self.`equalityConstraintsSSE`)
    try w.float32(self.`equalityLagrangian`)
    try w.float32(self.`inequalityLagrangian`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_performance_indices {
    var v = Ros1Ocs2_msgsMpc_performance_indices()
    v.`initTime` = try r.float32()
    v.`merit` = try r.float32()
    v.`cost` = try r.float32()
    v.`dynamicsViolationSSE` = try r.float32()
    v.`equalityConstraintsSSE` = try r.float32()
    v.`equalityLagrangian` = try r.float32()
    v.`inequalityLagrangian` = try r.float32()
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_flattened_controller: Canonical {
  public static let maximumWireBytes = 10070
  public static let codecIdentity =
    "UWVMROS1_9814d2381d31bbf813f4abdfea131df7dfa0b5628f1cb1f039d6a3d2237dbb8f"
  public static let nativeType = "ocs2_msgs/mpc_flattened_controller"
  public static let nativeIdentity: String? = nil
  public static let `CONTROLLER_UNKNOWN`: UInt8 = 0
  public static let `CONTROLLER_FEEDFORWARD`: UInt8 = 1
  public static let `CONTROLLER_LINEAR`: UInt8 = 2
  public var `controllerType`: UInt8 = 0
  public var `initObservation`: Ros1Ocs2_msgsMpc_observation = Ros1Ocs2_msgsMpc_observation()
  public var `planTargetTrajectories`: Ros1Ocs2_msgsMpc_target_trajectories =
    Ros1Ocs2_msgsMpc_target_trajectories()
  public var `stateTrajectory`: [Ros1Ocs2_msgsMpc_state] = []
  public var `inputTrajectory`: [Ros1Ocs2_msgsMpc_input] = []
  public var `timeTrajectory`: [Double] = []
  public var `postEventIndices`: [UInt16] = []
  public var `modeSchedule`: Ros1Ocs2_msgsMode_schedule = Ros1Ocs2_msgsMode_schedule()
  public var `data`: [Ros1Ocs2_msgsController_data] = []
  public var `performanceIndices`: Ros1Ocs2_msgsMpc_performance_indices =
    Ros1Ocs2_msgsMpc_performance_indices()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`controllerType`)
    try self.`initObservation`.write(to: &w)
    try self.`planTargetTrajectories`.write(to: &w)
    guard self.`stateTrajectory`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`stateTrajectory`.count))
    for e in self.`stateTrajectory` {
      try e.write(to: &w)
    }
    guard self.`inputTrajectory`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`inputTrajectory`.count))
    for e in self.`inputTrajectory` {
      try e.write(to: &w)
    }
    guard self.`timeTrajectory`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`timeTrajectory`.count))
    for e in self.`timeTrajectory` {
      try w.float64(e)
    }
    guard self.`postEventIndices`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`postEventIndices`.count))
    for e in self.`postEventIndices` {
      try w.integer(e)
    }
    try self.`modeSchedule`.write(to: &w)
    guard self.`data`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
    try self.`performanceIndices`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_flattened_controller
  {
    var v = Ros1Ocs2_msgsMpc_flattened_controller()
    v.`controllerType` = try r.integer(UInt8.self)
    v.`initObservation` = try Ros1Ocs2_msgsMpc_observation.read(from: &r)
    v.`planTargetTrajectories` = try Ros1Ocs2_msgsMpc_target_trajectories.read(from: &r)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`stateTrajectory` = []
    v.`stateTrajectory`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`stateTrajectory`.append(try Ros1Ocs2_msgsMpc_state.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`inputTrajectory` = []
    v.`inputTrajectory`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`inputTrajectory`.append(try Ros1Ocs2_msgsMpc_input.read(from: &r))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`timeTrajectory` = []
    v.`timeTrajectory`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`timeTrajectory`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`postEventIndices` = []
    v.`postEventIndices`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`postEventIndices`.append(try r.integer(UInt16.self))
    }
    v.`modeSchedule` = try Ros1Ocs2_msgsMode_schedule.read(from: &r)
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 4 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`data` = []
    v.`data`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`data`.append(try Ros1Ocs2_msgsController_data.read(from: &r))
    }
    v.`performanceIndices` = try Ros1Ocs2_msgsMpc_performance_indices.read(from: &r)
    return v
  }
}
public struct Ros1Ocs2_msgsMpc_solver_data: Canonical {
  public static let maximumWireBytes = 14770
  public static let codecIdentity =
    "UWVMROS1_215c558c1d4953793770d6655259d39ec13bac7969d5763a308756feb581c021"
  public static let nativeType = "ocs2_msgs/mpc_solver_data"
  public static let nativeIdentity: String? = nil
  public var `initTime`: Double = 0
  public var `initState`: [Double] = []
  public var `finalTime`: Double = 0
  public var `modeSchedule`: Ros1Ocs2_msgsMode_schedule = Ros1Ocs2_msgsMode_schedule()
  public var `targetTrajectories`: Ros1Ocs2_msgsMpc_target_trajectories =
    Ros1Ocs2_msgsMpc_target_trajectories()
  public var `mpc_flattened_controller`: Ros1Ocs2_msgsMpc_flattened_controller =
    Ros1Ocs2_msgsMpc_flattened_controller()
  public var `swingPlannerMultipliers`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`initTime`)
    guard self.`initState`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`initState`.count))
    for e in self.`initState` {
      try w.float64(e)
    }
    try w.float64(self.`finalTime`)
    try self.`modeSchedule`.write(to: &w)
    try self.`targetTrajectories`.write(to: &w)
    try self.`mpc_flattened_controller`.write(to: &w)
    guard self.`swingPlannerMultipliers`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`swingPlannerMultipliers`.count))
    for e in self.`swingPlannerMultipliers` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMpc_solver_data {
    var v = Ros1Ocs2_msgsMpc_solver_data()
    v.`initTime` = try r.float64()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`initState` = []
    v.`initState`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`initState`.append(try r.float64())
    }
    v.`finalTime` = try r.float64()
    v.`modeSchedule` = try Ros1Ocs2_msgsMode_schedule.read(from: &r)
    v.`targetTrajectories` = try Ros1Ocs2_msgsMpc_target_trajectories.read(from: &r)
    v.`mpc_flattened_controller` = try Ros1Ocs2_msgsMpc_flattened_controller.read(from: &r)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`swingPlannerMultipliers` = []
    v.`swingPlannerMultipliers`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`swingPlannerMultipliers`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsMultiplier: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_09b02ac02ad1579fa38f2c632880b7d87dacecc30bc419ff29276fe223cc1c59"
  public static let nativeType = "ocs2_msgs/multiplier"
  public static let nativeIdentity: String? = nil
  public var `time`: Float = 0
  public var `penalty`: Float = 0
  public var `lagrangian`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`time`)
    try w.float32(self.`penalty`)
    guard self.`lagrangian`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`lagrangian`.count))
    for e in self.`lagrangian` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsMultiplier {
    var v = Ros1Ocs2_msgsMultiplier()
    v.`time` = try r.float32()
    v.`penalty` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`lagrangian` = []
    v.`lagrangian`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`lagrangian`.append(try r.float32())
    }
    return v
  }
}
public struct Ros1Ocs2_msgsPause_resumeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_aea8b69dcf340e3ebac58734089fab37c60f8c37c52b13f8b7426e8234dc2c92"
  public static let nativeType = "ocs2_msgs/pause_resumeRequest"
  public static let nativeIdentity: String? = nil
  public var `pause`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`pause`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsPause_resumeRequest {
    var v = Ros1Ocs2_msgsPause_resumeRequest()
    v.`pause` = try r.boolean()
    return v
  }
}
public struct Ros1Ocs2_msgsPause_resumeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ef86b829dafc3a418545b92173fc8e9d6d756f7a712e7073716d3346fe3479fa"
  public static let nativeType = "ocs2_msgs/pause_resumeResponse"
  public static let nativeIdentity: String? = nil
  public var `done`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`done`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsPause_resumeResponse {
    var v = Ros1Ocs2_msgsPause_resumeResponse()
    v.`done` = try r.boolean()
    return v
  }
}
public struct Ros1Ocs2_msgsResetRequest: Canonical {
  public static let maximumWireBytes = 4269
  public static let codecIdentity =
    "UWVMROS1_582fd1dbd9ce6f6fb3fb4e274da248a3e8af20a751b56258fc74d3e4b30376d6"
  public static let nativeType = "ocs2_msgs/resetRequest"
  public static let nativeIdentity: String? = nil
  public var `reset`: Bool = false
  public var `targetTrajectories`: Ros1Ocs2_msgsMpc_target_trajectories =
    Ros1Ocs2_msgsMpc_target_trajectories()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`reset`)
    try self.`targetTrajectories`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsResetRequest {
    var v = Ros1Ocs2_msgsResetRequest()
    v.`reset` = try r.boolean()
    v.`targetTrajectories` = try Ros1Ocs2_msgsMpc_target_trajectories.read(from: &r)
    return v
  }
}
public struct Ros1Ocs2_msgsResetResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f6458a9efb26965fec00e8c0b26180f56e687a70517dd55c71c9e4f31aca8d33"
  public static let nativeType = "ocs2_msgs/resetResponse"
  public static let nativeIdentity: String? = nil
  public var `done`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`done`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_msgsResetResponse {
    var v = Ros1Ocs2_msgsResetResponse()
    v.`done` = try r.boolean()
    return v
  }
}
public struct Ros1Ocs2_switched_model_msgsGait: Canonical {
  public static let maximumWireBytes = 92
  public static let codecIdentity =
    "UWVMROS1_860276a1a3b3b9e8ec71a6abbc7f1f77bc4005350cea0bf7a08b7760fceae30b"
  public static let nativeType = "ocs2_switched_model_msgs/gait"
  public static let nativeIdentity: String? = nil
  public var `eventPhases`: [Float] = []
  public var `modeSequence`: [Int8] = []
  public var `duration`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`eventPhases`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`eventPhases`.count))
    for e in self.`eventPhases` {
      try w.float32(e)
    }
    guard self.`modeSequence`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`modeSequence`.count))
    for e in self.`modeSequence` {
      try w.integer(e)
    }
    try w.float32(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ocs2_switched_model_msgsGait {
    var v = Ros1Ocs2_switched_model_msgsGait()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`eventPhases` = []
    v.`eventPhases`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`eventPhases`.append(try r.float32())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`modeSequence` = []
    v.`modeSequence`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`modeSequence`.append(try r.integer(Int8.self))
    }
    v.`duration` = try r.float32()
    return v
  }
}
public struct Ros1Ocs2_switched_model_msgsGait_sequence: Canonical {
  public static let maximumWireBytes = 740
  public static let codecIdentity =
    "UWVMROS1_46ff0778bfad36d83d3b0dd27787b493e48856d8bbedc259f11e67fc41875933"
  public static let nativeType = "ocs2_switched_model_msgs/gait_sequence"
  public static let nativeIdentity: String? = nil
  public var `gaits`: [Ros1Ocs2_switched_model_msgsGait] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`gaits`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`gaits`.count))
    for e in self.`gaits` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ocs2_switched_model_msgsGait_sequence
  {
    var v = Ros1Ocs2_switched_model_msgsGait_sequence()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`gaits` = []
    v.`gaits`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`gaits`.append(try Ros1Ocs2_switched_model_msgsGait.read(from: &r))
    }
    return v
  }
}
public struct Ros1Ocs2_switched_model_msgsScheduled_gait_sequence: Canonical {
  public static let maximumWireBytes = 744
  public static let codecIdentity =
    "UWVMROS1_3868414a699777b55702b9e7c99841c3f7ff08ffe95f27737c9540a597f991dc"
  public static let nativeType = "ocs2_switched_model_msgs/scheduled_gait_sequence"
  public static let nativeIdentity: String? = nil
  public var `startTime`: Float = 0
  public var `gaitSequence`: Ros1Ocs2_switched_model_msgsGait_sequence =
    Ros1Ocs2_switched_model_msgsGait_sequence()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`startTime`)
    try self.`gaitSequence`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ocs2_switched_model_msgsScheduled_gait_sequence
  {
    var v = Ros1Ocs2_switched_model_msgsScheduled_gait_sequence()
    v.`startTime` = try r.float32()
    v.`gaitSequence` = try Ros1Ocs2_switched_model_msgsGait_sequence.read(from: &r)
    return v
  }
}
public struct Ros1Ocs2_switched_model_msgsTrajectory_requestRequest: Canonical {
  public static let maximumWireBytes = 5008
  public static let codecIdentity =
    "UWVMROS1_932982f63bf8a4ba861e35524546fa2bc940aad2eae21e5d521ae0764d216caa"
  public static let nativeType = "ocs2_switched_model_msgs/trajectory_requestRequest"
  public static let nativeIdentity: String? = nil
  public var `trajectory`: Ros1Ocs2_msgsMpc_target_trajectories =
    Ros1Ocs2_msgsMpc_target_trajectories()
  public var `gaitSequence`: Ros1Ocs2_switched_model_msgsGait_sequence =
    Ros1Ocs2_switched_model_msgsGait_sequence()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`trajectory`.write(to: &w)
    try self.`gaitSequence`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ocs2_switched_model_msgsTrajectory_requestRequest
  {
    var v = Ros1Ocs2_switched_model_msgsTrajectory_requestRequest()
    v.`trajectory` = try Ros1Ocs2_msgsMpc_target_trajectories.read(from: &r)
    v.`gaitSequence` = try Ros1Ocs2_switched_model_msgsGait_sequence.read(from: &r)
    return v
  }
}
public struct Ros1Ocs2_switched_model_msgsTrajectory_requestResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_40df5f3715594613ebf45148957427587f4d0dbfa45d27a327e10cb296bbe073"
  public static let nativeType = "ocs2_switched_model_msgs/trajectory_requestResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ocs2_switched_model_msgsTrajectory_requestResponse
  {
    var v = Ros1Ocs2_switched_model_msgsTrajectory_requestResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Sensor_msgsRegionOfInterest: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86"
  public static let nativeType = "sensor_msgs/RegionOfInterest"
  public static let nativeIdentity: String? = nil
  public var `x_offset`: UInt32 = 0
  public var `y_offset`: UInt32 = 0
  public var `height`: UInt32 = 0
  public var `width`: UInt32 = 0
  public var `do_rectify`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x_offset`)
    try w.integer(self.`y_offset`)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    try w.boolean(self.`do_rectify`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsRegionOfInterest {
    var v = Ros1Sensor_msgsRegionOfInterest()
    v.`x_offset` = try r.integer(UInt32.self)
    v.`y_offset` = try r.integer(UInt32.self)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    v.`do_rectify` = try r.boolean()
    return v
  }
}
public struct Ros1Sensor_msgsCameraInfo: Canonical {
  public static let maximumWireBytes = 937
  public static let codecIdentity =
    "UWVMROS1_7ccae6e3c6f5cf4e148906604e099b8a5f7331d631b3b154472d3f1c625c0158"
  public static let nativeType = "sensor_msgs/CameraInfo"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `height`: UInt32 = 0
  public var `width`: UInt32 = 0
  public var `distortion_model`: String = ""
  public var `D`: [Double] = []
  public var `K`: [Double] = Array(repeating: 0, count: 9)
  public var `R`: [Double] = Array(repeating: 0, count: 9)
  public var `P`: [Double] = Array(repeating: 0, count: 12)
  public var `binning_x`: UInt32 = 0
  public var `binning_y`: UInt32 = 0
  public var `roi`: Ros1Sensor_msgsRegionOfInterest = Ros1Sensor_msgsRegionOfInterest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    try w.string(self.`distortion_model`, bound: 256)
    guard self.`D`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`D`.count))
    for e in self.`D` {
      try w.float64(e)
    }
    guard self.`K`.count == 9 else { throw RosError(22) }
    for e in self.`K` {
      try w.float64(e)
    }
    guard self.`R`.count == 9 else { throw RosError(22) }
    for e in self.`R` {
      try w.float64(e)
    }
    guard self.`P`.count == 12 else { throw RosError(22) }
    for e in self.`P` {
      try w.float64(e)
    }
    try w.integer(self.`binning_x`)
    try w.integer(self.`binning_y`)
    try self.`roi`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsCameraInfo {
    var v = Ros1Sensor_msgsCameraInfo()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    v.`distortion_model` = try r.string(bound: 256)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`D` = []
    v.`D`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`D`.append(try r.float64())
    }
    let count5 = 9
    v.`K` = []
    v.`K`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`K`.append(try r.float64())
    }
    let count6 = 9
    v.`R` = []
    v.`R`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`R`.append(try r.float64())
    }
    let count7 = 12
    v.`P` = []
    v.`P`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`P`.append(try r.float64())
    }
    v.`binning_x` = try r.integer(UInt32.self)
    v.`binning_y` = try r.integer(UInt32.self)
    v.`roi` = try Ros1Sensor_msgsRegionOfInterest.read(from: &r)
    return v
  }
}
public struct Ros1Robot_calibration_msgsCameraParameter: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_29ee37fe6ff49ed9a5bbff52cceafa7f4afc87d09d6a181c5b6e53e372f5982a"
  public static let nativeType = "robot_calibration_msgs/CameraParameter"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsCameraParameter
  {
    var v = Ros1Robot_calibration_msgsCameraParameter()
    v.`name` = try r.string(bound: 256)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros1Robot_calibration_msgsExtendedCameraInfo: Canonical {
  public static let maximumWireBytes = 3085
  public static let codecIdentity =
    "UWVMROS1_701f271d8f32b7f92c8d145e053fc013fbd4e9664534fc249b3dd635b5282e41"
  public static let nativeType = "robot_calibration_msgs/ExtendedCameraInfo"
  public static let nativeIdentity: String? = nil
  public var `camera_info`: Ros1Sensor_msgsCameraInfo = Ros1Sensor_msgsCameraInfo()
  public var `parameters`: [Ros1Robot_calibration_msgsCameraParameter] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`camera_info`.write(to: &w)
    guard self.`parameters`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`parameters`.count))
    for e in self.`parameters` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsExtendedCameraInfo
  {
    var v = Ros1Robot_calibration_msgsExtendedCameraInfo()
    v.`camera_info` = try Ros1Sensor_msgsCameraInfo.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`parameters` = []
    v.`parameters`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`parameters`.append(try Ros1Robot_calibration_msgsCameraParameter.read(from: &r))
    }
    return v
  }
}
public struct Ros1Sensor_msgsPointField: Canonical {
  public static let maximumWireBytes = 269
  public static let codecIdentity =
    "UWVMROS1_0031797fe1be959add869c9a0ff556867aa051f16dc230e1d6fc6fb7e2903429"
  public static let nativeType = "sensor_msgs/PointField"
  public static let nativeIdentity: String? = nil
  public static let `INT8`: UInt8 = 1
  public static let `UINT8`: UInt8 = 2
  public static let `INT16`: UInt8 = 3
  public static let `UINT16`: UInt8 = 4
  public static let `INT32`: UInt8 = 5
  public static let `UINT32`: UInt8 = 6
  public static let `FLOAT32`: UInt8 = 7
  public static let `FLOAT64`: UInt8 = 8
  public var `name`: String = ""
  public var `offset`: UInt32 = 0
  public var `datatype`: UInt8 = 0
  public var `count`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`offset`)
    try w.integer(self.`datatype`)
    try w.integer(self.`count`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsPointField {
    var v = Ros1Sensor_msgsPointField()
    v.`name` = try r.string(bound: 256)
    v.`offset` = try r.integer(UInt32.self)
    v.`datatype` = try r.integer(UInt8.self)
    v.`count` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Sensor_msgsPointCloud2: Canonical {
  public static let maximumWireBytes = 6546
  public static let codecIdentity =
    "UWVMROS1_e75c3063a5cd856597f4e11e40c02360c4f22396a511e72ac102457f480268c1"
  public static let nativeType = "sensor_msgs/PointCloud2"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `height`: UInt32 = 0
  public var `width`: UInt32 = 0
  public var `fields`: [Ros1Sensor_msgsPointField] = []
  public var `is_bigendian`: Bool = false
  public var `point_step`: UInt32 = 0
  public var `row_step`: UInt32 = 0
  public var `data`: [UInt8] = []
  public var `is_dense`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    guard self.`fields`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`fields`.count))
    for e in self.`fields` {
      try e.write(to: &w)
    }
    try w.boolean(self.`is_bigendian`)
    try w.integer(self.`point_step`)
    try w.integer(self.`row_step`)
    guard self.`data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
    try w.boolean(self.`is_dense`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsPointCloud2 {
    var v = Ros1Sensor_msgsPointCloud2()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`fields` = []
    v.`fields`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`fields`.append(try Ros1Sensor_msgsPointField.read(from: &r))
    }
    v.`is_bigendian` = try r.boolean()
    v.`point_step` = try r.integer(UInt32.self)
    v.`row_step` = try r.integer(UInt32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 4096 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`data` = []
    v.`data`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    v.`is_dense` = try r.boolean()
    return v
  }
}
public struct Ros1Sensor_msgsImage: Canonical {
  public static let maximumWireBytes = 4645
  public static let codecIdentity =
    "UWVMROS1_c6f7399cb45ed39f35d4f215eec6474c64f271dafc71d537c7a7e7a7ff27cb89"
  public static let nativeType = "sensor_msgs/Image"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `height`: UInt32 = 0
  public var `width`: UInt32 = 0
  public var `encoding`: String = ""
  public var `is_bigendian`: UInt8 = 0
  public var `step`: UInt32 = 0
  public var `data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    try w.string(self.`encoding`, bound: 256)
    try w.integer(self.`is_bigendian`)
    try w.integer(self.`step`)
    guard self.`data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsImage {
    var v = Ros1Sensor_msgsImage()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    v.`encoding` = try r.string(bound: 256)
    v.`is_bigendian` = try r.integer(UInt8.self)
    v.`step` = try r.integer(UInt32.self)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 4096 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`data` = []
    v.`data`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Robot_calibration_msgsObservation: Canonical {
  public static let maximumWireBytes = 16908
  public static let codecIdentity =
    "UWVMROS1_63a95c8451f7d9e4c7611256fdcbc476552d5ee8d12372a934e4b9d06ecc7998"
  public static let nativeType = "robot_calibration_msgs/Observation"
  public static let nativeIdentity: String? = nil
  public var `sensor_name`: String = ""
  public var `features`: [Ros1Geometry_msgsPointStamped] = []
  public var `ext_camera_info`: Ros1Robot_calibration_msgsExtendedCameraInfo =
    Ros1Robot_calibration_msgsExtendedCameraInfo()
  public var `cloud`: Ros1Sensor_msgsPointCloud2 = Ros1Sensor_msgsPointCloud2()
  public var `image`: Ros1Sensor_msgsImage = Ros1Sensor_msgsImage()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`sensor_name`, bound: 256)
    guard self.`features`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`features`.count))
    for e in self.`features` {
      try e.write(to: &w)
    }
    try self.`ext_camera_info`.write(to: &w)
    try self.`cloud`.write(to: &w)
    try self.`image`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_calibration_msgsObservation
  {
    var v = Ros1Robot_calibration_msgsObservation()
    v.`sensor_name` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`features` = []
    v.`features`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`features`.append(try Ros1Geometry_msgsPointStamped.read(from: &r))
    }
    v.`ext_camera_info` = try Ros1Robot_calibration_msgsExtendedCameraInfo.read(from: &r)
    v.`cloud` = try Ros1Sensor_msgsPointCloud2.read(from: &r)
    v.`image` = try Ros1Sensor_msgsImage.read(from: &r)
    return v
  }
}
public struct Ros1Robot_calibration_msgsCalibrationData: Canonical {
  public static let maximumWireBytes = 28976
  public static let codecIdentity =
    "UWVMROS1_24f8eaa5c74a339a011bed56dbb43877cbcea02b7d6fe70242649743b831c41d"
  public static let nativeType = "robot_calibration_msgs/CalibrationData"
  public static let nativeIdentity: String? = nil
  public var `joint_states`: Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState()
  public var `observations`: [Ros1Robot_calibration_msgsObservation] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`joint_states`.write(to: &w)
    guard self.`observations`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`observations`.count))
    for e in self.`observations` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsCalibrationData
  {
    var v = Ros1Robot_calibration_msgsCalibrationData()
    v.`joint_states` = try Ros1Sensor_msgsJointState.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 1 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`observations` = []
    v.`observations`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`observations`.append(try Ros1Robot_calibration_msgsObservation.read(from: &r))
    }
    return v
  }
}
public struct Ros1Robot_calibration_msgsCaptureConfig: Canonical {
  public static let maximumWireBytes = 16228
  public static let codecIdentity =
    "UWVMROS1_eee3518da52625ab26a357e64248cda854e13b36dfc0c1dd22008c9b0778ac61"
  public static let nativeType = "robot_calibration_msgs/CaptureConfig"
  public static let nativeIdentity: String? = nil
  public var `joint_states`: Ros1Sensor_msgsJointState = Ros1Sensor_msgsJointState()
  public var `features`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`joint_states`.write(to: &w)
    guard self.`features`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`features`.count))
    for e in self.`features` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsCaptureConfig
  {
    var v = Ros1Robot_calibration_msgsCaptureConfig()
    v.`joint_states` = try Ros1Sensor_msgsJointState.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`features` = []
    v.`features`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`features`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Robot_calibration_msgsGripperLedCommandGoal: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_371f563493ad71e6a15256142dca36976d9660f050d045f5ea85238c1142cf3e"
  public static let nativeType = "robot_calibration_msgs/GripperLedCommandGoal"
  public static let nativeIdentity: String? = nil
  public var `led_code`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`led_code`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsGripperLedCommandGoal
  {
    var v = Ros1Robot_calibration_msgsGripperLedCommandGoal()
    v.`led_code` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Robot_calibration_msgsGripperLedCommandResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_479da8e82a937fe61ca0c9ac8fba50033364085add1047e90748ec000b0dc42a"
  public static let nativeType = "robot_calibration_msgs/GripperLedCommandResult"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsGripperLedCommandResult
  {
    var v = Ros1Robot_calibration_msgsGripperLedCommandResult()
    return v
  }
}
public struct Ros1Robot_calibration_msgsGripperLedCommandFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_eb8f29dde9d3f6b050623a4181a187942d4b0cbc136a53a39958bb697a7ba7eb"
  public static let nativeType = "robot_calibration_msgs/GripperLedCommandFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_calibration_msgsGripperLedCommandFeedback
  {
    var v = Ros1Robot_calibration_msgsGripperLedCommandFeedback()
    return v
  }
}
public struct Ros1Robot_localizationFromLLRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_9e77b9f029ba663823d30c8a6afafb4d68ed4909f755f3271c53be87b242c454"
  public static let nativeType = "robot_localization/FromLLRequest"
  public static let nativeIdentity: String? = nil
  public var `ll_point`: Ros1Geographic_msgsGeoPoint = Ros1Geographic_msgsGeoPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`ll_point`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationFromLLRequest {
    var v = Ros1Robot_localizationFromLLRequest()
    v.`ll_point` = try Ros1Geographic_msgsGeoPoint.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationFromLLResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_c4f794ec772b6d500ac2bcb9f12e884715269c1f8f49417cd32eab5463a62f3e"
  public static let nativeType = "robot_localization/FromLLResponse"
  public static let nativeIdentity: String? = nil
  public var `map_point`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`map_point`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationFromLLResponse {
    var v = Ros1Robot_localizationFromLLResponse()
    v.`map_point` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationGetStateRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_06d35fc2336498f13973744c5160a79d26689f2a02ab0c8136087fbb12461c5a"
  public static let nativeType = "robot_localization/GetStateRequest"
  public static let nativeIdentity: String? = nil
  public var `time_stamp`: Ros1Time = Ros1Time()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`time_stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationGetStateRequest
  {
    var v = Ros1Robot_localizationGetStateRequest()
    v.`time_stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Robot_localizationGetStateResponse: Canonical {
  public static let maximumWireBytes = 1920
  public static let codecIdentity =
    "UWVMROS1_e85760e64e045ea9a1bb904391deb0f87c3fb89527e57ed1f7c7e91554eab6ec"
  public static let nativeType = "robot_localization/GetStateResponse"
  public static let nativeIdentity: String? = nil
  public var `state`: [Double] = Array(repeating: 0, count: 15)
  public var `covariance`: [Double] = Array(repeating: 0, count: 225)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`state`.count == 15 else { throw RosError(22) }
    for e in self.`state` {
      try w.float64(e)
    }
    guard self.`covariance`.count == 225 else { throw RosError(22) }
    for e in self.`covariance` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationGetStateResponse
  {
    var v = Ros1Robot_localizationGetStateResponse()
    let count0 = 15
    v.`state` = []
    v.`state`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`state`.append(try r.float64())
    }
    let count1 = 225
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Robot_localizationSetDatumRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_13b1cdaaac621681ce3ec1d1b7c85c89acd1f63285309d1ff47573c9f74be6e4"
  public static let nativeType = "robot_localization/SetDatumRequest"
  public static let nativeIdentity: String? = nil
  public var `geo_pose`: Ros1Geographic_msgsGeoPose = Ros1Geographic_msgsGeoPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`geo_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationSetDatumRequest
  {
    var v = Ros1Robot_localizationSetDatumRequest()
    v.`geo_pose` = try Ros1Geographic_msgsGeoPose.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationSetDatumResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_932d56dd53078582e985c2ac36c8df78fc0e83393d5d5bbe3c34b8e7b73fa252"
  public static let nativeType = "robot_localization/SetDatumResponse"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationSetDatumResponse
  {
    var v = Ros1Robot_localizationSetDatumResponse()
    return v
  }
}
public struct Ros1Robot_localizationSetPoseRequest: Canonical {
  public static let maximumWireBytes = 616
  public static let codecIdentity =
    "UWVMROS1_90e5a19a72177dd0be0782616c680df214823da6a7127457b3378d2fbf6523c3"
  public static let nativeType = "robot_localization/SetPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationSetPoseRequest {
    var v = Ros1Robot_localizationSetPoseRequest()
    v.`pose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationSetPoseResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d231093ba84e32fbfc93423f45486709e53155778a342b634b170cf17af7b84e"
  public static let nativeType = "robot_localization/SetPoseResponse"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationSetPoseResponse
  {
    var v = Ros1Robot_localizationSetPoseResponse()
    return v
  }
}
public struct Ros1Robot_localizationSetUTMZoneRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_73c094a5ac20c246961784301494e71d83b0f66b91e077b1ec617b2d4c2357f8"
  public static let nativeType = "robot_localization/SetUTMZoneRequest"
  public static let nativeIdentity: String? = nil
  public var `utm_zone`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`utm_zone`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_localizationSetUTMZoneRequest
  {
    var v = Ros1Robot_localizationSetUTMZoneRequest()
    v.`utm_zone` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Robot_localizationSetUTMZoneResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_39ce31583dcf9c587ba9bf6970759ba7419107e64c5def0937801514d70e912c"
  public static let nativeType = "robot_localization/SetUTMZoneResponse"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_localizationSetUTMZoneResponse
  {
    var v = Ros1Robot_localizationSetUTMZoneResponse()
    return v
  }
}
public struct Ros1Robot_localizationToLLRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_d11c2506ec2d6fdbe8ce9031be5fc6833df60ebcae576e576afa1c797c15d30b"
  public static let nativeType = "robot_localization/ToLLRequest"
  public static let nativeIdentity: String? = nil
  public var `map_point`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`map_point`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationToLLRequest {
    var v = Ros1Robot_localizationToLLRequest()
    v.`map_point` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationToLLResponse: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_1a04fb295d071bf442b3d9d44c22862436aa35f04176385616e1547e0cb9857e"
  public static let nativeType = "robot_localization/ToLLResponse"
  public static let nativeIdentity: String? = nil
  public var `ll_point`: Ros1Geographic_msgsGeoPoint = Ros1Geographic_msgsGeoPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`ll_point`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Robot_localizationToLLResponse {
    var v = Ros1Robot_localizationToLLResponse()
    v.`ll_point` = try Ros1Geographic_msgsGeoPoint.read(from: &r)
    return v
  }
}
public struct Ros1Robot_localizationToggleFilterProcessingRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_22c0c52cdfde8a85e9aed492d0e5d33f3d76c80b8a4be92953effe28396fff64"
  public static let nativeType = "robot_localization/ToggleFilterProcessingRequest"
  public static let nativeIdentity: String? = nil
  public var `on`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`on`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_localizationToggleFilterProcessingRequest
  {
    var v = Ros1Robot_localizationToggleFilterProcessingRequest()
    v.`on` = try r.boolean()
    return v
  }
}
public struct Ros1Robot_localizationToggleFilterProcessingResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3edee8aff6b86026545e9559c98a33a4165ac90f7fe1ba86430c6396041d5176"
  public static let nativeType = "robot_localization/ToggleFilterProcessingResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Robot_localizationToggleFilterProcessingResponse
  {
    var v = Ros1Robot_localizationToggleFilterProcessingResponse()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros1Taiji_trigger_nodePerformTaijiRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e0ae7222bc4566adbed2186f8783152734739dd0a8d2b066eee2812f143337bc"
  public static let nativeType = "taiji_trigger_node/PerformTaijiRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Taiji_trigger_nodePerformTaijiRequest
  {
    var v = Ros1Taiji_trigger_nodePerformTaijiRequest()
    return v
  }
}
public struct Ros1Taiji_trigger_nodePerformTaijiResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_eb2adcb68164ed8ff3b34c6ab4678631cb551f27040ae11e5b4d0d0ccde4b4af"
  public static let nativeType = "taiji_trigger_node/PerformTaijiResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Taiji_trigger_nodePerformTaijiResponse
  {
    var v = Ros1Taiji_trigger_nodePerformTaijiResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1User_pkgPiddebug: Canonical {
  public static let maximumWireBytes = 296
  public static let codecIdentity =
    "UWVMROS1_d368e7fdd2139f74059ee2231d0b6d51f49521b8eec569e1f96f1d5696028eb2"
  public static let nativeType = "user_pkg/piddebug"
  public static let nativeIdentity: String? = nil
  public var `objectname`: String = ""
  public var `target`: Float = 0
  public var `rev`: Float = 0
  public var `kp`: Float = 0
  public var `ki`: Float = 0
  public var `kd`: Float = 0
  public var `p_out`: Float = 0
  public var `i_out`: Float = 0
  public var `d_out`: Float = 0
  public var `pid_out`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`objectname`, bound: 256)
    try w.float32(self.`target`)
    try w.float32(self.`rev`)
    try w.float32(self.`kp`)
    try w.float32(self.`ki`)
    try w.float32(self.`kd`)
    try w.float32(self.`p_out`)
    try w.float32(self.`i_out`)
    try w.float32(self.`d_out`)
    try w.float32(self.`pid_out`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1User_pkgPiddebug {
    var v = Ros1User_pkgPiddebug()
    v.`objectname` = try r.string(bound: 256)
    v.`target` = try r.float32()
    v.`rev` = try r.float32()
    v.`kp` = try r.float32()
    v.`ki` = try r.float32()
    v.`kd` = try r.float32()
    v.`p_out` = try r.float32()
    v.`i_out` = try r.float32()
    v.`d_out` = try r.float32()
    v.`pid_out` = try r.float32()
    return v
  }
}
public struct Ros1User_pkgUwbdebug: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_eafe60a2ce61f84398ce53d8a19e190c053fe63f8d9ca9818e22f44e69ffc769"
  public static let nativeType = "user_pkg/uwbdebug"
  public static let nativeIdentity: String? = nil
  public var `car_cur_x`: Float = 0
  public var `car_cur_y`: Float = 0
  public var `car_cur_z`: Float = 0
  public var `car_yaw`: Float = 0
  public var `car_pitch`: Float = 0
  public var `car_roll`: Float = 0
  public var `robot_cur_x`: Float = 0
  public var `robot_cur_y`: Float = 0
  public var `robot_cur_z`: Float = 0
  public var `robot_yaw`: Float = 0
  public var `robot_pitch`: Float = 0
  public var `robot_roll`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`car_cur_x`)
    try w.float32(self.`car_cur_y`)
    try w.float32(self.`car_cur_z`)
    try w.float32(self.`car_yaw`)
    try w.float32(self.`car_pitch`)
    try w.float32(self.`car_roll`)
    try w.float32(self.`robot_cur_x`)
    try w.float32(self.`robot_cur_y`)
    try w.float32(self.`robot_cur_z`)
    try w.float32(self.`robot_yaw`)
    try w.float32(self.`robot_pitch`)
    try w.float32(self.`robot_roll`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1User_pkgUwbdebug {
    var v = Ros1User_pkgUwbdebug()
    v.`car_cur_x` = try r.float32()
    v.`car_cur_y` = try r.float32()
    v.`car_cur_z` = try r.float32()
    v.`car_yaw` = try r.float32()
    v.`car_pitch` = try r.float32()
    v.`car_roll` = try r.float32()
    v.`robot_cur_x` = try r.float32()
    v.`robot_cur_y` = try r.float32()
    v.`robot_cur_z` = try r.float32()
    v.`robot_yaw` = try r.float32()
    v.`robot_pitch` = try r.float32()
    v.`robot_roll` = try r.float32()
    return v
  }
}
public struct Ros1WiimoteIrSourceInfo: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_8e0a43ec17814d2b9d5bffdb629b87dcb244a85364bda3bf8871aeec7e47d2e7"
  public static let nativeType = "wiimote/IrSourceInfo"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `ir_size`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.integer(self.`ir_size`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1WiimoteIrSourceInfo {
    var v = Ros1WiimoteIrSourceInfo()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`ir_size` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros1WiimoteState: Canonical {
  public static let maximumWireBytes = 814
  public static let codecIdentity =
    "UWVMROS1_1e0c93579a6bd2ad94af0fe6baf513582042341980e89527eb79739ec4267b42"
  public static let nativeType = "wiimote/State"
  public static let nativeIdentity: String? = nil
  public static let `INVALID`: Int8 = -1
  public static let `INVALID_FLOAT`: Float = Float(bitPattern: 0xbf80_0000)
  public static let `MSG_BTN_1`: Int8 = 0
  public static let `MSG_BTN_2`: Int8 = 1
  public static let `MSG_BTN_A`: Int8 = 2
  public static let `MSG_BTN_B`: Int8 = 3
  public static let `MSG_BTN_PLUS`: Int8 = 4
  public static let `MSG_BTN_MINUS`: Int8 = 5
  public static let `MSG_BTN_LEFT`: Int8 = 6
  public static let `MSG_BTN_RIGHT`: Int8 = 7
  public static let `MSG_BTN_UP`: Int8 = 8
  public static let `MSG_BTN_DOWN`: Int8 = 9
  public static let `MSG_BTN_HOME`: Int8 = 10
  public static let `MSG_BTN_Z`: Int8 = 0
  public static let `MSG_BTN_C`: Int8 = 1
  public static let `MSG_CLASSIC_BTN_X`: Int8 = 0
  public static let `MSG_CLASSIC_BTN_Y`: Int8 = 1
  public static let `MSG_CLASSIC_BTN_A`: Int8 = 2
  public static let `MSG_CLASSIC_BTN_B`: Int8 = 3
  public static let `MSG_CLASSIC_BTN_PLUS`: Int8 = 4
  public static let `MSG_CLASSIC_BTN_MINUS`: Int8 = 5
  public static let `MSG_CLASSIC_BTN_LEFT`: Int8 = 6
  public static let `MSG_CLASSIC_BTN_RIGHT`: Int8 = 7
  public static let `MSG_CLASSIC_BTN_UP`: Int8 = 8
  public static let `MSG_CLASSIC_BTN_DOWN`: Int8 = 9
  public static let `MSG_CLASSIC_BTN_HOME`: Int8 = 10
  public static let `MSG_CLASSIC_BTN_L`: Int8 = 11
  public static let `MSG_CLASSIC_BTN_R`: Int8 = 12
  public static let `MSG_CLASSIC_BTN_ZL`: Int8 = 13
  public static let `MSG_CLASSIC_BTN_ZR`: Int8 = 14
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `angular_velocity_zeroed`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `angular_velocity_raw`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `angular_velocity_covariance`: [Double] = Array(repeating: 0, count: 9)
  public var `linear_acceleration_zeroed`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `linear_acceleration_raw`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `linear_acceleration_covariance`: [Double] = Array(repeating: 0, count: 9)
  public var `nunchuk_acceleration_zeroed`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `nunchuk_acceleration_raw`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `nunchuk_joystick_zeroed`: [Float] = Array(repeating: 0, count: 2)
  public var `nunchuk_joystick_raw`: [Float] = Array(repeating: 0, count: 2)
  public var `buttons`: [Bool] = Array(repeating: false, count: 11)
  public var `nunchuk_buttons`: [Bool] = Array(repeating: false, count: 2)
  public var `LEDs`: [Bool] = Array(repeating: false, count: 4)
  public var `rumble`: Bool = false
  public var `ir_tracking`: [Ros1WiimoteIrSourceInfo] = []
  public var `raw_battery`: Float = 0
  public var `percent_battery`: Float = 0
  public var `zeroing_time`: Ros1Time = Ros1Time()
  public var `errors`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`angular_velocity_zeroed`.write(to: &w)
    try self.`angular_velocity_raw`.write(to: &w)
    guard self.`angular_velocity_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`angular_velocity_covariance` {
      try w.float64(e)
    }
    try self.`linear_acceleration_zeroed`.write(to: &w)
    try self.`linear_acceleration_raw`.write(to: &w)
    guard self.`linear_acceleration_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`linear_acceleration_covariance` {
      try w.float64(e)
    }
    try self.`nunchuk_acceleration_zeroed`.write(to: &w)
    try self.`nunchuk_acceleration_raw`.write(to: &w)
    guard self.`nunchuk_joystick_zeroed`.count == 2 else { throw RosError(22) }
    for e in self.`nunchuk_joystick_zeroed` {
      try w.float32(e)
    }
    guard self.`nunchuk_joystick_raw`.count == 2 else { throw RosError(22) }
    for e in self.`nunchuk_joystick_raw` {
      try w.float32(e)
    }
    guard self.`buttons`.count == 11 else { throw RosError(22) }
    for e in self.`buttons` {
      try w.boolean(e)
    }
    guard self.`nunchuk_buttons`.count == 2 else { throw RosError(22) }
    for e in self.`nunchuk_buttons` {
      try w.boolean(e)
    }
    guard self.`LEDs`.count == 4 else { throw RosError(22) }
    for e in self.`LEDs` {
      try w.boolean(e)
    }
    try w.boolean(self.`rumble`)
    guard self.`ir_tracking`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`ir_tracking`.count))
    for e in self.`ir_tracking` {
      try e.write(to: &w)
    }
    try w.float32(self.`raw_battery`)
    try w.float32(self.`percent_battery`)
    try self.`zeroing_time`.write(to: &w)
    try w.integer(self.`errors`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1WiimoteState {
    var v = Ros1WiimoteState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`angular_velocity_zeroed` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular_velocity_raw` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count3 = 9
    v.`angular_velocity_covariance` = []
    v.`angular_velocity_covariance`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`angular_velocity_covariance`.append(try r.float64())
    }
    v.`linear_acceleration_zeroed` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`linear_acceleration_raw` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count6 = 9
    v.`linear_acceleration_covariance` = []
    v.`linear_acceleration_covariance`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`linear_acceleration_covariance`.append(try r.float64())
    }
    v.`nunchuk_acceleration_zeroed` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`nunchuk_acceleration_raw` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count9 = 2
    v.`nunchuk_joystick_zeroed` = []
    v.`nunchuk_joystick_zeroed`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`nunchuk_joystick_zeroed`.append(try r.float32())
    }
    let count10 = 2
    v.`nunchuk_joystick_raw` = []
    v.`nunchuk_joystick_raw`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`nunchuk_joystick_raw`.append(try r.float32())
    }
    let count11 = 11
    v.`buttons` = []
    v.`buttons`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`buttons`.append(try r.boolean())
    }
    let count12 = 2
    v.`nunchuk_buttons` = []
    v.`nunchuk_buttons`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`nunchuk_buttons`.append(try r.boolean())
    }
    let count13 = 4
    v.`LEDs` = []
    v.`LEDs`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`LEDs`.append(try r.boolean())
    }
    v.`rumble` = try r.boolean()
    let rawcount15 = try r.integer(UInt32.self)
    guard rawcount15 <= 8 else { throw RosError(22) }
    let count15 = Int(rawcount15)
    v.`ir_tracking` = []
    v.`ir_tracking`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`ir_tracking`.append(try Ros1WiimoteIrSourceInfo.read(from: &r))
    }
    v.`raw_battery` = try r.float32()
    v.`percent_battery` = try r.float32()
    v.`zeroing_time` = try Ros1Time.read(from: &r)
    v.`errors` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1WiimoteTimedSwitch: Canonical {
  public static let maximumWireBytes = 73
  public static let codecIdentity =
    "UWVMROS1_5d845b91d364c06eb8f38a03ad0319cfc48a2c49c0b5b7263580b8e5b24ffcb6"
  public static let nativeType = "wiimote/TimedSwitch"
  public static let nativeIdentity: String? = nil
  public static let `ON`: Int8 = 1
  public static let `OFF`: Int8 = 0
  public static let `NO_CHANGE`: Int8 = -2
  public static let `REPEAT`: Int8 = -1
  public static let `FOREVER`: Int8 = -1
  public var `switch_mode`: Int8 = 0
  public var `num_cycles`: Int32 = 0
  public var `pulse_pattern`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`switch_mode`)
    try w.integer(self.`num_cycles`)
    guard self.`pulse_pattern`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`pulse_pattern`.count))
    for e in self.`pulse_pattern` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1WiimoteTimedSwitch {
    var v = Ros1WiimoteTimedSwitch()
    v.`switch_mode` = try r.integer(Int8.self)
    v.`num_cycles` = try r.integer(Int32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`pulse_pattern` = []
    v.`pulse_pattern`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`pulse_pattern`.append(try r.float32())
    }
    return v
  }
}
