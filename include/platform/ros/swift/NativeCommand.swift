/// @file NativeCommand.swift
/// @brief Own complete native ROS String/Trigger records and command lifetimes.
/// @details Genuine Embedded Swift owns every field, codec, poll choice and
/// result. The imported scalar C adapter owns no record or ROS capability.

/// @brief Complete original std_msgs String data within an explicit UTF-8 quota.
public struct ROSStringValue {
  /// @brief Entire original data, independently owned within 252 bytes.
  public var data: [UInt8] = []
  /// @brief Construct a local empty value without acquiring native authority.
  public init() {}
}
/// @brief Complete original std_srvs Trigger response; its request has no fields.
public struct ROSTriggerResponse {
  /// @brief Original success flag, including explicit service refusal.
  public var success = false
  /// @brief Complete original diagnostic within the explicit 251-byte UTF-8 quota.
  public var message: [UInt8] = []
  /// @brief Construct an independent local value without native effects.
  public init() {}
}
/// @brief Own complete accepted values and independent original status facts.
/// @details No acquired native owner survives a normal return.
public struct ROSOutcome {
  /// @brief First original operation, codec or complete service-refusal failure.
  public var primary: UInt32 = 0
  /// @brief Independent original close result for the once-retired acquired owner.
  public var cleanup: UInt32 = 0
  /// @brief Original last full unsigned transport status, without remapping.
  public var rpc: UInt32 = 0
  /// @brief Whether this command attempted one acquired-owner close.
  public var cleanupPresent = false
  /// @brief Whether a publication, poll or call entered its original import.
  public var rpcPresent = false
  /// @brief Whether the complete selected response validated into owned fields.
  public var responsePresent = false
  /// @brief Original full-width length slot; maximum preserves an unwritten slot.
  public var length = UInt64.max
  /// @brief Complete independently owned String; selected for publication/subscription.
  public var string = ROSStringValue()
  /// @brief Complete independently owned response; selected for Trigger calling.
  public var trigger = ROSTriggerResponse()
  /// @brief Complete source-language encoded bytes; only size bytes are initialized.
  public var wire = [UInt8](repeating: 0, count: 256)
  /// @brief Initialized complete canonical extent, within the 256-byte backing array.
  public var size = 0
  /// @brief Construct ordinary owned result storage without any native effect.
  public init() {}
}

