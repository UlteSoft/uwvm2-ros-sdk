/// @file Records.swift
/// @brief Complete original Unitree ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original unitree_api/msg/RequestIdentity value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..16 bytes.
public struct Ros2Unitree_apiMsgRequestIdentity {
  /// @brief Original unitree_api/msg/RequestIdentity.id field.
  /// @details Original type int64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_id: Int64 = 0
  /// @brief Original unitree_api/msg/RequestIdentity.api_id field.
  /// @details Original type int64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_api_id: Int64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_id = Int64(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(UInt64(bitPattern: field_id)), 8))
    )
    field_api_id = Int64(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(UInt64(bitPattern: field_api_id)), 8)))
  }
  /// @brief Encode every complete unitree_api/msg/RequestIdentity field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 16),
      limit: 16, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/RequestIdentity.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 16 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/RequestLease value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Unitree_apiMsgRequestLease {
  /// @brief Original unitree_api/msg/RequestLease.id field.
  /// @details Original type int64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_id: Int64 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_id = Int64(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(UInt64(bitPattern: field_id)), 8))
    )
  }
  /// @brief Encode every complete unitree_api/msg/RequestLease field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/RequestLease.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/RequestPolicy value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Unitree_apiMsgRequestPolicy {
  /// @brief Original unitree_api/msg/RequestPolicy.priority field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_priority: Int32 = 0
  /// @brief Original unitree_api/msg/RequestPolicy.noreply field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_noreply: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_priority = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_priority)), 4)))
    field_noreply = cursor.boolean(field_noreply)
  }
  /// @brief Encode every complete unitree_api/msg/RequestPolicy field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/RequestPolicy.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/RequestHeader value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 29..29 bytes.
public struct Ros2Unitree_apiMsgRequestHeader {
  /// @brief Original unitree_api/msg/RequestHeader.identity field.
  /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_identity: Ros2Unitree_apiMsgRequestIdentity = Ros2Unitree_apiMsgRequestIdentity()
  /// @brief Original unitree_api/msg/RequestHeader.lease field.
  /// @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_lease: Ros2Unitree_apiMsgRequestLease = Ros2Unitree_apiMsgRequestLease()
  /// @brief Original unitree_api/msg/RequestHeader.policy field.
  /// @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_policy: Ros2Unitree_apiMsgRequestPolicy = Ros2Unitree_apiMsgRequestPolicy()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_identity.fields(&cursor)
    field_lease.fields(&cursor)
    field_policy.fields(&cursor)
  }
  /// @brief Encode every complete unitree_api/msg/RequestHeader field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 29),
      limit: 29, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/RequestHeader.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 29 || bytes.count > 29 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 37..4133 bytes.
public struct Ros2Unitree_apiMsgRequest {
  /// @brief Original unitree_api/msg/Request.header field.
  /// @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_header: Ros2Unitree_apiMsgRequestHeader = Ros2Unitree_apiMsgRequestHeader()
  /// @brief Original unitree_api/msg/Request.parameter field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_parameter: [UInt8] = []
  /// @brief Original unitree_api/msg/Request.binary field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_binary: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_header.fields(&cursor)
    field_parameter = cursor.text(field_parameter, 2048)
    let count2 = Int(cursor.number(UInt64(field_binary.count), 4))
    if count2 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_binary = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_binary[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_binary[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_api/msg/Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 4133),
      limit: 4133, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 37 || bytes.count > 4133 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/ResponseStatus value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Unitree_apiMsgResponseStatus {
  /// @brief Original unitree_api/msg/ResponseStatus.code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_code: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_code = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_code)), 4)))
  }
  /// @brief Encode every complete unitree_api/msg/ResponseStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/ResponseStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/ResponseHeader value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..20 bytes.
public struct Ros2Unitree_apiMsgResponseHeader {
  /// @brief Original unitree_api/msg/ResponseHeader.identity field.
  /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_identity: Ros2Unitree_apiMsgRequestIdentity = Ros2Unitree_apiMsgRequestIdentity()
  /// @brief Original unitree_api/msg/ResponseHeader.status field.
  /// @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_status: Ros2Unitree_apiMsgResponseStatus = Ros2Unitree_apiMsgResponseStatus()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_identity.fields(&cursor)
    field_status.fields(&cursor)
  }
  /// @brief Encode every complete unitree_api/msg/ResponseHeader field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 20),
      limit: 20, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/ResponseHeader.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 20 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_api/msg/Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 28..2108 bytes.
public struct Ros2Unitree_apiMsgResponse {
  /// @brief Original unitree_api/msg/Response.header field.
  /// @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_header: Ros2Unitree_apiMsgResponseHeader = Ros2Unitree_apiMsgResponseHeader()
  /// @brief Original unitree_api/msg/Response.data field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_data: [UInt8] = []
  /// @brief Original unitree_api/msg/Response.binary field.
  /// @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_binary: [Int8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_header.fields(&cursor)
    field_data = cursor.text(field_data, 2048)
    let count2 = Int(cursor.number(UInt64(field_binary.count), 4))
    if count2 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_binary = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_binary[index] = Int8(
        bitPattern: UInt8(
          truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_binary[index])), 1)))
    }
  }
  /// @brief Encode every complete unitree_api/msg/Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 2108),
      limit: 2108, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_api/msg/Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 2108 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/AudioData value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 12..2060 bytes.
public struct Ros2Unitree_goMsgAudioData {
  /// @brief Original unitree_go/msg/AudioData.time_frame field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_time_frame: UInt64 = 0
  /// @brief Original unitree_go/msg/AudioData.data field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_data: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_time_frame = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_time_frame), 8))
    let count1 = Int(cursor.number(UInt64(field_data.count), 4))
    if count1 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_data = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_data[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_data[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_go/msg/AudioData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 2060),
      limit: 2060, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/AudioData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 2060 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/BmsCmd value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Unitree_goMsgBmsCmd {
  /// @brief Original unitree_go/msg/BmsCmd.off field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_off: UInt8 = 0
  /// @brief Original unitree_go/msg/BmsCmd.reserve field.
  /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt8] = Array(repeating: 0, count: 3)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_off = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_off), 1))
    let count1 = 3
    if cursor.writing && field_reserve.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_reserve[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_go/msg/BmsCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/BmsCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/BmsState value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 44..44 bytes.
public struct Ros2Unitree_goMsgBmsState {
  /// @brief Original unitree_go/msg/BmsState.version_high field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_high: UInt8 = 0
  /// @brief Original unitree_go/msg/BmsState.version_low field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_low: UInt8 = 0
  /// @brief Original unitree_go/msg/BmsState.status field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_status: UInt8 = 0
  /// @brief Original unitree_go/msg/BmsState.soc field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_soc: UInt8 = 0
  /// @brief Original unitree_go/msg/BmsState.current field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Int32 = 0
  /// @brief Original unitree_go/msg/BmsState.cycle field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cycle: UInt16 = 0
  /// @brief Original unitree_go/msg/BmsState.bq_ntc field.
  /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_bq_ntc: [Int8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/BmsState.mcu_ntc field.
  /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_mcu_ntc: [Int8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/BmsState.cell_vol field.
  /// @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_cell_vol: [UInt16] = Array(repeating: 0, count: 15)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_version_high = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_high), 1))
    field_version_low = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_low), 1))
    field_status = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_status), 1))
    field_soc = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_soc), 1))
    field_current = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_current)), 4)))
    field_cycle = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_cycle), 2))
    let count6 = 2
    if cursor.writing && field_bq_ntc.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_bq_ntc = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_bq_ntc[index] = Int8(
        bitPattern: UInt8(
          truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_bq_ntc[index])), 1)))
    }
    let count7 = 2
    if cursor.writing && field_mcu_ntc.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_mcu_ntc = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_mcu_ntc[index] = Int8(
        bitPattern: UInt8(
          truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_mcu_ntc[index])), 1))
      )
    }
    let count8 = 15
    if cursor.writing && field_cell_vol.count != 15 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_cell_vol = Array(repeating: 0, count: count8)
    }
    for index in 0..<count8 {
      field_cell_vol[index] = UInt16(
        truncatingIfNeeded: cursor.number(UInt64(field_cell_vol[index]), 2))
    }
  }
  /// @brief Encode every complete unitree_go/msg/BmsState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 44),
      limit: 44, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/BmsState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 44 || bytes.count > 44 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/Error value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Unitree_goMsgError {
  /// @brief Original unitree_go/msg/Error.source field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_source: UInt32 = 0
  /// @brief Original unitree_go/msg/Error.state field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_state: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_source = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_source), 4))
    field_state = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_state), 4))
  }
  /// @brief Encode every complete unitree_go/msg/Error field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/Error.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/Go2FrontVideoData value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 20..6164 bytes.
