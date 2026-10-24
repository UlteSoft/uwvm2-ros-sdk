// @brief Complete original flexiv controller_core_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of builtin_interfaces/msg/Time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  /// @brief Time indicates a specific point in time, relative to a clock's 0 point. The seconds
  /// component, valid over all int32 values.
  /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `sec`: Int32 = 0
  /// @brief The nanoseconds component, valid in the range [0, 10e9).
  /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
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
/// @brief Own every original field of builtin_interfaces/msg/Duration.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Builtin_interfacesMsgDuration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
  public static let nativeType = "builtin_interfaces/msg/Duration"
  public static let nativeIdentity: String? = nil
  /// @brief Duration defines a period between two time points. It is comprised of a seconds component and
  /// a nanoseconds component. Seconds component, range is valid over any possible int32 value.
  /// @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `sec`: Int32 = 0
  /// @brief Nanoseconds component in the range of [0, 10e9).
  /// @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `nanosec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgDuration {
    var v = Ros2Builtin_interfacesMsgDuration()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..9372 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 9372
  public static let codecIdentity =
    "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  /// @brief This is a message that holds data to describe the state of a set of torque controlled joints.
  /// The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
  /// m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
  /// N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
  /// states were recorded. All the joint states in one message have to be recorded at the same time.
  /// This message consists of a multiple arrays, one for each part of the joint state. The goal is to
  /// make each of the fields optional. When e.g. your joints have no effort associated with them, you can
  /// leave the effort array empty.  All arrays in this message should have the same size, or be empty.
  /// This is the only way to uniquely associate the joint name with the correct states.
  /// @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original string field.
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `name`: [String] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `position`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocity`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
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
    guard self.`name`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 256)
    }
    guard self.`position`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
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
/// @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Canonical extent 24..1048 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 1048
  public static let codecIdentity =
    "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
  /// positions[, effort] for the trajectory to be executed. All specified values are in the same order as
  /// the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
  /// "0" position. The units depend on the specific joint type: radians for revolute or continuous
  /// joints, and meters for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `positions`: [Double] = []
  /// @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
  /// for revolute or continuous joints, and meters/second for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `velocities`: [Double] = []
  /// @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
  /// for revolute or continuous joints, and meters/second^2 for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
  /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `accelerations`: [Double] = []
  /// @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
  /// denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `effort`: [Double] = []
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
    try self.`time_from_start`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    v.`time_from_start` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
/// @details Canonical extent 20..16980 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgJointTrajectory: Canonical {
  public static let maximumWireBytes = 16980
  public static let codecIdentity =
    "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief The names of the active joints in each trajectory point. These names are ordered and must
  /// correspond to the values in each trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
  /// efforts of the joints at each time point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.points; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `points`: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
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
  public static func read(from r: inout WireReader) throws -> Ros2Trajectory_msgsMsgJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
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
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/MultiArrayDimension.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgMultiArrayDimension: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d"
  public static let nativeType = "std_msgs/msg/MultiArrayDimension"
  public static let nativeIdentity: String? = nil
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. label of given dimension
  /// @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `label`: String = ""
  /// @brief size of given dimension (in type units)
  /// @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `size`: UInt32 = 0
  /// @brief stride of given dimension
  /// @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `stride`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`label`, bound: 256)
    try w.integer(self.`size`)
    try w.integer(self.`stride`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgMultiArrayDimension {
    var v = Ros2Std_msgsMsgMultiArrayDimension()
    v.`label` = try r.string(bound: 256)
    v.`size` = try r.integer(UInt32.self)
    v.`stride` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/MultiArrayLayout.
/// @details Canonical extent 8..2152 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgMultiArrayLayout: Canonical {
  public static let maximumWireBytes = 2152
  public static let codecIdentity =
    "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40"
  public static let nativeType = "std_msgs/msg/MultiArrayLayout"
  public static let nativeIdentity: String? = nil
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. The multiarray declares a generic
  /// multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
  /// most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
  /// dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
  /// standard, 3-channel 640x480 image with interleaved color channels would be specified as:
  /// dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
  /// is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
  /// dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
  /// row, jth column, and kth channel. Array of dimension properties
  /// @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
  /// At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
  public var `dim`: [Ros2Std_msgsMsgMultiArrayDimension] = []
  /// @brief padding bytes at front of data
  /// @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `data_offset`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`dim`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`dim`.count))
    for e in self.`dim` {
      try e.write(to: &w)
    }
    try w.integer(self.`data_offset`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgMultiArrayLayout {
    var v = Ros2Std_msgsMsgMultiArrayLayout()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`dim` = []
    v.`dim`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`dim`.append(try Ros2Std_msgsMsgMultiArrayDimension.read(from: &r))
    }
    v.`data_offset` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/Float64MultiArray.
/// @details Canonical extent 12..2412 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgFloat64MultiArray: Canonical {
  public static let maximumWireBytes = 2412
  public static let codecIdentity =
    "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2"
  public static let nativeType = "std_msgs/msg/Float64MultiArray"
  public static let nativeIdentity: String? = nil
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
  /// message definition for documentation on all multiarrays. specification of data layout
  /// @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `layout`: Ros2Std_msgsMsgMultiArrayLayout = Ros2Std_msgsMsgMultiArrayLayout()
  /// @brief array of data
  /// @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`layout`.write(to: &w)
    guard self.`data`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgFloat64MultiArray {
    var v = Ros2Std_msgsMsgFloat64MultiArray()
    v.`layout` = try Ros2Std_msgsMsgMultiArrayLayout.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float64())
    }
    return v
  }
}
