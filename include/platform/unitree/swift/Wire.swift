/// @file Wire.swift
/// @brief Traverse complete canonical Unitree values with owned Swift arrays.
/// @details Pure local codecs retain exact scalar bits and strict UTF-8. They
/// create no native ROS object, capability, callback, task or implicit grant.

/// @brief Validate canonical Unicode scalar encodings without NUL.
/// @param bytes Immutable UTF-8 bytes.
/// @return True only for strict UTF-8 text.
public func unitreeUTF8(_ bytes: [UInt8]) -> Bool {
  var remaining: UInt32 = 0
  var scalar: UInt32 = 0
  var minimum: UInt32 = 0
  for byte in bytes {
    if remaining == 0 {
      if byte == 0 {
        return false
      }
      if byte < 128 {
        continue
      }
      if byte >= 194 && byte <= 223 {
        remaining = 1
        scalar = UInt32(byte & 31)
        minimum = 128
      } else if byte >= 224 && byte <= 239 {
        remaining = 2
        scalar = UInt32(byte & 15)
        minimum = 2048
      } else if byte >= 240 && byte <= 244 {
        remaining = 3
        scalar = UInt32(byte & 7)
        minimum = 65536
      } else {
        return false
      }
    } else {
      if byte & 192 != 128 {
        return false
      }
      scalar = (scalar << 6) | UInt32(byte & 63)
      remaining -= 1
      if remaining == 0
        && (scalar < minimum || scalar > 0x10ffff || (scalar >= 0xd800 && scalar <= 0xdfff))
      {
        return false
      }
    }
  }
  return remaining == 0
}

/// @brief Own an exclusive bounded canonical traversal buffer.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
struct UnitreeCursor {
  /// @brief Independently owned canonical traversal storage.
  var bytes: [UInt8]
  /// @brief Complete logical input/output byte extent, bounded by the owned array.
  var limit: Int
  /// @brief Consumed or initialized prefix, constrained to limit.
  var at = 0
  /// @brief First canonical refusal; all partial values become unusable.
  var failed = false
  /// @brief True encodes; false decodes into independently owned fields.
  var writing = false
  /// @brief Traverse one exact-width little-endian scalar bit pattern.
  /// @details No host action occurs; failed composite values and prefixes remain unusable.
  /// @param original Original unscaled scalar bits.
  /// @param size Exact original scalar byte width.
  /// @return Original or decoded bits; failed invalidates the whole record.
  mutating func number(_ original: UInt64, _ size: Int) -> UInt64 {
    if failed || size > limit - at {
      failed = true
      return 0
    }
    var value = writing ? original : 0
    for index in 0..<size {
      if writing {
        bytes[at] = UInt8(truncatingIfNeeded: value >> (index * 8))
      } else {
        value |= UInt64(bytes[at]) << (index * 8)
      }
      at += 1
    }
    return value
  }
  /// @brief Traverse one exact canonical zero/one flag.
  /// @details No host action occurs; failed composite values and prefixes remain unusable.
  /// @param original Original native boolean flag.
  /// @return Original or decoded flag; failed invalidates the whole record.
  mutating func boolean(_ original: Bool) -> Bool {
    let raw = number(original ? 1 : 0, 1)
    if raw > 1 {
      failed = true
    }
    return raw != 0
  }
  /// @brief Traverse one finite independently owned Unicode string.
  /// @details No host action occurs; failed composite values and prefixes remain unusable.
  /// @param original Complete independently owned original value; usable only after whole-record success.
  /// @param capacity Inclusive original UTF-8 byte bound.
  /// @return Independent whole text or unusable empty value after failure.
  mutating func text(_ original: [UInt8], _ capacity: Int) -> [UInt8] {
    let size = Int(number(UInt64(original.count), 4))
    if failed || size > capacity || size > limit - at {
      failed = true
      return []
    }
    let value = writing ? original : Array(bytes[at..<(at + size)])
    if !unitreeUTF8(value) {
      failed = true
      return []
    }
    if writing {
      for index in 0..<size {
        bytes[at + index] = value[index]
      }
    }
    at += size
    return value
  }
}