public struct Ros2Unitree_goMsgGo2FrontVideoData {
  /// @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
  /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_time_frame: UInt64 = 0
  /// @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_video720p: [UInt8] = []
  /// @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_video360p: [UInt8] = []
  /// @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_video180p: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_time_frame = UInt64(truncatingIfNeeded: cursor.number(UInt64(field_time_frame), 8))
    let count1 = Int(cursor.number(UInt64(field_video720p.count), 4))
    if count1 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_video720p = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_video720p[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_video720p[index]), 1))
    }
    let count2 = Int(cursor.number(UInt64(field_video360p.count), 4))
    if count2 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_video360p = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_video360p[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_video360p[index]), 1))
    }
    let count3 = Int(cursor.number(UInt64(field_video180p.count), 4))
    if count3 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_video180p = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_video180p[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_video180p[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_go/msg/Go2FrontVideoData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 6164),
      limit: 6164, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/Go2FrontVideoData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 6164 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/HeightMap value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 36..2212 bytes.
public struct Ros2Unitree_goMsgHeightMap {
  /// @brief Original unitree_go/msg/HeightMap.stamp field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stamp: Double = 0
  /// @brief Original unitree_go/msg/HeightMap.frame_id field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_frame_id: [UInt8] = []
  /// @brief Original unitree_go/msg/HeightMap.resolution field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_resolution: Float = 0
  /// @brief Original unitree_go/msg/HeightMap.width field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_width: UInt32 = 0
  /// @brief Original unitree_go/msg/HeightMap.height field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_height: UInt32 = 0
  /// @brief Original unitree_go/msg/HeightMap.origin field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_origin: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/HeightMap.data field.
  /// @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_data: [Float] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_stamp = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_stamp.bitPattern), 8)))
    if !field_stamp.isFinite {
      cursor.failed = true
    }
    field_frame_id = cursor.text(field_frame_id, 2048)
    field_resolution = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_resolution.bitPattern), 4)))
    if !field_resolution.isFinite {
      cursor.failed = true
    }
    field_width = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_width), 4))
    field_height = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_height), 4))
    let count5 = 2
    if cursor.writing && field_origin.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_origin = Array(repeating: 0, count: count5)
    }
    for index in 0..<count5 {
      field_origin[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_origin[index].bitPattern), 4)))
      if !field_origin[index].isFinite {
        cursor.failed = true
      }
    }
    let count6 = Int(cursor.number(UInt64(field_data.count), 4))
    if count6 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_data = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_data[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_data[index].bitPattern), 4)))
      if !field_data[index].isFinite {
        cursor.failed = true
      }
    }
  }
  /// @brief Encode every complete unitree_go/msg/HeightMap field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 2212),
      limit: 2212, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/HeightMap.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 36 || bytes.count > 2212 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/IMUState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 53..53 bytes.
public struct Ros2Unitree_goMsgIMUState {
  /// @brief Original unitree_go/msg/IMUState.quaternion field.
  /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_quaternion: [Float] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/IMUState.gyroscope field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_gyroscope: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/IMUState.accelerometer field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerometer: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/IMUState.rpy field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rpy: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/IMUState.temperature field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 4
    if cursor.writing && field_quaternion.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_quaternion = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_quaternion[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_quaternion[index].bitPattern), 4)))
      if !field_quaternion[index].isFinite {
        cursor.failed = true
      }
    }
    let count1 = 3
    if cursor.writing && field_gyroscope.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_gyroscope = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_gyroscope[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_gyroscope[index].bitPattern), 4)))
      if !field_gyroscope[index].isFinite {
        cursor.failed = true
      }
    }
    let count2 = 3
    if cursor.writing && field_accelerometer.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_accelerometer = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_accelerometer[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_accelerometer[index].bitPattern), 4)))
      if !field_accelerometer[index].isFinite {
        cursor.failed = true
      }
    }
    let count3 = 3
    if cursor.writing && field_rpy.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_rpy = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_rpy[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_rpy[index].bitPattern), 4)))
      if !field_rpy[index].isFinite {
        cursor.failed = true
      }
    }
    field_temperature = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_temperature)), 1)))
  }
  /// @brief Encode every complete unitree_go/msg/IMUState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 53),
      limit: 53, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/IMUState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 53 || bytes.count > 53 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/InterfaceConfig value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Unitree_goMsgInterfaceConfig {
  /// @brief Original unitree_go/msg/InterfaceConfig.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/InterfaceConfig.value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt8 = 0
  /// @brief Original unitree_go/msg/InterfaceConfig.reserve field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_value = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_value), 1))
    let count2 = 2
    if cursor.writing && field_reserve.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_reserve[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_go/msg/InterfaceConfig field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/InterfaceConfig.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/LidarState value.
/// @details Retain all 17 fields and 0 constants in source order. Canonical extent 81..6225 bytes.
public struct Ros2Unitree_goMsgLidarState {
  /// @brief Original unitree_go/msg/LidarState.stamp field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stamp: Double = 0
  /// @brief Original unitree_go/msg/LidarState.firmware_version field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_firmware_version: [UInt8] = []
  /// @brief Original unitree_go/msg/LidarState.software_version field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_software_version: [UInt8] = []
  /// @brief Original unitree_go/msg/LidarState.sdk_version field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_sdk_version: [UInt8] = []
  /// @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sys_rotation_speed: Float = 0
  /// @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_com_rotation_speed: Float = 0
  /// @brief Original unitree_go/msg/LidarState.error_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_state: UInt8 = 0
  /// @brief Original unitree_go/msg/LidarState.cloud_frequency field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cloud_frequency: Float = 0
  /// @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cloud_packet_loss_rate: Float = 0
  /// @brief Original unitree_go/msg/LidarState.cloud_size field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cloud_size: UInt32 = 0
  /// @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cloud_scan_num: UInt32 = 0
  /// @brief Original unitree_go/msg/LidarState.imu_frequency field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_imu_frequency: Float = 0
  /// @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_imu_packet_loss_rate: Float = 0
  /// @brief Original unitree_go/msg/LidarState.imu_rpy field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_imu_rpy: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_serial_recv_stamp: Double = 0
  /// @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_serial_buffer_size: UInt32 = 0
  /// @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_serial_buffer_read: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_stamp = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_stamp.bitPattern), 8)))
    if !field_stamp.isFinite {
      cursor.failed = true
    }
    field_firmware_version = cursor.text(field_firmware_version, 2048)
    field_software_version = cursor.text(field_software_version, 2048)
    field_sdk_version = cursor.text(field_sdk_version, 2048)
    field_sys_rotation_speed = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_sys_rotation_speed.bitPattern), 4)))
    if !field_sys_rotation_speed.isFinite {
      cursor.failed = true
    }
    field_com_rotation_speed = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_com_rotation_speed.bitPattern), 4)))
    if !field_com_rotation_speed.isFinite {
      cursor.failed = true
    }
    field_error_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_error_state), 1))
    field_cloud_frequency = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_cloud_frequency.bitPattern), 4)))
    if !field_cloud_frequency.isFinite {
      cursor.failed = true
    }
    field_cloud_packet_loss_rate = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_cloud_packet_loss_rate.bitPattern), 4)))
    if !field_cloud_packet_loss_rate.isFinite {
      cursor.failed = true
    }
    field_cloud_size = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cloud_size), 4))
    field_cloud_scan_num = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_cloud_scan_num), 4))
    field_imu_frequency = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_imu_frequency.bitPattern), 4)))
    if !field_imu_frequency.isFinite {
      cursor.failed = true
    }
    field_imu_packet_loss_rate = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_imu_packet_loss_rate.bitPattern), 4)))
    if !field_imu_packet_loss_rate.isFinite {
      cursor.failed = true
    }
    let count13 = 3
    if cursor.writing && field_imu_rpy.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_imu_rpy = Array(repeating: 0, count: count13)
    }
    for index in 0..<count13 {
      field_imu_rpy[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_imu_rpy[index].bitPattern), 4)))
      if !field_imu_rpy[index].isFinite {
        cursor.failed = true
      }
    }
    field_serial_recv_stamp = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_serial_recv_stamp.bitPattern), 8)))
    if !field_serial_recv_stamp.isFinite {
      cursor.failed = true
    }
    field_serial_buffer_size = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_serial_buffer_size), 4))
    field_serial_buffer_read = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_serial_buffer_read), 4))
  }
  /// @brief Encode every complete unitree_go/msg/LidarState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 6225),
      limit: 6225, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/LidarState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 81 || bytes.count > 6225 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/MotorCmd value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 33..33 bytes.
