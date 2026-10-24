/// @file Records.swift
/// @brief Complete original Unitree ROS 1 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original unitree_legged_msgs/BmsCmd value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros1Unitree_legged_msgsBmsCmd {
  /// @brief Original unitree_legged_msgs/BmsCmd.off field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_off: UInt8 = 0
  /// @brief Original unitree_legged_msgs/BmsCmd.reserve field.
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
  /// @brief Encode every complete unitree_legged_msgs/BmsCmd field.
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
  /// @brief Decode exactly one complete unitree_legged_msgs/BmsCmd.
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

/// @brief Complete original unitree_legged_msgs/BmsState value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 34..34 bytes.
public struct Ros1Unitree_legged_msgsBmsState {
  /// @brief Original unitree_legged_msgs/BmsState.version_h field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_h: UInt8 = 0
  /// @brief Original unitree_legged_msgs/BmsState.version_l field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_version_l: UInt8 = 0
  /// @brief Original unitree_legged_msgs/BmsState.bms_status field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bms_status: UInt8 = 0
  /// @brief Original unitree_legged_msgs/BmsState.SOC field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_SOC: UInt8 = 0
  /// @brief Original unitree_legged_msgs/BmsState.current field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Int32 = 0
  /// @brief Original unitree_legged_msgs/BmsState.cycle field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cycle: UInt16 = 0
  /// @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
  /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_BQ_NTC: [Int8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
  /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_MCU_NTC: [Int8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/BmsState.cell_vol field.
  /// @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_cell_vol: [UInt16] = Array(repeating: 0, count: 10)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_version_h = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_h), 1))
    field_version_l = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_version_l), 1))
    field_bms_status = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_bms_status), 1))
    field_SOC = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_SOC), 1))
    field_current = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_current)), 4)))
    field_cycle = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_cycle), 2))
    let count6 = 2
    if cursor.writing && field_BQ_NTC.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_BQ_NTC = Array(repeating: 0, count: count6)
    }
    for index in 0..<count6 {
      field_BQ_NTC[index] = Int8(
        bitPattern: UInt8(
          truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_BQ_NTC[index])), 1)))
    }
    let count7 = 2
    if cursor.writing && field_MCU_NTC.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_MCU_NTC = Array(repeating: 0, count: count7)
    }
    for index in 0..<count7 {
      field_MCU_NTC[index] = Int8(
        bitPattern: UInt8(
          truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_MCU_NTC[index])), 1))
      )
    }
    let count8 = 10
    if cursor.writing && field_cell_vol.count != 10 || cursor.failed {
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
  /// @brief Encode every complete unitree_legged_msgs/BmsState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 34),
      limit: 34, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/BmsState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 34 || bytes.count > 34 {
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

/// @brief Complete original unitree_legged_msgs/Cartesian value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..12 bytes.
public struct Ros1Unitree_legged_msgsCartesian {
  /// @brief Original unitree_legged_msgs/Cartesian.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original unitree_legged_msgs/Cartesian.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original unitree_legged_msgs/Cartesian.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
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
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite {
      cursor.failed = true
    }
  }
  /// @brief Encode every complete unitree_legged_msgs/Cartesian field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 12),
      limit: 12, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/Cartesian.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 12 {
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

/// @brief Complete original unitree_legged_msgs/LED value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 3..3 bytes.
public struct Ros1Unitree_legged_msgsLED {
  /// @brief Original unitree_legged_msgs/LED.r field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LED.g field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_g: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LED.b field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_b: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout UnitreeCursor) {
    field_r = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_r), 1))
    field_g = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_g), 1))
    field_b = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_b), 1))
  }
  /// @brief Encode every complete unitree_legged_msgs/LED field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 3),
      limit: 3, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/LED.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 3 || bytes.count > 3 {
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

/// @brief Complete original unitree_legged_msgs/HighCmd value.
/// @details Retain all 20 fields and 0 constants in source order. Canonical extent 129..129 bytes.
public struct Ros1Unitree_legged_msgsHighCmd {
  /// @brief Original unitree_legged_msgs/HighCmd.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_levelFlag: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frameReserve: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.SN field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_SN: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighCmd.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandWidth: UInt16 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.gaitType field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gaitType: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speedLevel: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_footRaiseHeight: Float = 0
  /// @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bodyHeight: Float = 0
  /// @brief Original unitree_legged_msgs/HighCmd.position field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighCmd.euler field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_euler: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/HighCmd.velocity field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yawSpeed: Float = 0
  /// @brief Original unitree_legged_msgs/HighCmd.bms field.
  /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_bms: Ros1Unitree_legged_msgsBmsCmd = Ros1Unitree_legged_msgsBmsCmd()
  /// @brief Original unitree_legged_msgs/HighCmd.led field.
  /// @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_led: [Ros1Unitree_legged_msgsLED] = Array(
    repeating: Ros1Unitree_legged_msgsLED(), count: 4)
  /// @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wirelessRemote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_legged_msgs/HighCmd.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_legged_msgs/HighCmd.crc field.
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
    field_levelFlag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_levelFlag), 1))
    field_frameReserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frameReserve), 1))
    let count3 = 2
    if cursor.writing && field_SN.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_SN = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_SN[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_SN[index]), 4))
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
    field_bandWidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandWidth), 2))
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_gaitType = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_gaitType), 1))
    field_speedLevel = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_speedLevel), 1))
    field_footRaiseHeight = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_footRaiseHeight.bitPattern), 4)))
    if !field_footRaiseHeight.isFinite {
      cursor.failed = true
    }
    field_bodyHeight = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_bodyHeight.bitPattern), 4)))
    if !field_bodyHeight.isFinite {
      cursor.failed = true
    }
    let count11 = 2
    if cursor.writing && field_position.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_position = Array(repeating: 0, count: count11)
    }
    for index in 0..<count11 {
      field_position[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 4)))
      if !field_position[index].isFinite {
        cursor.failed = true
      }
    }
    let count12 = 3
    if cursor.writing && field_euler.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_euler = Array(repeating: 0, count: count12)
    }
    for index in 0..<count12 {
      field_euler[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_euler[index].bitPattern), 4)))
      if !field_euler[index].isFinite {
        cursor.failed = true
      }
    }
    let count13 = 2
    if cursor.writing && field_velocity.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocity = Array(repeating: 0, count: count13)
    }
    for index in 0..<count13 {
      field_velocity[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 4)))
      if !field_velocity[index].isFinite {
        cursor.failed = true
      }
    }
    field_yawSpeed = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yawSpeed.bitPattern), 4)))
    if !field_yawSpeed.isFinite {
      cursor.failed = true
    }
    field_bms.fields(&cursor)
    let count16 = 4
    if cursor.writing && field_led.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_led = Array(repeating: Ros1Unitree_legged_msgsLED(), count: count16)
    }
    for index in 0..<count16 {
      field_led[index].fields(&cursor)
    }
    let count17 = 40
    if cursor.writing && field_wirelessRemote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wirelessRemote = Array(repeating: 0, count: count17)
    }
    for index in 0..<count17 {
      field_wirelessRemote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wirelessRemote[index]), 1))
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_legged_msgs/HighCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 129),
      limit: 129, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/HighCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 129 || bytes.count > 129 {
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

/// @brief Complete original unitree_legged_msgs/IMU value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 53..53 bytes.
public struct Ros1Unitree_legged_msgsIMU {
  /// @brief Original unitree_legged_msgs/IMU.quaternion field.
  /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_quaternion: [Float] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/IMU.gyroscope field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_gyroscope: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/IMU.accelerometer field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerometer: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/IMU.rpy field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rpy: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/IMU.temperature field.
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
  /// @brief Encode every complete unitree_legged_msgs/IMU field.
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
  /// @brief Decode exactly one complete unitree_legged_msgs/IMU.
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

/// @brief Complete original unitree_legged_msgs/MotorState value.
/// @details Retain all 10 fields and 0 constants in source order. Canonical extent 38..38 bytes.
public struct Ros1Unitree_legged_msgsMotorState {
  /// @brief Original unitree_legged_msgs/MotorState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_legged_msgs/MotorState.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.ddq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ddq: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.tauEst field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tauEst: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.q_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q_raw: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.dq_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq_raw: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ddq_raw: Float = 0
  /// @brief Original unitree_legged_msgs/MotorState.temperature field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Int8 = 0
  /// @brief Original unitree_legged_msgs/MotorState.reserve field.
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
    field_tauEst = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tauEst.bitPattern), 4)))
    if !field_tauEst.isFinite {
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
    let count9 = 2
    if cursor.writing && field_reserve.count != 2 || cursor.failed {
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
  /// @brief Encode every complete unitree_legged_msgs/MotorState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 38),
      limit: 38, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/MotorState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 38 || bytes.count > 38 {
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

/// @brief Complete original unitree_legged_msgs/HighState value.
/// @details Retain all 25 fields and 0 constants in source order. Canonical extent 1087..1087
/// bytes.
public struct Ros1Unitree_legged_msgsHighState {
  /// @brief Original unitree_legged_msgs/HighState.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighState.levelFlag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_levelFlag: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighState.frameReserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frameReserve: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighState.SN field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_SN: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighState.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/HighState.bandWidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandWidth: UInt16 = 0
  /// @brief Original unitree_legged_msgs/HighState.imu field.
  /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu: Ros1Unitree_legged_msgsIMU = Ros1Unitree_legged_msgsIMU()
  /// @brief Original unitree_legged_msgs/HighState.motorState field.
  /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motorState: [Ros1Unitree_legged_msgsMotorState] = Array(
    repeating: Ros1Unitree_legged_msgsMotorState(), count: 20)
  /// @brief Original unitree_legged_msgs/HighState.bms field.
  /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_bms: Ros1Unitree_legged_msgsBmsState = Ros1Unitree_legged_msgsBmsState()
  /// @brief Original unitree_legged_msgs/HighState.footForce field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_footForce: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/HighState.footForceEst field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_footForceEst: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/HighState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighState.progress field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_progress: Float = 0
  /// @brief Original unitree_legged_msgs/HighState.gaitType field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gaitType: UInt8 = 0
  /// @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_footRaiseHeight: Float = 0
  /// @brief Original unitree_legged_msgs/HighState.position field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/HighState.bodyHeight field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bodyHeight: Float = 0
  /// @brief Original unitree_legged_msgs/HighState.velocity field.
  /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Float] = Array(repeating: 0, count: 3)
  /// @brief Original unitree_legged_msgs/HighState.yawSpeed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_yawSpeed: Float = 0
  /// @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
  /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rangeObstacle: [Float] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
  /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_footPosition2Body: [Ros1Unitree_legged_msgsCartesian] = Array(
    repeating: Ros1Unitree_legged_msgsCartesian(), count: 4)
  /// @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
  /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_footSpeed2Body: [Ros1Unitree_legged_msgsCartesian] = Array(
    repeating: Ros1Unitree_legged_msgsCartesian(), count: 4)
  /// @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wirelessRemote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_legged_msgs/HighState.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_legged_msgs/HighState.crc field.
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
    field_levelFlag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_levelFlag), 1))
    field_frameReserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frameReserve), 1))
    let count3 = 2
    if cursor.writing && field_SN.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_SN = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_SN[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_SN[index]), 4))
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
    field_bandWidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandWidth), 2))
    field_imu.fields(&cursor)
    let count7 = 20
    if cursor.writing && field_motorState.count != 20 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motorState = Array(repeating: Ros1Unitree_legged_msgsMotorState(), count: count7)
    }
    for index in 0..<count7 {
      field_motorState[index].fields(&cursor)
    }
    field_bms.fields(&cursor)
    let count9 = 4
    if cursor.writing && field_footForce.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footForce = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_footForce[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_footForce[index])), 2)))
    }
    let count10 = 4
    if cursor.writing && field_footForceEst.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footForceEst = Array(repeating: 0, count: count10)
    }
    for index in 0..<count10 {
      field_footForceEst[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(
            UInt64(UInt16(bitPattern: field_footForceEst[index])), 2)))
    }
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_progress = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_progress.bitPattern), 4)))
    if !field_progress.isFinite {
      cursor.failed = true
    }
    field_gaitType = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_gaitType), 1))
    field_footRaiseHeight = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_footRaiseHeight.bitPattern), 4)))
    if !field_footRaiseHeight.isFinite {
      cursor.failed = true
    }
    let count15 = 3
    if cursor.writing && field_position.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_position = Array(repeating: 0, count: count15)
    }
    for index in 0..<count15 {
      field_position[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 4)))
      if !field_position[index].isFinite {
        cursor.failed = true
      }
    }
    field_bodyHeight = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_bodyHeight.bitPattern), 4)))
    if !field_bodyHeight.isFinite {
      cursor.failed = true
    }
    let count17 = 3
    if cursor.writing && field_velocity.count != 3 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocity = Array(repeating: 0, count: count17)
    }
    for index in 0..<count17 {
      field_velocity[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 4)))
      if !field_velocity[index].isFinite {
        cursor.failed = true
      }
    }
    field_yawSpeed = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_yawSpeed.bitPattern), 4)))
    if !field_yawSpeed.isFinite {
      cursor.failed = true
    }
    let count19 = 4
    if cursor.writing && field_rangeObstacle.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_rangeObstacle = Array(repeating: 0, count: count19)
    }
    for index in 0..<count19 {
      field_rangeObstacle[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_rangeObstacle[index].bitPattern), 4)))
      if !field_rangeObstacle[index].isFinite {
        cursor.failed = true
      }
    }
    let count20 = 4
    if cursor.writing && field_footPosition2Body.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footPosition2Body = Array(repeating: Ros1Unitree_legged_msgsCartesian(), count: count20)
    }
    for index in 0..<count20 {
      field_footPosition2Body[index].fields(&cursor)
    }
    let count21 = 4
    if cursor.writing && field_footSpeed2Body.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footSpeed2Body = Array(repeating: Ros1Unitree_legged_msgsCartesian(), count: count21)
    }
    for index in 0..<count21 {
      field_footSpeed2Body[index].fields(&cursor)
    }
    let count22 = 40
    if cursor.writing && field_wirelessRemote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wirelessRemote = Array(repeating: 0, count: count22)
    }
    for index in 0..<count22 {
      field_wirelessRemote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wirelessRemote[index]), 1))
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_legged_msgs/HighState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1087),
      limit: 1087, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/HighState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1087 || bytes.count > 1087 {
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

/// @brief Complete original unitree_legged_msgs/MotorCmd value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 33..33 bytes.
public struct Ros1Unitree_legged_msgsMotorCmd {
  /// @brief Original unitree_legged_msgs/MotorCmd.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.q field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q: Float = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.dq field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_dq: Float = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.tau field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tau: Float = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.Kp field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Kp: Float = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.Kd field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Kd: Float = 0
  /// @brief Original unitree_legged_msgs/MotorCmd.reserve field.
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
    field_Kp = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_Kp.bitPattern), 4)))
    if !field_Kp.isFinite {
      cursor.failed = true
    }
    field_Kd = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_Kd.bitPattern), 4)))
    if !field_Kd.isFinite {
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
  /// @brief Encode every complete unitree_legged_msgs/MotorCmd field.
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
  /// @brief Decode exactly one complete unitree_legged_msgs/MotorCmd.
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

/// @brief Complete original unitree_legged_msgs/LowCmd value.
/// @details Retain all 11 fields and 0 constants in source order. Canonical extent 734..734 bytes.
public struct Ros1Unitree_legged_msgsLowCmd {
  /// @brief Original unitree_legged_msgs/LowCmd.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_levelFlag: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frameReserve: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LowCmd.SN field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_SN: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowCmd.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandWidth: UInt16 = 0
  /// @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
  /// @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motorCmd: [Ros1Unitree_legged_msgsMotorCmd] = Array(
    repeating: Ros1Unitree_legged_msgsMotorCmd(), count: 20)
  /// @brief Original unitree_legged_msgs/LowCmd.bms field.
  /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_bms: Ros1Unitree_legged_msgsBmsCmd = Ros1Unitree_legged_msgsBmsCmd()
  /// @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wirelessRemote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_legged_msgs/LowCmd.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_legged_msgs/LowCmd.crc field.
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
    field_levelFlag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_levelFlag), 1))
    field_frameReserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frameReserve), 1))
    let count3 = 2
    if cursor.writing && field_SN.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_SN = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_SN[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_SN[index]), 4))
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
    field_bandWidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandWidth), 2))
    let count6 = 20
    if cursor.writing && field_motorCmd.count != 20 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motorCmd = Array(repeating: Ros1Unitree_legged_msgsMotorCmd(), count: count6)
    }
    for index in 0..<count6 {
      field_motorCmd[index].fields(&cursor)
    }
    field_bms.fields(&cursor)
    let count8 = 40
    if cursor.writing && field_wirelessRemote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wirelessRemote = Array(repeating: 0, count: count8)
    }
    for index in 0..<count8 {
      field_wirelessRemote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wirelessRemote[index]), 1))
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
  }
  /// @brief Encode every complete unitree_legged_msgs/LowCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 734),
      limit: 734, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/LowCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 734 || bytes.count > 734 {
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

/// @brief Complete original unitree_legged_msgs/LowState value.
/// @details Retain all 20 fields and 0 constants in source order. Canonical extent 1069..1069
/// bytes.
public struct Ros1Unitree_legged_msgsLowState {
  /// @brief Original unitree_legged_msgs/LowState.head field.
  /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_head: [UInt8] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowState.levelFlag field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_levelFlag: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LowState.frameReserve field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frameReserve: UInt8 = 0
  /// @brief Original unitree_legged_msgs/LowState.SN field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_SN: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowState.version field.
  /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_version: [UInt32] = Array(repeating: 0, count: 2)
  /// @brief Original unitree_legged_msgs/LowState.bandWidth field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bandWidth: UInt16 = 0
  /// @brief Original unitree_legged_msgs/LowState.imu field.
  /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_imu: Ros1Unitree_legged_msgsIMU = Ros1Unitree_legged_msgsIMU()
  /// @brief Original unitree_legged_msgs/LowState.motorState field.
  /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motorState: [Ros1Unitree_legged_msgsMotorState] = Array(
    repeating: Ros1Unitree_legged_msgsMotorState(), count: 20)
  /// @brief Original unitree_legged_msgs/LowState.bms field.
  /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_bms: Ros1Unitree_legged_msgsBmsState = Ros1Unitree_legged_msgsBmsState()
  /// @brief Original unitree_legged_msgs/LowState.footForce field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_footForce: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/LowState.footForceEst field.
  /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_footForceEst: [Int16] = Array(repeating: 0, count: 4)
  /// @brief Original unitree_legged_msgs/LowState.tick field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tick: UInt32 = 0
  /// @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
  /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wirelessRemote: [UInt8] = Array(repeating: 0, count: 40)
  /// @brief Original unitree_legged_msgs/LowState.reserve field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_reserve: UInt32 = 0
  /// @brief Original unitree_legged_msgs/LowState.crc field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_crc: UInt32 = 0
  /// @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
  /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_eeForceRaw: [Ros1Unitree_legged_msgsCartesian] = Array(
    repeating: Ros1Unitree_legged_msgsCartesian(), count: 4)
  /// @brief Original unitree_legged_msgs/LowState.eeForce field.
  /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_eeForce: [Ros1Unitree_legged_msgsCartesian] = Array(
    repeating: Ros1Unitree_legged_msgsCartesian(), count: 4)
  /// @brief Original unitree_legged_msgs/LowState.position field.
  /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_position: Ros1Unitree_legged_msgsCartesian = Ros1Unitree_legged_msgsCartesian()
  /// @brief Original unitree_legged_msgs/LowState.velocity field.
  /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_velocity: Ros1Unitree_legged_msgsCartesian = Ros1Unitree_legged_msgsCartesian()
  /// @brief Original unitree_legged_msgs/LowState.velocity_w field.
  /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_velocity_w: Ros1Unitree_legged_msgsCartesian = Ros1Unitree_legged_msgsCartesian()
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
    field_levelFlag = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_levelFlag), 1))
    field_frameReserve = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frameReserve), 1))
    let count3 = 2
    if cursor.writing && field_SN.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_SN = Array(repeating: 0, count: count3)
    }
    for index in 0..<count3 {
      field_SN[index] = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_SN[index]), 4))
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
    field_bandWidth = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_bandWidth), 2))
    field_imu.fields(&cursor)
    let count7 = 20
    if cursor.writing && field_motorState.count != 20 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motorState = Array(repeating: Ros1Unitree_legged_msgsMotorState(), count: count7)
    }
    for index in 0..<count7 {
      field_motorState[index].fields(&cursor)
    }
    field_bms.fields(&cursor)
    let count9 = 4
    if cursor.writing && field_footForce.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footForce = Array(repeating: 0, count: count9)
    }
    for index in 0..<count9 {
      field_footForce[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_footForce[index])), 2)))
    }
    let count10 = 4
    if cursor.writing && field_footForceEst.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_footForceEst = Array(repeating: 0, count: count10)
    }
    for index in 0..<count10 {
      field_footForceEst[index] = Int16(
        bitPattern: UInt16(
          truncatingIfNeeded: cursor.number(
            UInt64(UInt16(bitPattern: field_footForceEst[index])), 2)))
    }
    field_tick = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tick), 4))
    let count12 = 40
    if cursor.writing && field_wirelessRemote.count != 40 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_wirelessRemote = Array(repeating: 0, count: count12)
    }
    for index in 0..<count12 {
      field_wirelessRemote[index] = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(field_wirelessRemote[index]), 1))
    }
    field_reserve = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_reserve), 4))
    field_crc = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_crc), 4))
    let count15 = 4
    if cursor.writing && field_eeForceRaw.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_eeForceRaw = Array(repeating: Ros1Unitree_legged_msgsCartesian(), count: count15)
    }
    for index in 0..<count15 {
      field_eeForceRaw[index].fields(&cursor)
    }
    let count16 = 4
    if cursor.writing && field_eeForce.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_eeForce = Array(repeating: Ros1Unitree_legged_msgsCartesian(), count: count16)
    }
    for index in 0..<count16 {
      field_eeForce[index].fields(&cursor)
    }
    field_position.fields(&cursor)
    field_velocity.fields(&cursor)
    field_velocity_w.fields(&cursor)
  }
  /// @brief Encode every complete unitree_legged_msgs/LowState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = UnitreeCursor(
      bytes: [UInt8](repeating: 0, count: 1069),
      limit: 1069, writing: true)
    fields(&cursor)
    if cursor.failed {
      return ([], 22)
    }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete unitree_legged_msgs/LowState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1069 || bytes.count > 1069 {
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
