/// @file CoreObservation.swift
/// @brief Own complete native Unitree observations in a genuine Embedded Swift command.
/// @details Swift owns every array, record, handle decision and cleanup result.
/// The imported scalar adapter owns no capability and interprets no vendor field.
/// Fatal traps or allocation failures cannot promise ordinary acquired-owner cleanup.

/// @brief Own one complete original record and independent observation facts.
/// @details Value and wire require responsePresent. Ordinary copies create no native
/// authority; Swift array copy-on-write storage retains its genuine owned lifetime.
public struct UnitreeObservation<Value> {
  /// @brief First original validation, transport or complete-codec refusal.
  public var primary: UInt32 = 0
  /// @brief Independent original acquired-owner close status.
  public var cleanup: UInt32 = 0
  /// @brief True only after the acquired owner's single close attempt.
  public var cleanupPresent = false
  /// @brief Original final event-poll status before complete decoding.
  public var rpc: UInt32 = 0
  /// @brief True only after an actual event poll returned.
  public var rpcPresent = false
  /// @brief Original full-width length slot; maximum preserves an unwritten slot.
  public var length: UInt64 = UInt64.max
  /// @brief Actual event polls, including idle results.
  public var polls: UInt32 = 0
  /// @brief True only after complete decoding and complete re-encoding.
  public var responsePresent = false
  /// @brief Entire independently owned original record; nil on refusal.
  public var value: Value? = nil
  /// @brief Complete independently owned canonical bytes; empty on refusal.
  public var wire: [UInt8] = []
  /// @brief Construct absent local storage without acquiring native authority.
  public init() {}
}

/// @brief Receive one entire original record through one retained native owner.
/// @param aliasBytes Borrowed strict UTF-8 exact-type alias, 1..255 bytes.
/// @param capacity Exact finite maximum canonical extent of the selected original record.
/// @param attempts Finite total event-poll budget in 1..250.
/// @param decode Complete transactional original source-language decoder.
/// @param encode Complete original source-language encoder over the accepted value.
/// @return Entire owned value and independent primary, poll, length and close facts.
/// @details Only idle 11 permits another poll, after a real twenty-millisecond
/// WASI wait. Every ordinary successful acquisition closes once before return.
public func unitreeReceive<Value>(
  _ aliasBytes: [UInt8],
  _ capacity: Int,
  _ attempts: UInt32,
  _ decode: ([UInt8]) -> (value: Value?, status: UInt32),
  _ encode: (inout Value) -> (bytes: [UInt8], status: UInt32)
) -> UnitreeObservation<Value> {
  var result = UnitreeObservation<Value>()
  if aliasBytes.isEmpty || aliasBytes.count > 255 || !unitreeUTF8(aliasBytes)
    || attempts == 0 || attempts > 250 || capacity < 0 || capacity > 32768
  {
    result.primary = 22
    return result
  }
  if nl_version() != 1 {
    result.primary = 95
    return result
  }
  var owner: UInt64 = 0
  result.primary = aliasBytes.withUnsafeBufferPointer {
    nl_open($0.baseAddress, UInt32($0.count), &owner)
  }
  if result.primary != 0 {
    return result
  }
  result.primary = nl_subscribe(owner)
  if result.primary == 0 {
    var buffer = [UInt8](repeating: 0, count: capacity)
    for index in 0..<attempts {
      var length = UInt64.max
      result.rpc = buffer.withUnsafeMutableBufferPointer {
        nl_poll(owner, $0.baseAddress, UInt32($0.count), &length)
      }
      result.length = length
      result.rpcPresent = true
      result.polls += 1
      result.primary = result.rpc
      if result.rpc != 11 || index + 1 == attempts {
        break
      }
      result.primary = nl_pause(20)
      if result.primary != 0 {
        break
      }
    }
    if result.primary == 0 {
      if result.length > UInt64(capacity) {
        result.primary = 22
      } else {
        let decoded = decode(Array(buffer[0..<Int(result.length)]))
        result.primary = decoded.status
        if result.primary == 0 {
          if var value = decoded.value {
            let encoded = encode(&value)
            result.primary = encoded.status
            if result.primary == 0 {
              result.value = value
              result.wire = encoded.bytes
              result.responsePresent = true
            }
          } else {
            result.primary = 22
          }
        }
      }
    }
  }
  result.cleanupPresent = true
  result.cleanup = nl_close(owner)
  return result
}

/// @brief Count original WASI arguments including the executable name.
/// @return Original count; this operation creates no native owner.
public func unitreeArgumentCount() -> UInt32 {
  return nl_argument_count()
}

/// @brief Copy one complete original WASI argument into owned Swift bytes.
/// @param index Original zero-based argument index.
/// @return Entire independent bytes, or an empty array when absent.
public func unitreeArgument(_ index: UInt32) -> [UInt8] {
  var size: UInt32 = 0
  guard let bytes = nl_argument(index, &size) else {
    return []
  }
  return Array(UnsafeBufferPointer(start: bytes, count: Int(size)))
}

/// @brief Emit all accepted canonical bytes and independent observation facts.
/// @param value Borrowed complete observation, stable through stdout flush.
/// @return Primary, independent close, then stdout error; no numeric narrowing.
public func unitreeReport<Value>(_ value: UnitreeObservation<Value>) -> UInt32 {
  return value.wire.withUnsafeBufferPointer {
    nl_report(
      value.primary, value.cleanup, value.cleanupPresent ? 1 : 0, value.rpc,
      value.rpcPresent ? 1 : 0, value.length, value.responsePresent ? 1 : 0,
      value.polls, $0.baseAddress, UInt32($0.count))
  }
}