public struct Ros2Unitree_goMsgMotorCmd {
  /// @brief Original unitree_go/msg/MotorCmd.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/MotorCmd.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_go/msg/MotorCmd.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_go/msg/MotorCmd.tau field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tau: Float = 0
  /// @brief Original unitree_go/msg/MotorCmd.kp field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_kp: Float = 0
  /// @brief Original unitree_go/msg/MotorCmd.kd field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_kd: Float = 0
  /// @brief Original unitree_go/msg/MotorCmd.reserve field.
  /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 3)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_q = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q.bitPattern), 4)))
    if !field_q.isFinite {
      cursor.failed = true
    }
    field_dq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_dq.bitPattern), 4)))
    if !field_dq.isFinite {
      cursor.failed = true
    }
    field_tau = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tau.bitPattern), 4)))
    if !field_tau.isFinite {
      cursor.failed = true
    }
    field_kp = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_kp.bitPattern), 4)))
    if !field_kp.isFinite {
      cursor.failed = true
    }
    field_kd = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_kd.bitPattern), 4)))
    if !field_kd.isFinite {
      cursor.failed = true
    }
    let count6 = 3
    if cursor.writing && field_reserve.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_go/msg/MotorCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 33),
      limit: 33, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/MotorCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 33 || bytes.count > 33 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/LowCmd value.
/// @details Retain all 14 fields and 0 constants in source order. Canonical extent 749..749 bytes.
public struct Ros2Unitree_goMsgLowCmd {
  /// @brief Original unitree_go/msg/LowCmd.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowCmd.level_flag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_level_flag: UInt8 = 0
  /// @brief Original unitree_go/msg/LowCmd.frame_reserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frame_reserve: UInt8 = 0
  /// @brief Original unitree_go/msg/LowCmd.sn field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_sn: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowCmd.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowCmd.bandwidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandwidth: UInt16 = 0
  /// @brief Original unitree_go/msg/LowCmd.motor_cmd field.
  /// @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_cmd: [Ros2Unitree_goMsgMotorCmd] = Array(
    repeating: Ros2Unitree_goMsgMotorCmd(), count: 20)
  /// @brief Original unitree_go/msg/LowCmd.bms_cmd field.
  /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_bms_cmd: Ros2Unitree_goMsgBmsCmd = Ros2Unitree_goMsgBmsCmd()
  /// @brief Original unitree_go/msg/LowCmd.wireless_remote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wireless_remote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_go/msg/LowCmd.led field.
  /// @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_led: [UInt8] = Array(repeating: 0, count: 12)
  /// @brief Original unitree_go/msg/LowCmd.fan field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_fan: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowCmd.gpio field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gpio: UInt8 = 0
  /// @brief Original unitree_go/msg/LowCmd.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_go/msg/LowCmd.crc field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_crc: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 2
    if cursor.writing && field_head.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_head = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_head[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_head[index]), 1))
    }
    field_level_flag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_level_flag), 1))
    field_frame_reserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frame_reserve), 1))
    let count3 = 2
    if cursor.writing && field_sn.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_sn = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_sn[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_sn[index]), 4))
    }
    let count4 = 2
    if cursor.writing && field_version.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_version = Array(repeating: 0, count: count4)
    }
    for index in 0..<count4 {
      field_version[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_version[index]), 4))
    }
    field_bandwidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandwidth), 2))
    let count6 = 20
    if cursor.writing && field_motor_cmd.count != 20 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_cmd = Array(repeating: Ros2Unitree_goMsgMotorCmd(), count: count6)
    }
    for index in 0..<count6 {
      field_motor_cmd[index].fields(&cursor)
    }
    field_bms_cmd.fields(&cursor)
    let count8 = 40
    if cursor.writing && field_wireless_remote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wireless_remote = Array(repeating: 0, count: count8)
    }
    for index in 0..<count8 {
      field_wireless_remote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wireless_remote[index]), 1))
    }
    let count9 = 12
    if cursor.writing && field_led.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_led = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_led[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_led[index]), 1))
    }
    let count10 = 2
    if cursor.writing && field_fan.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_fan = Array(repeating: 0, count: count10)
    }
    for index in 0..<count10 {
      field_fan[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_fan[index]), 1))
    }
    field_gpio = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_gpio), 1))
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_go/msg/LowCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 749),
      limit: 749, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/LowCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 749 || bytes.count > 749 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/MotorState value.
/// @details Retain all 11 fields and 0 constants in source order. Canonical extent 42..42 bytes.
public struct Ros2Unitree_goMsgMotorState {
  /// @brief Original unitree_go/msg/MotorState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/MotorState.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_go/msg/MotorState.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_go/msg/MotorState.ddq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ddq: Float = 0
  /// @brief Original unitree_go/msg/MotorState.tau_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tau_est: Float = 0
  /// @brief Original unitree_go/msg/MotorState.q_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q_raw: Float = 0
  /// @brief Original unitree_go/msg/MotorState.dq_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq_raw: Float = 0
  /// @brief Original unitree_go/msg/MotorState.ddq_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ddq_raw: Float = 0
  /// @brief Original unitree_go/msg/MotorState.temperature field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Int8 = 0
  /// @brief Original unitree_go/msg/MotorState.lost field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lost: UInt32 = 0
  /// @brief Original unitree_go/msg/MotorState.reserve field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_q = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q.bitPattern), 4)))
    if !field_q.isFinite {
      cursor.failed = true
    }
    field_dq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_dq.bitPattern), 4)))
    if !field_dq.isFinite {
      cursor.failed = true
    }
    field_ddq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ddq.bitPattern), 4)))
    if !field_ddq.isFinite {
      cursor.failed = true
    }
    field_tau_est = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tau_est.bitPattern), 4)))
    if !field_tau_est.isFinite {
      cursor.failed = true
    }
    field_q_raw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q_raw.bitPattern), 4)))
    if !field_q_raw.isFinite {
      cursor.failed = true
    }
    field_dq_raw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_dq_raw.bitPattern), 4)))
    if !field_dq_raw.isFinite {
      cursor.failed = true
    }
    field_ddq_raw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ddq_raw.bitPattern), 4)))
    if !field_ddq_raw.isFinite {
      cursor.failed = true
    }
    field_temperature = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_temperature)), 1)))
    field_lost = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_lost), 4))
    let count10 = 2
    if cursor.writing && field_reserve.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count10)
    }
    for index in 0..<count10 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_go/msg/MotorState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 42),
      limit: 42, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/MotorState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 42 || bytes.count > 42 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/LowState value.
