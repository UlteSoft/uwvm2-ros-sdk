/// @file Records.swift
/// @brief Complete original boston_dynamics ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original uwvm_spot_bridge/srv/State_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Uwvm_spot_bridgeSrvState_Request {
  /// @brief Original uwvm_spot_bridge/srv/State_Request.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Request.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Request.budget_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_budget_ns: UInt64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_budget_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_budget_ns), 8))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/State_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/State_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/State_Response value.
/// @details Retain all 12 fields and 0 constants in source order. Canonical extent 57..21433 bytes.
public struct Ros2Uwvm_spot_bridgeSrvState_Response {
  /// @brief Original uwvm_spot_bridge/srv/State_Response.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.error field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.unknown field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_unknown: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_sec field.
  /// @details Original type int64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acquisition_sec: Int64 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_nsec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acquisition_nsec: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_names field.
  /// @details Original type string. String bound 128 bytes; domain utf8. Shape sequence;
  /// bound/count 32 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_position field.
  /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_joint_position: [Double] = []
  /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_velocity field.
  /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_joint_velocity: [Double] = []
  /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_load field.
  /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_joint_load: [Double] = []
  /// @brief Original uwvm_spot_bridge/srv/State_Response.motor_power_state field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_power_state: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/State_Response.native_proto field.
  /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_native_proto: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_error = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error), 4))
    field_unknown = cursor.boolean(field_unknown)
    field_acquisition_sec = Int64(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(UInt64(bitPattern: field_acquisition_sec)), 8)))
    field_acquisition_nsec = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_acquisition_nsec), 4))
    let count6 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count6 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count6) }
    for index in 0..<count6 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 128)
    }
    let count7 = Int(cursor.number(UInt64(field_joint_position.count), 4))
    if count7 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_position = Array(repeating: 0, count: count7) }
    for index in 0..<count7 {
      field_joint_position[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_joint_position[index].bitPattern), 8)))
      if !field_joint_position[index].isFinite { cursor.failed = true }
    }
    let count8 = Int(cursor.number(UInt64(field_joint_velocity.count), 4))
    if count8 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_velocity = Array(repeating: 0, count: count8) }
    for index in 0..<count8 {
      field_joint_velocity[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_joint_velocity[index].bitPattern), 8)))
      if !field_joint_velocity[index].isFinite { cursor.failed = true }
    }
    let count9 = Int(cursor.number(UInt64(field_joint_load.count), 4))
    if count9 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_load = Array(repeating: 0, count: count9) }
    for index in 0..<count9 {
      field_joint_load[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_joint_load[index].bitPattern), 8)))
      if !field_joint_load[index].isFinite { cursor.failed = true }
    }
    field_motor_power_state = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_motor_power_state), 4))
    let count11 = Int(cursor.number(UInt64(field_native_proto.count), 4))
    if count11 > 16384 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_native_proto = Array(repeating: 0, count: count11) }
    for index in 0..<count11 {
      field_native_proto[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_native_proto[index]), 1))
    }
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/State_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 21433),
      limit: 21433, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/State_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 57 || bytes.count > 21433 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Lease_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Uwvm_spot_bridgeSrvLease_Request {
  /// @brief Original uwvm_spot_bridge/srv/Lease_Request.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Lease_Request.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Lease_Request.budget_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_budget_ns: UInt64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_budget_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_budget_ns), 8))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Lease_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Lease_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Lease_Response value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 22..22 bytes.
public struct Ros2Uwvm_spot_bridgeSrvLease_Response {
  /// @brief Original uwvm_spot_bridge/srv/Lease_Response.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Lease_Response.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Lease_Response.error field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Lease_Response.unknown field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_unknown: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Lease_Response.provider_holds_body_lease field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_provider_holds_body_lease: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_error = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error), 4))
    field_unknown = cursor.boolean(field_unknown)
    field_provider_holds_body_lease = cursor.boolean(field_provider_holds_body_lease)
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Lease_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 22),
      limit: 22, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Lease_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 22 || bytes.count > 22 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Command_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Uwvm_spot_bridgeSrvCommand_Request {
  /// @brief Original uwvm_spot_bridge/srv/Command_Request.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Command_Request.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Command_Request.budget_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_budget_ns: UInt64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_budget_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_budget_ns), 8))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Command_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Command_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Command_Response value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 26..26 bytes.
public struct Ros2Uwvm_spot_bridgeSrvCommand_Response {
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.error field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.unknown field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_unknown: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_accepted field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_native_accepted: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_command_id field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_native_command_id: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_error = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error), 4))
    field_unknown = cursor.boolean(field_unknown)
    field_native_accepted = cursor.boolean(field_native_accepted)
    field_native_command_id = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_native_command_id), 4))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Command_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 26),
      limit: 26, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Command_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 26 || bytes.count > 26 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Velocity_Request value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 56..56 bytes.