/// @brief Validate canonical Unicode scalar encodings without NUL.
/// @param bytes Immutable UTF-8 bytes. @return True only for strict UTF-8 text.
public func rosUTF8(_ bytes: [UInt8]) -> Bool {
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

/// @brief Encode an entire original String field with its exact little-endian length.
/// @param value Complete borrowed original value. @return Owned bytes or nil for invalid text/quota.
public func rosEncodeString(_ value: ROSStringValue) -> [UInt8]? {
  if value.data.count > 252 || !rosUTF8(value.data) { return nil }
  let count = UInt32(value.data.count)
  var bytes: [UInt8] = []
  for shift in 0..<4 { bytes.append(UInt8(truncatingIfNeeded: count >> (shift * 8))) }
  bytes.append(contentsOf: value.data)
  return bytes
}
/// @brief Decode one complete original String without trailing or borrowed bytes.
/// @param bytes Borrowed complete canonical input. @return Whole owned value or nil.
public func rosDecodeString(_ bytes: [UInt8]) -> ROSStringValue? {
  if bytes.count < 4 || bytes.count > 256 { return nil }
  var count: UInt32 = 0
  for index in 0..<4 { count |= UInt32(bytes[index]) << (index * 8) }
  if count > 252 || Int(count) + 4 != bytes.count { return nil }
  let text = Array(bytes[4..<bytes.count])
  if !rosUTF8(text) { return nil }
  var value = ROSStringValue()
  value.data = text
  return value
}
/// @brief Encode both original Trigger fields, preserving an explicit false response.
/// @param value Complete borrowed response. @return Owned bytes or nil for invalid text/quota.
public func rosEncodeTrigger(_ value: ROSTriggerResponse) -> [UInt8]? {
  if value.message.count > 251 || !rosUTF8(value.message) { return nil }
  let count = UInt32(value.message.count)
  var bytes: [UInt8] = [value.success ? 1 : 0]
  for shift in 0..<4 { bytes.append(UInt8(truncatingIfNeeded: count >> (shift * 8))) }
  bytes.append(contentsOf: value.message)
  return bytes
}
/// @brief Decode every original Trigger field transactionally with strict boolean checks.
/// @param bytes Borrowed complete canonical input. @return Whole owned response or nil.
public func rosDecodeTrigger(_ bytes: [UInt8]) -> ROSTriggerResponse? {
  if bytes.count < 5 || bytes.count > 256 || bytes[0] > 1 { return nil }
  var count: UInt32 = 0
  for index in 0..<4 { count |= UInt32(bytes[index + 1]) << (index * 8) }
  if count > 251 || Int(count) + 5 != bytes.count { return nil }
  let text = Array(bytes[5..<bytes.count])
  if !rosUTF8(text) { return nil }
  var value = ROSTriggerResponse()
  value.success = bytes[0] == 1
  value.message = text
  return value
}

/// @brief Execute one complete original native operation with one normally acquired owner.
/// @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
/// @param alias Existing policy alias, borrowed synchronously through return.
/// @return Owned whole fields, original RPC/length, and separate once-only close facts.
/// @details Publication schedules two samples with a one-second discovery gap.
/// No failed effect is replayed. Only idle subscription polls repeat, at most 250 times.
public func rosRun(_ operation: UInt32, _ alias: [UInt8]) -> ROSOutcome {
  var result = ROSOutcome()
  if operation < 1 || operation > 3 || alias.count == 0 || alias.count > 255 || !rosUTF8(alias) {
    result.primary = 22
    return result
  }
  if operation == 1 {
    result.string.data = [104, 101, 108, 108, 111, 32, 110, 97, 116, 105, 118, 101, 32, 82, 79, 83]
    guard let encoded = rosEncodeString(result.string) else {
      result.primary = 22
      return result
    }
    result.size = encoded.count
    for index in 0..<encoded.count { result.wire[index] = encoded[index] }
  }
  if nl_version() != 1 {
    result.primary = 95
    return result
  }
  var owner: UInt64 = 0
  result.primary = alias.withUnsafeBufferPointer {
    nl_open($0.baseAddress!, UInt32(alias.count), &owner)
  }
  if result.primary != 0 { return result }
  if owner == 0 {
    result.primary = 5
    return result
  }
  if operation == 1 {
    result.rpcPresent = true
    let size = UInt32(result.size)
    result.rpc = result.wire.withUnsafeBufferPointer { nl_publish(owner, $0.baseAddress!, size) }
    result.primary = result.rpc
    if result.primary == 0 { result.primary = nl_pause(1000) }
    if result.primary == 0 {
      result.rpc = result.wire.withUnsafeBufferPointer { nl_publish(owner, $0.baseAddress!, size) }
      result.primary = result.rpc
    }
    if result.primary == 0 { result.primary = nl_pause(200) }
  } else {
    if operation == 2 { result.primary = nl_subscribe(owner) }
    var length = UInt64.max
    if result.primary == 0 {
      for attempt in 0..<250 {
        length = UInt64.max
        result.rpcPresent = true
        result.rpc = result.wire.withUnsafeMutableBufferPointer {
          operation == 2
            ? nl_poll(owner, $0.baseAddress!, 256, &length)
            : nl_call(owner, nil, 0, $0.baseAddress!, 256, &length)
        }
        result.primary = result.rpc
        if operation != 2 || result.rpc != 11 || attempt == 249 { break }
        result.primary = nl_pause(20)
        if result.primary != 0 { break }
      }
    }
    result.length = length
    if result.primary == 0 {
      if length > 256 {
        result.primary = 22
      } else {
        let bytes = Array(result.wire[0..<Int(length)])
        if operation == 2, let value = rosDecodeString(bytes), let encoded = rosEncodeString(value)
        {
          result.string = value
          result.responsePresent = true
          result.size = encoded.count
          for index in 0..<encoded.count { result.wire[index] = encoded[index] }
        } else if operation == 3, let value = rosDecodeTrigger(bytes),
          let encoded = rosEncodeTrigger(value)
        {
          result.trigger = value
          result.responsePresent = true
          result.size = encoded.count
          for index in 0..<encoded.count { result.wire[index] = encoded[index] }
          if !value.success { result.primary = 5 }
        } else {
          result.primary = 22
        }
      }
    }
  }
  result.cleanupPresent = true
  result.cleanup = nl_close(owner)
  return result
}

/// @brief Emit complete accepted canonical bytes after once-only owner retirement.
/// @param value Borrowed ordinary result. @return First primary, cleanup, or stdout error.
public func rosReport(_ value: ROSOutcome) -> UInt32 {
  value.wire.withUnsafeBufferPointer {
    nl_report(
      value.primary, value.cleanup, value.cleanupPresent ? 1 : 0, value.rpc,
      value.rpcPresent ? 1 : 0, value.length, value.responsePresent ? 1 : 0, $0.baseAddress!,
      UInt32(value.size))
  }
}