/// @details Retain all 22 fields and 0 constants in source order. Canonical extent 1050..1050
/// bytes.
public struct Ros2Unitree_goMsgLowState {
  /// @brief Original unitree_go/msg/LowState.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowState.level_flag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_level_flag: UInt8 = 0
  /// @brief Original unitree_go/msg/LowState.frame_reserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frame_reserve: UInt8 = 0
  /// @brief Original unitree_go/msg/LowState.sn field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_sn: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowState.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/LowState.bandwidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandwidth: UInt16 = 0
  /// @brief Original unitree_go/msg/LowState.imu_state field.
  /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu_state: Ros2Unitree_goMsgIMUState = Ros2Unitree_goMsgIMUState()
  /// @brief Original unitree_go/msg/LowState.motor_state field.
  /// @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_state: [Ros2Unitree_goMsgMotorState] = Array(
    repeating: Ros2Unitree_goMsgMotorState(), count: 20)
  /// @brief Original unitree_go/msg/LowState.bms_state field.
  /// @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_bms_state: Ros2Unitree_goMsgBmsState = Ros2Unitree_goMsgBmsState()
  /// @brief Original unitree_go/msg/LowState.foot_force field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_foot_force: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/LowState.foot_force_est field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_foot_force_est: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/LowState.tick field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tick: UInt32 = 0
  /// @brief Original unitree_go/msg/LowState.wireless_remote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wireless_remote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_go/msg/LowState.bit_flag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bit_flag: UInt8 = 0
  /// @brief Original unitree_go/msg/LowState.adc_reel field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_adc_reel: Float = 0
  /// @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature_ntc1: Int8 = 0
  /// @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature_ntc2: Int8 = 0
  /// @brief Original unitree_go/msg/LowState.power_v field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_v: Float = 0
  /// @brief Original unitree_go/msg/LowState.power_a field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_a: Float = 0
  /// @brief Original unitree_go/msg/LowState.fan_frequency field.
  /// @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_fan_frequency: [UInt16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/LowState.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_go/msg/LowState.crc field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_crc: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 2
    if cursor.writing && field_head.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_head = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_head[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_head[index]), 1))
    }
    field_level_flag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_level_flag), 1))
    field_frame_reserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frame_reserve), 1))
    let count3 = 2
    if cursor.writing && field_sn.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_sn = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_sn[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_sn[index]), 4))
    }
    let count4 = 2
    if cursor.writing && field_version.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_version = Array(repeating: 0, count: count4)
    }
    for index in 0..<count4 {
      field_version[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_version[index]), 4))
    }
    field_bandwidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandwidth), 2))
    field_imu_state.fields(&cursor)
    let count7 = 20
    if cursor.writing && field_motor_state.count != 20 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_state = Array(repeating: Ros2Unitree_goMsgMotorState(), count: count7)
    }
    for index in 0..<count7 {
      field_motor_state[index].fields(&cursor)
    }
    field_bms_state.fields(&cursor)
    let count9 = 4
    if cursor.writing && field_foot_force.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_foot_force = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_foot_force[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_foot_force[index])), 2))
      )
    }
    let count10 = 4
    if cursor.writing && field_foot_force_est.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_foot_force_est = Array(repeating: 0, count: count10)
    }
    for index in 0..<count10 {
      field_foot_force_est[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(
            UInt64(UInt16(bitPattern: field_foot_force_est[index])), 2)))
    }
    field_tick = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tick), 4))
    let count12 = 40
    if cursor.writing && field_wireless_remote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wireless_remote = Array(repeating: 0, count: count12)
    }
    for index in 0..<count12 {
      field_wireless_remote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wireless_remote[index]), 1))
    }
    field_bit_flag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_bit_flag), 1))
    field_adc_reel = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_adc_reel.bitPattern), 4)))
    if !field_adc_reel.isFinite {
      cursor.failed = true
    }
    field_temperature_ntc1 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_temperature_ntc1)), 1)))
    field_temperature_ntc2 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_temperature_ntc2)), 1)))
    field_power_v = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_power_v.bitPattern), 4)))
    if !field_power_v.isFinite {
      cursor.failed = true
    }
    field_power_a = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_power_a.bitPattern), 4)))
    if !field_power_a.isFinite {
      cursor.failed = true
    }
    let count19 = 4
    if cursor.writing && field_fan_frequency.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_fan_frequency = Array(repeating: 0, count: count19)
    }
    for index in 0..<count19 {
      field_fan_frequency[index] = UInt16(
        truncatingIfNeeded: cursor.number(UInt64(field_fan_frequency[index]), 2))
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_go/msg/LowState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1050),
      limit: 1050, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/LowState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1050 || bytes.count > 1050 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/MotorCmds value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..1060 bytes.
public struct Ros2Unitree_goMsgMotorCmds {
  /// @brief Original unitree_go/msg/MotorCmds.cmds field.
  /// @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_cmds: [Ros2Unitree_goMsgMotorCmd] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = Int(cursor.number(UInt64(field_cmds.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_cmds = Array(repeating: Ros2Unitree_goMsgMotorCmd(), count: count0)
    }
    for index in 0..<count0 {
      field_cmds[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete unitree_go/msg/MotorCmds field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1060),
      limit: 1060, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/MotorCmds.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 1060 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/MotorStates value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..1348 bytes.
public struct Ros2Unitree_goMsgMotorStates {
  /// @brief Original unitree_go/msg/MotorStates.states field.
  /// @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_states: [Ros2Unitree_goMsgMotorState] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = Int(cursor.number(UInt64(field_states.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_states = Array(repeating: Ros2Unitree_goMsgMotorState(), count: count0)
    }
    for index in 0..<count0 {
      field_states[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete unitree_go/msg/MotorStates field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1348),
      limit: 1348, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/MotorStates.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 1348 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/PathPoint value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 28..28 bytes.
public struct Ros2Unitree_goMsgPathPoint {
  /// @brief Original unitree_go/msg/PathPoint.t_from_start field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_t_from_start: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.yaw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yaw: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.vx field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vx: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.vy field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vy: Float = 0
  /// @brief Original unitree_go/msg/PathPoint.vyaw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vyaw: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_t_from_start = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_t_from_start.bitPattern), 4)))
    if !field_t_from_start.isFinite {
      cursor.failed = true
    }
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite {
      cursor.failed = true
    }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite {
      cursor.failed = true
    }
    field_yaw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yaw.bitPattern), 4)))
    if !field_yaw.isFinite {
      cursor.failed = true
    }
    field_vx = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_vx.bitPattern), 4)))
    if !field_vx.isFinite {
      cursor.failed = true
    }
    field_vy = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_vy.bitPattern), 4)))
    if !field_vy.isFinite {
      cursor.failed = true
    }
    field_vyaw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_vyaw.bitPattern), 4)))
    if !field_vyaw.isFinite {
      cursor.failed = true
    }
  }
  /// @brief Encode every complete unitree_go/msg/PathPoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 28),
      limit: 28, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/PathPoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 28 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/Req value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..4104 bytes.
public struct Ros2Unitree_goMsgReq {
  /// @brief Original unitree_go/msg/Req.uuid field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_uuid: [UInt8] = []
  /// @brief Original unitree_go/msg/Req.body field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_body: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_uuid = cursor.text(field_uuid, 2048)
    field_body = cursor.text(field_body, 2048)
  }
  /// @brief Encode every complete unitree_go/msg/Req field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 4104),
      limit: 4104, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/Req.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 4104 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/Res value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..6156 bytes.