public struct Ros2Uwvm_spot_bridgeSrvVelocity_Request {
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.budget_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_budget_ns: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.x_mps field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x_mps: Double = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.y_mps field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y_mps: Double = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.yaw_rps field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yaw_rps: Double = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.duration_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_duration_ns: UInt64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_budget_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_budget_ns), 8))
    field_x_mps = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x_mps.bitPattern), 8)))
    if !field_x_mps.isFinite { cursor.failed = true }
    field_y_mps = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y_mps.bitPattern), 8)))
    if !field_y_mps.isFinite { cursor.failed = true }
    field_yaw_rps = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_yaw_rps.bitPattern), 8)))
    if !field_yaw_rps.isFinite { cursor.failed = true }
    field_duration_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_duration_ns), 8))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Velocity_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 56),
      limit: 56, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Velocity_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 56 || bytes.count > 56 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Velocity_Response value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 26..26 bytes.
public struct Ros2Uwvm_spot_bridgeSrvVelocity_Response {
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.error field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.unknown field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_unknown: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_accepted field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_native_accepted: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_command_id field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_native_command_id: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_error = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error), 4))
    field_unknown = cursor.boolean(field_unknown)
    field_native_accepted = cursor.boolean(field_native_accepted)
    field_native_command_id = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_native_command_id), 4))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Velocity_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 26),
      limit: 26, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Velocity_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 26 || bytes.count > 26 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Feedback_Request value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros2Uwvm_spot_bridgeSrvFeedback_Request {
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.budget_ns field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_budget_ns: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.command_token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_command_token: UInt64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_budget_ns = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_budget_ns), 8))
    field_command_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_command_token), 8))
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Feedback_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 32),
      limit: 32, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Feedback_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 32 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original uwvm_spot_bridge/srv/Feedback_Response value.
/// @details Retain all 13 fields and 0 constants in source order. Canonical extent 45..16429 bytes.
public struct Ros2Uwvm_spot_bridgeSrvFeedback_Response {
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.token field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_token: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.nonce field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nonce: UInt64 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.error field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.unknown field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_unknown: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_command_id field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_native_command_id: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_full_body_feedback field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_has_full_body_feedback: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.full_body_status field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_full_body_status: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_mobility_feedback field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_has_mobility_feedback: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.mobility_status field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mobility_status: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.feedback_kind field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_feedback_kind: UInt8 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_subcommand_status field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_has_subcommand_status: Bool = false
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.subcommand_status field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_subcommand_status: UInt32 = 0
  /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_proto field.
  /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_native_proto: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_token = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_token), 8))
    field_nonce = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_nonce), 8))
    field_error = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error), 4))
    field_unknown = cursor.boolean(field_unknown)
    field_native_command_id = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_native_command_id), 4))
    field_has_full_body_feedback = cursor.boolean(field_has_full_body_feedback)
    field_full_body_status = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_full_body_status), 4))
    field_has_mobility_feedback = cursor.boolean(field_has_mobility_feedback)
    field_mobility_status = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_mobility_status), 4))
    field_feedback_kind = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_feedback_kind), 1))
    field_has_subcommand_status = cursor.boolean(field_has_subcommand_status)
    field_subcommand_status = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_subcommand_status), 4))
    let count12 = Int(cursor.number(UInt64(field_native_proto.count), 4))
    if count12 > 16384 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_native_proto = Array(repeating: 0, count: count12) }
    for index in 0..<count12 {
      field_native_proto[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_native_proto[index]), 1))
    }
  }
  /// @brief Encode every complete uwvm_spot_bridge/srv/Feedback_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 16429),
      limit: 16429, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete uwvm_spot_bridge/srv/Feedback_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 45 || bytes.count > 16429 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