public struct Ros2Unitree_goMsgRes {
  /// @brief Original unitree_go/msg/Res.uuid field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_uuid: [UInt8] = []
  /// @brief Original unitree_go/msg/Res.data field.
  /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_data: [UInt8] = []
  /// @brief Original unitree_go/msg/Res.body field.
  /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_body: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_uuid = cursor.text(field_uuid, 2048)
    let count1 = Int(cursor.number(UInt64(field_data.count), 4))
    if count1 > 2048 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_data = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_data[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_data[index]), 1))
    }
    field_body = cursor.text(field_body, 2048)
  }
  /// @brief Encode every complete unitree_go/msg/Res field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 6156),
      limit: 6156, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/Res.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 6156 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/SportModeCmd value.
/// @details Retain all 11 fields and 0 constants in source order. Canonical extent 887..887 bytes.
public struct Ros2Unitree_goMsgSportModeCmd {
  /// @brief Original unitree_go/msg/SportModeCmd.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/SportModeCmd.gait_type field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gait_type: UInt8 = 0
  /// @brief Original unitree_go/msg/SportModeCmd.speed_level field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_level: UInt8 = 0
  /// @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_foot_raise_height: Float = 0
  /// @brief Original unitree_go/msg/SportModeCmd.body_height field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_body_height: Float = 0
  /// @brief Original unitree_go/msg/SportModeCmd.position field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/SportModeCmd.euler field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_euler: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/SportModeCmd.velocity field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yaw_speed: Float = 0
  /// @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
  /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_bms_cmd: Ros2Unitree_goMsgBmsCmd = Ros2Unitree_goMsgBmsCmd()
  /// @brief Original unitree_go/msg/SportModeCmd.path_point field.
  /// @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_path_point: [Ros2Unitree_goMsgPathPoint] = Array(
    repeating: Ros2Unitree_goMsgPathPoint(), count: 30)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_gait_type = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_gait_type), 1))
    field_speed_level = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_speed_level), 1))
    field_foot_raise_height = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_foot_raise_height.bitPattern), 4)))
    if !field_foot_raise_height.isFinite {
      cursor.failed = true
    }
    field_body_height = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_body_height.bitPattern), 4))
    )
    if !field_body_height.isFinite {
      cursor.failed = true
    }
    let count5 = 2
    if cursor.writing && field_position.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_position = Array(repeating: 0, count: count5)
    }
    for index in 0..<count5 {
      field_position[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 4)))
      if !field_position[index].isFinite {
        cursor.failed = true
      }
    }
    let count6 = 3
    if cursor.writing && field_euler.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_euler = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_euler[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_euler[index].bitPattern), 4)))
      if !field_euler[index].isFinite {
        cursor.failed = true
      }
    }
    let count7 = 2
    if cursor.writing && field_velocity.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocity = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_velocity[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 4)))
      if !field_velocity[index].isFinite {
        cursor.failed = true
      }
    }
    field_yaw_speed = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yaw_speed.bitPattern), 4)))
    if !field_yaw_speed.isFinite {
      cursor.failed = true
    }
    field_bms_cmd.fields(&cursor)
    let count10 = 30
    if cursor.writing && field_path_point.count != 30 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_path_point = Array(repeating: Ros2Unitree_goMsgPathPoint(), count: count10)
    }
    for index in 0..<count10 {
      field_path_point[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete unitree_go/msg/SportModeCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 887),
      limit: 887, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/SportModeCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 887 || bytes.count > 887 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/TimeSpec value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Unitree_goMsgTimeSpec {
  /// @brief Original unitree_go/msg/TimeSpec.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original unitree_go/msg/TimeSpec.nanosec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nanosec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
  }
  /// @brief Encode every complete unitree_go/msg/TimeSpec field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/TimeSpec.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/SportModeState value.
/// @details Retain all 15 fields and 0 constants in source order. Canonical extent 227..227 bytes.
public struct Ros2Unitree_goMsgSportModeState {
  /// @brief Original unitree_go/msg/SportModeState.stamp field.
  /// @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_stamp: Ros2Unitree_goMsgTimeSpec = Ros2Unitree_goMsgTimeSpec()
  /// @brief Original unitree_go/msg/SportModeState.error_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_code: UInt32 = 0
  /// @brief Original unitree_go/msg/SportModeState.imu_state field.
  /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu_state: Ros2Unitree_goMsgIMUState = Ros2Unitree_goMsgIMUState()
  /// @brief Original unitree_go/msg/SportModeState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/SportModeState.progress field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_progress: Float = 0
  /// @brief Original unitree_go/msg/SportModeState.gait_type field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gait_type: UInt8 = 0
  /// @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_foot_raise_height: Float = 0
  /// @brief Original unitree_go/msg/SportModeState.position field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/SportModeState.body_height field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_body_height: Float = 0
  /// @brief Original unitree_go/msg/SportModeState.velocity field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_go/msg/SportModeState.yaw_speed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yaw_speed: Float = 0
  /// @brief Original unitree_go/msg/SportModeState.range_obstacle field.
  /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_range_obstacle: [Float] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/SportModeState.foot_force field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_foot_force: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_go/msg/SportModeState.foot_position_body field.
  /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_foot_position_body: [Float] = Array(repeating: 0, count: 12)
  /// @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
  /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_foot_speed_body: [Float] = Array(repeating: 0, count: 12)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_stamp.fields(&cursor)
    field_error_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error_code), 4))
    field_imu_state.fields(&cursor)
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_progress = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_progress.bitPattern), 4)))
    if !field_progress.isFinite {
      cursor.failed = true
    }
    field_gait_type = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_gait_type), 1))
    field_foot_raise_height = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_foot_raise_height.bitPattern), 4)))
    if !field_foot_raise_height.isFinite {
      cursor.failed = true
    }
    let count7 = 3
    if cursor.writing && field_position.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_position = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_position[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 4)))
      if !field_position[index].isFinite {
        cursor.failed = true
      }
    }
    field_body_height = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_body_height.bitPattern), 4))
    )
    if !field_body_height.isFinite {
      cursor.failed = true
    }
    let count9 = 3
    if cursor.writing && field_velocity.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocity = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_velocity[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 4)))
      if !field_velocity[index].isFinite {
        cursor.failed = true
      }
    }
    field_yaw_speed = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yaw_speed.bitPattern), 4)))
    if !field_yaw_speed.isFinite {
      cursor.failed = true
    }
    let count11 = 4
    if cursor.writing && field_range_obstacle.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_range_obstacle = Array(repeating: 0, count: count11)
    }
    for index in 0..<count11 {
      field_range_obstacle[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_range_obstacle[index].bitPattern), 4))
      )
      if !field_range_obstacle[index].isFinite {
        cursor.failed = true
      }
    }
    let count12 = 4
    if cursor.writing && field_foot_force.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_foot_force = Array(repeating: 0, count: count12)
    }
    for index in 0..<count12 {
      field_foot_force[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_foot_force[index])), 2))
      )
    }
    let count13 = 12
    if cursor.writing && field_foot_position_body.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_foot_position_body = Array(repeating: 0, count: count13)
    }
    for index in 0..<count13 {
      field_foot_position_body[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_foot_position_body[index].bitPattern), 4)))
      if !field_foot_position_body[index].isFinite {
        cursor.failed = true
      }
    }
    let count14 = 12
    if cursor.writing && field_foot_speed_body.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_foot_speed_body = Array(repeating: 0, count: count14)
    }
    for index in 0..<count14 {
      field_foot_speed_body[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_foot_speed_body[index].bitPattern), 4)))
      if !field_foot_speed_body[index].isFinite {
        cursor.failed = true
      }
    }
  }
  /// @brief Encode every complete unitree_go/msg/SportModeState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 227),
      limit: 227, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/SportModeState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 227 || bytes.count > 227 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/UwbState value.
/// @details Retain all 17 fields and 0 constants in source order. Canonical extent 55..55 bytes.
public struct Ros2Unitree_goMsgUwbState {
  /// @brief Original unitree_go/msg/UwbState.version field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/UwbState.channel field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_channel: UInt8 = 0
  /// @brief Original unitree_go/msg/UwbState.joy_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_joy_mode: UInt8 = 0
  /// @brief Original unitree_go/msg/UwbState.orientation_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_orientation_est: Float = 0
  /// @brief Original unitree_go/msg/UwbState.pitch_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_pitch_est: Float = 0
  /// @brief Original unitree_go/msg/UwbState.distance_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_distance_est: Float = 0
  /// @brief Original unitree_go/msg/UwbState.yaw_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yaw_est: Float = 0
  /// @brief Original unitree_go/msg/UwbState.tag_roll field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tag_roll: Float = 0
  /// @brief Original unitree_go/msg/UwbState.tag_pitch field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tag_pitch: Float = 0
  /// @brief Original unitree_go/msg/UwbState.tag_yaw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tag_yaw: Float = 0
  /// @brief Original unitree_go/msg/UwbState.base_roll field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_base_roll: Float = 0
  /// @brief Original unitree_go/msg/UwbState.base_pitch field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_base_pitch: Float = 0
  /// @brief Original unitree_go/msg/UwbState.base_yaw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_base_yaw: Float = 0
  /// @brief Original unitree_go/msg/UwbState.joystick field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_joystick: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_go/msg/UwbState.error_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_state: UInt8 = 0
  /// @brief Original unitree_go/msg/UwbState.buttons field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_buttons: UInt8 = 0
  /// @brief Original unitree_go/msg/UwbState.enabled_from_app field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_enabled_from_app: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 2
    if cursor.writing && field_version.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_version = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_version[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_version[index]), 1))
    }
    field_channel = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_channel), 1))
    field_joy_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_joy_mode), 1))
    field_orientation_est = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_orientation_est.bitPattern), 4)))
    if !field_orientation_est.isFinite {
      cursor.failed = true
    }
    field_pitch_est = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_pitch_est.bitPattern), 4)))
    if !field_pitch_est.isFinite {
      cursor.failed = true
    }
    field_distance_est = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_distance_est.bitPattern), 4)))
    if !field_distance_est.isFinite {
      cursor.failed = true
    }
    field_yaw_est = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yaw_est.bitPattern), 4)))
    if !field_yaw_est.isFinite {
      cursor.failed = true
    }
    field_tag_roll = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tag_roll.bitPattern), 4)))
    if !field_tag_roll.isFinite {
      cursor.failed = true
    }
    field_tag_pitch = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tag_pitch.bitPattern), 4)))
    if !field_tag_pitch.isFinite {
      cursor.failed = true
    }
    field_tag_yaw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tag_yaw.bitPattern), 4)))
    if !field_tag_yaw.isFinite {
      cursor.failed = true
    }
    field_base_roll = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_base_roll.bitPattern), 4)))
    if !field_base_roll.isFinite {
      cursor.failed = true
    }
    field_base_pitch = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_base_pitch.bitPattern), 4)))
    if !field_base_pitch.isFinite {
      cursor.failed = true
    }
    field_base_yaw = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_base_yaw.bitPattern), 4)))
    if !field_base_yaw.isFinite {
      cursor.failed = true
    }
    let count13 = 2
    if cursor.writing && field_joystick.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_joystick = Array(repeating: 0, count: count13)
    }
    for index in 0..<count13 {
      field_joystick[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_joystick[index].bitPattern), 4)))
      if !field_joystick[index].isFinite {
        cursor.failed = true
      }
    }
    field_error_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_error_state), 1))
    field_buttons = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_buttons), 1))
    field_enabled_from_app = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_enabled_from_app), 1))
  }
  /// @brief Encode every complete unitree_go/msg/UwbState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 55),
      limit: 55, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/UwbState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 55 || bytes.count > 55 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/UwbSwitch value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Unitree_goMsgUwbSwitch {
  /// @brief Original unitree_go/msg/UwbSwitch.enabled field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_enabled: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_enabled = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_enabled), 1))
  }
  /// @brief Encode every complete unitree_go/msg/UwbSwitch field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/UwbSwitch.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_go/msg/WirelessController value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 18..18 bytes.
public struct Ros2Unitree_goMsgWirelessController {
  /// @brief Original unitree_go/msg/WirelessController.lx field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lx: Float = 0
  /// @brief Original unitree_go/msg/WirelessController.ly field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ly: Float = 0
  /// @brief Original unitree_go/msg/WirelessController.rx field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rx: Float = 0
  /// @brief Original unitree_go/msg/WirelessController.ry field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ry: Float = 0
  /// @brief Original unitree_go/msg/WirelessController.keys field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_keys: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_lx = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_lx.bitPattern), 4)))
    if !field_lx.isFinite {
      cursor.failed = true
    }
    field_ly = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ly.bitPattern), 4)))
    if !field_ly.isFinite {
      cursor.failed = true
    }
    field_rx = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rx.bitPattern), 4)))
    if !field_rx.isFinite {
      cursor.failed = true
    }
    field_ry = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ry.bitPattern), 4)))
    if !field_ry.isFinite {
      cursor.failed = true
    }
    field_keys = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_keys), 2))
  }
  /// @brief Encode every complete unitree_go/msg/WirelessController field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 18),
      limit: 18, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_go/msg/WirelessController.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 18 || bytes.count > 18 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/BmsCmd value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 41..41 bytes.
public struct Ros2Unitree_hgMsgBmsCmd {
  /// @brief Original unitree_hg/msg/BmsCmd.cmd field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cmd: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsCmd.reserve field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_cmd = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_cmd), 1))
    let count1 = 40
    if cursor.writing && field_reserve.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_reserve[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 1))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/BmsCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 41),
      limit: 41, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/BmsCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 41 || bytes.count > 41 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/BmsState value.
/// @details Retain all 13 fields and 0 constants in source order. Canonical extent 161..161 bytes.
public struct Ros2Unitree_hgMsgBmsState {
  /// @brief Original unitree_hg/msg/BmsState.version_high field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_high: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsState.version_low field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_low: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsState.fn field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fn: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsState.cell_vol field.
  /// @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_cell_vol: [UInt16] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
  /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_bmsvoltage: [UInt32] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_hg/msg/BmsState.current field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Int32 = 0
  /// @brief Original unitree_hg/msg/BmsState.soc field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_soc: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsState.soh field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_soh: UInt8 = 0
  /// @brief Original unitree_hg/msg/BmsState.temperature field.
  /// @details Original type int16. Shape array; bound/count 12 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_temperature: [Int16] = Array(repeating: 0, count: 12)
  /// @brief Original unitree_hg/msg/BmsState.cycle field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cycle: UInt16 = 0
  /// @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_manufacturer_date: UInt16 = 0
  /// @brief Original unitree_hg/msg/BmsState.bmsstate field.
  /// @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_bmsstate: [UInt32] = Array(repeating: 0, count: 5)
  /// @brief Original unitree_hg/msg/BmsState.reserve field.
  /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 3)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_version_high = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_high), 1))
    field_version_low = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_low), 1))
    field_fn = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_fn), 1))
    let count3 = 40
    if cursor.writing && field_cell_vol.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_cell_vol = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_cell_vol[index] = UInt16(
        truncatingIfNeeded: cursor.number(UInt64(field_cell_vol[index]), 2))
    }
    let count4 = 3
    if cursor.writing && field_bmsvoltage.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_bmsvoltage = Array(repeating: 0, count: count4)
    }
    for index in 0..<count4 {
      field_bmsvoltage[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_bmsvoltage[index]), 4))
    }
    field_current = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_current)), 4)))
    field_soc = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_soc), 1))
    field_soh = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_soh), 1))
    let count8 = 12
    if cursor.writing && field_temperature.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_temperature = Array(repeating: 0, count: count8)
    }
    for index in 0..<count8 {
      field_temperature[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_temperature[index])), 2)
        ))
    }
    field_cycle = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_cycle), 2))
    field_manufacturer_date = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_manufacturer_date), 2))
    let count11 = 5
    if cursor.writing && field_bmsstate.count != 5 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_bmsstate = Array(repeating: 0, count: count11)
    }
    for index in 0..<count11 {
      field_bmsstate[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_bmsstate[index]), 4))
    }
    let count12 = 3
    if cursor.writing && field_reserve.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count12)
    }
    for index in 0..<count12 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/BmsState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 161),
      limit: 161, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/BmsState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 161 || bytes.count > 161 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/MotorCmd value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 25..25 bytes.
public struct Ros2Unitree_hgMsgMotorCmd {
  /// @brief Original unitree_hg/msg/MotorCmd.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_hg/msg/MotorCmd.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_hg/msg/MotorCmd.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_hg/msg/MotorCmd.tau field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tau: Float = 0
  /// @brief Original unitree_hg/msg/MotorCmd.kp field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_kp: Float = 0
  /// @brief Original unitree_hg/msg/MotorCmd.kd field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_kd: Float = 0
  /// @brief Original unitree_hg/msg/MotorCmd.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_q = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q.bitPattern), 4)))
    if !field_q.isFinite {
      cursor.failed = true
    }
    field_dq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_dq.bitPattern), 4)))
    if !field_dq.isFinite {
      cursor.failed = true
    }
    field_tau = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tau.bitPattern), 4)))
    if !field_tau.isFinite {
      cursor.failed = true
    }
    field_kp = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_kp.bitPattern), 4)))
    if !field_kp.isFinite {
      cursor.failed = true
    }
    field_kd = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_kd.bitPattern), 4)))
    if !field_kd.isFinite {
      cursor.failed = true
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
  }
  /// @brief Encode every complete unitree_hg/msg/MotorCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 25),
      limit: 25, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/MotorCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 25 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/HandCmd value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..820 bytes.
public struct Ros2Unitree_hgMsgHandCmd {
  /// @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
  /// @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_cmd: [Ros2Unitree_hgMsgMotorCmd] = []
  /// @brief Original unitree_hg/msg/HandCmd.reserve field.
  /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 4)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = Int(cursor.number(UInt64(field_motor_cmd.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_cmd = Array(repeating: Ros2Unitree_hgMsgMotorCmd(), count: count0)
    }
    for index in 0..<count0 {
      field_motor_cmd[index].fields(&cursor)
    }
    let count1 = 4
    if cursor.writing && field_reserve.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/HandCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 820),
      limit: 820, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/HandCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 820 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/MotorState value.
/// @details Retain all 10 fields and 0 constants in source order. Canonical extent 53..53 bytes.
public struct Ros2Unitree_hgMsgMotorState {
  /// @brief Original unitree_hg/msg/MotorState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_hg/msg/MotorState.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_hg/msg/MotorState.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_hg/msg/MotorState.ddq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ddq: Float = 0
  /// @brief Original unitree_hg/msg/MotorState.tau_est field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tau_est: Float = 0
  /// @brief Original unitree_hg/msg/MotorState.temperature field.
  /// @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_temperature: [Int16] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_hg/msg/MotorState.vol field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vol: Float = 0
  /// @brief Original unitree_hg/msg/MotorState.sensor field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_sensor: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_hg/msg/MotorState.motorstate field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motorstate: UInt32 = 0
  /// @brief Original unitree_hg/msg/MotorState.reserve field.
  /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 4)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_q = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q.bitPattern), 4)))
    if !field_q.isFinite {
      cursor.failed = true
    }
    field_dq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_dq.bitPattern), 4)))
    if !field_dq.isFinite {
      cursor.failed = true
    }
    field_ddq = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ddq.bitPattern), 4)))
    if !field_ddq.isFinite {
      cursor.failed = true
    }
    field_tau_est = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tau_est.bitPattern), 4)))
    if !field_tau_est.isFinite {
      cursor.failed = true
    }
    let count5 = 2
    if cursor.writing && field_temperature.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_temperature = Array(repeating: 0, count: count5)
    }
    for index in 0..<count5 {
      field_temperature[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_temperature[index])), 2)
        ))
    }
    field_vol = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_vol.bitPattern), 4)))
    if !field_vol.isFinite {
      cursor.failed = true
    }
    let count7 = 2
    if cursor.writing && field_sensor.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_sensor = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_sensor[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_sensor[index]), 4))
    }
    field_motorstate = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_motorstate), 4))
    let count9 = 4
    if cursor.writing && field_reserve.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/MotorState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 53),
      limit: 53, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/MotorState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 53 || bytes.count > 53 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/PressSensorState value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 104..104 bytes.
public struct Ros2Unitree_hgMsgPressSensorState {
  /// @brief Original unitree_hg/msg/PressSensorState.pressure field.
  /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_pressure: [Float] = Array(repeating: 0, count: 12)
  /// @brief Original unitree_hg/msg/PressSensorState.temperature field.
  /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_temperature: [Float] = Array(repeating: 0, count: 12)
  /// @brief Original unitree_hg/msg/PressSensorState.lost field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lost: UInt32 = 0
  /// @brief Original unitree_hg/msg/PressSensorState.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 12
    if cursor.writing && field_pressure.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_pressure = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_pressure[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_pressure[index].bitPattern), 4)))
      if !field_pressure[index].isFinite {
        cursor.failed = true
      }
    }
    let count1 = 12
    if cursor.writing && field_temperature.count != 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_temperature = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_temperature[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_temperature[index].bitPattern), 4)))
      if !field_temperature[index].isFinite {
        cursor.failed = true
      }
    }
    field_lost = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_lost), 4))
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
  }
  /// @brief Encode every complete unitree_hg/msg/PressSensorState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 104),
      limit: 104, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/PressSensorState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 104 || bytes.count > 104 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/IMUState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 54..54 bytes.
public struct Ros2Unitree_hgMsgIMUState {
  /// @brief Original unitree_hg/msg/IMUState.quaternion field.
  /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_quaternion: [Float] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_hg/msg/IMUState.gyroscope field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_gyroscope: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_hg/msg/IMUState.accelerometer field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerometer: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_hg/msg/IMUState.rpy field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rpy: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_hg/msg/IMUState.temperature field.
  /// @details Original type int16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Int16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 4
    if cursor.writing && field_quaternion.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_quaternion = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_quaternion[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_quaternion[index].bitPattern), 4)))
      if !field_quaternion[index].isFinite {
        cursor.failed = true
      }
    }
    let count1 = 3
    if cursor.writing && field_gyroscope.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_gyroscope = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_gyroscope[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_gyroscope[index].bitPattern), 4)))
      if !field_gyroscope[index].isFinite {
        cursor.failed = true
      }
    }
    let count2 = 3
    if cursor.writing && field_accelerometer.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_accelerometer = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_accelerometer[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_accelerometer[index].bitPattern), 4)))
      if !field_accelerometer[index].isFinite {
        cursor.failed = true
      }
    }
    let count3 = 3
    if cursor.writing && field_rpy.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_rpy = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_rpy[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_rpy[index].bitPattern), 4)))
      if !field_rpy[index].isFinite {
        cursor.failed = true
      }
    }
    field_temperature = Int16(
      bitPattern: UInt16(
        truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_temperature)), 2)))
  }
  /// @brief Encode every complete unitree_hg/msg/IMUState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 54),
      limit: 54, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/IMUState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 54 || bytes.count > 54 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/HandState value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 94..5118 bytes.
public struct Ros2Unitree_hgMsgHandState {
  /// @brief Original unitree_hg/msg/HandState.motor_state field.
  /// @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_state: [Ros2Unitree_hgMsgMotorState] = []
  /// @brief Original unitree_hg/msg/HandState.press_sensor_state field.
  /// @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_press_sensor_state: [Ros2Unitree_hgMsgPressSensorState] = []
  /// @brief Original unitree_hg/msg/HandState.imu_state field.
  /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu_state: Ros2Unitree_hgMsgIMUState = Ros2Unitree_hgMsgIMUState()
  /// @brief Original unitree_hg/msg/HandState.power_v field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_v: Float = 0
  /// @brief Original unitree_hg/msg/HandState.power_a field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_a: Float = 0
  /// @brief Original unitree_hg/msg/HandState.system_v field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_system_v: Float = 0
  /// @brief Original unitree_hg/msg/HandState.device_v field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_device_v: Float = 0
  /// @brief Original unitree_hg/msg/HandState.error field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_error: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_hg/msg/HandState.reserve field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = Int(cursor.number(UInt64(field_motor_state.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_state = Array(repeating: Ros2Unitree_hgMsgMotorState(), count: count0)
    }
    for index in 0..<count0 {
      field_motor_state[index].fields(&cursor)
    }
    let count1 = Int(cursor.number(UInt64(field_press_sensor_state.count), 4))
    if count1 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_press_sensor_state = Array(
        repeating: Ros2Unitree_hgMsgPressSensorState(), count: count1)
    }
    for index in 0..<count1 {
      field_press_sensor_state[index].fields(&cursor)
    }
    field_imu_state.fields(&cursor)
    field_power_v = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_power_v.bitPattern), 4)))
    if !field_power_v.isFinite {
      cursor.failed = true
    }
    field_power_a = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_power_a.bitPattern), 4)))
    if !field_power_a.isFinite {
      cursor.failed = true
    }
    field_system_v = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_system_v.bitPattern), 4)))
    if !field_system_v.isFinite {
      cursor.failed = true
    }
    field_device_v = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_device_v.bitPattern), 4)))
    if !field_device_v.isFinite {
      cursor.failed = true
    }
    let count7 = 2
    if cursor.writing && field_error.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_error = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_error[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error[index]), 4))
    }
    let count8 = 2
    if cursor.writing && field_reserve.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count8)
    }
    for index in 0..<count8 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/HandState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 5118),
      limit: 5118, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/HandState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 94 || bytes.count > 5118 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/LowCmd value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 897..897 bytes.
public struct Ros2Unitree_hgMsgLowCmd {
  /// @brief Original unitree_hg/msg/LowCmd.mode_pr field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode_pr: UInt8 = 0
  /// @brief Original unitree_hg/msg/LowCmd.mode_machine field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode_machine: UInt8 = 0
  /// @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
  /// @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_cmd: [Ros2Unitree_hgMsgMotorCmd] = Array(
    repeating: Ros2Unitree_hgMsgMotorCmd(), count: 35)
  /// @brief Original unitree_hg/msg/LowCmd.reserve field.
  /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_hg/msg/LowCmd.crc field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_crc: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_mode_pr = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode_pr), 1))
    field_mode_machine = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode_machine), 1))
    let count2 = 35
    if cursor.writing && field_motor_cmd.count != 35 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_cmd = Array(repeating: Ros2Unitree_hgMsgMotorCmd(), count: count2)
    }
    for index in 0..<count2 {
      field_motor_cmd[index].fields(&cursor)
    }
    let count3 = 4
    if cursor.writing && field_reserve.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_hg/msg/LowCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 897),
      limit: 897, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/LowCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 897 || bytes.count > 897 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/LowState value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 1983..1983 bytes.
public struct Ros2Unitree_hgMsgLowState {
  /// @brief Original unitree_hg/msg/LowState.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_hg/msg/LowState.mode_pr field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode_pr: UInt8 = 0
  /// @brief Original unitree_hg/msg/LowState.mode_machine field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode_machine: UInt8 = 0
  /// @brief Original unitree_hg/msg/LowState.tick field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tick: UInt32 = 0
  /// @brief Original unitree_hg/msg/LowState.imu_state field.
  /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu_state: Ros2Unitree_hgMsgIMUState = Ros2Unitree_hgMsgIMUState()
  /// @brief Original unitree_hg/msg/LowState.motor_state field.
  /// @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_state: [Ros2Unitree_hgMsgMotorState] = Array(
    repeating: Ros2Unitree_hgMsgMotorState(), count: 35)
  /// @brief Original unitree_hg/msg/LowState.wireless_remote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wireless_remote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_hg/msg/LowState.reserve field.
  /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_reserve: [UInt32] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_hg/msg/LowState.crc field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_crc: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 2
    if cursor.writing && field_version.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_version = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_version[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_version[index]), 4))
    }
    field_mode_pr = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode_pr), 1))
    field_mode_machine = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode_machine), 1))
    field_tick = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tick), 4))
    field_imu_state.fields(&cursor)
    let count5 = 35
    if cursor.writing && field_motor_state.count != 35 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_state = Array(repeating: Ros2Unitree_hgMsgMotorState(), count: count5)
    }
    for index in 0..<count5 {
      field_motor_state[index].fields(&cursor)
    }
    let count6 = 40
    if cursor.writing && field_wireless_remote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wireless_remote = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_wireless_remote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wireless_remote[index]), 1))
    }
    let count7 = 4
    if cursor.writing && field_reserve.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_reserve = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_reserve[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_reserve[index]), 4))
    }
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_hg/msg/LowState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1983),
      limit: 1983, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/LowState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1983 || bytes.count > 1983 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}

/// @brief Complete original unitree_hg/msg/MainBoardState value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 72..72 bytes.
public struct Ros2Unitree_hgMsgMainBoardState {
  /// @brief Original unitree_hg/msg/MainBoardState.fan_state field.
  /// @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_fan_state: [UInt16] = Array(repeating: 0, count: 6)
  /// @brief Original unitree_hg/msg/MainBoardState.temperature field.
  /// @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_temperature: [Int16] = Array(repeating: 0, count: 6)
  /// @brief Original unitree_hg/msg/MainBoardState.value field.
  /// @details Original type float32. Shape array; bound/count 6 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_value: [Float] = Array(repeating: 0, count: 6)
  /// @brief Original unitree_hg/msg/MainBoardState.state field.
  /// @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_state: [UInt32] = Array(repeating: 0, count: 6)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    let count0 = 6
    if cursor.writing && field_fan_state.count != 6 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_fan_state = Array(repeating: 0, count: count0)
    }
    for index in 0..<count0 {
      field_fan_state[index] = UInt16(
        truncatingIfNeeded: cursor.number(UInt64(field_fan_state[index]), 2))
    }
    let count1 = 6
    if cursor.writing && field_temperature.count != 6 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_temperature = Array(repeating: 0, count: count1)
    }
    for index in 0..<count1 {
      field_temperature[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_temperature[index])), 2)
        ))
    }
    let count2 = 6
    if cursor.writing && field_value.count != 6 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_value = Array(repeating: 0, count: count2)
    }
    for index in 0..<count2 {
      field_value[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_value[index].bitPattern), 4)))
      if !field_value[index].isFinite {
        cursor.failed = true
      }
    }
    let count3 = 6
    if cursor.writing && field_state.count != 6 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_state = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_state[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_state[index]), 4))
    }
  }
  /// @brief Encode every complete unitree_hg/msg/MainBoardState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 72),
      limit: 72, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_hg/msg/MainBoardState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 72 || bytes.count > 72 {
      return (nil, 22)
    }
    var cursor = UnitreeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit {
      return (nil, 22)
    }
    return (value, 0)
  }
}
