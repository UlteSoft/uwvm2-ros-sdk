/// @file Observation.swift
/// @brief Genuine Embedded Swift records, complete codecs and owned ABB observations.
/// @details Swift owns arrays and every handle decision. This implementation uses
/// the actual Embedded Swift Wasm standard library and WASI libc allocation.
/// It needs no Foundation, host execution, native ROS library or JSON bridge.
// The public scalar adapter header is imported by the build layer. Clang's
// importer supplies the actual C calling convention, including optional pointers.

/// @brief Complete original speed response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBSpeed {
  /// @brief Original unscaled controller speed percentage byte.
  public var speedRatio: UInt8 = 0
  /// @brief Original full unsigned controller result code, including refusals.
  public var resultCode: UInt16 = 0
  /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
  public var message: [UInt8] = []
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Complete original IO response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBIO {
  /// @brief Owned complete strict UTF-8 IO signal value, at most 512 bytes.
  public var value: [UInt8] = []
  /// @brief Original full unsigned controller result code, including refusals.
  public var resultCode: UInt16 = 0
  /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
  public var message: [UInt8] = []
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Complete original RAPIDTaskState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBTask {
  /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
  public var name: [UInt8] = []
  /// @brief Original activation flag, encoded as exactly zero or one.
  public var activated: Bool = false
  /// @brief Original unscaled RAPID execution_state byte.
  public var executionState: UInt8 = 0
  /// @brief Original motion_task flag, encoded as exactly zero or one.
  public var motionTask: Bool = false
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Complete original MechanicalUnitState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBUnit {
  /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
  public var name: [UInt8] = []
  /// @brief Original activation flag, encoded as exactly zero or one.
  public var activated: Bool = false
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Complete original ROS 2 Header, flags, RAPID tasks and mechanical units.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBSystemState {
  /// @brief Original signed ROS 2 timestamp seconds without unit conversion.
  public var seconds: Int32 = 0
  /// @brief Original normalized timestamp nanoseconds in 0..999999999.
  public var nanoseconds: UInt32 = 0
  /// @brief Owned complete original frame identifier, at most 64 UTF-8 bytes.
  public var frameID: [UInt8] = []
  /// @brief Original motors_on flag, encoded as exactly zero or one.
  public var motorsOn: Bool = false
  /// @brief Original auto_mode flag, encoded as exactly zero or one.
  public var autoMode: Bool = false
  /// @brief Original rapid_running flag, encoded as exactly zero or one.
  public var rapidRunning: Bool = false
  /// @brief Independent backing storage for at most 16 complete original RAPID tasks.
  public var tasks: [ABBTask] = []
  /// @brief Independent backing storage for at most 16 complete mechanical units.
  public var units: [ABBUnit] = []
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Complete owned records and independent operation, transport and close facts.
/// @details Every field is an ordinary owned value; construction grants no capability.
public struct ABBObservation {
  /// @brief First original operation, canonical-codec or controller failure.
  public var primary: UInt32 = 0
  /// @brief Independent original close status for the once-retired acquired owner.
  public var cleanup: UInt32 = 0
  /// @brief Original last full unsigned transport status without narrowing.
  public var rpc: UInt32 = 0
  /// @brief True only after a close attempt on an actually acquired owner.
  public var cleanupPresent: Bool = false
  /// @brief True only after an admitted service call or explicit event poll.
  public var rpcPresent: Bool = false
  /// @brief Original full-width length slot; the maximum value preserves an unwritten slot.
  public var length: UInt64 = UInt64.max
  /// @brief True only after the whole original response passed canonical validation.
  public var responsePresent: Bool = false
  /// @brief Complete independently owned speed reply; valid only for a present speed response.
  public var speed: ABBSpeed = ABBSpeed()
  /// @brief Complete independently owned IO reply; valid only for a present IO response.
  public var io: ABBIO = ABBIO()
  /// @brief Complete independently owned state; valid only for a present state response.
  public var state: ABBSystemState = ABBSystemState()
  /// @brief Owned complete source-language canonical storage, including every response field.
  public var wire: [UInt8] = [UInt8](repeating: 0, count: 2327)
  /// @brief Initialized complete canonical byte extent, constrained to the backing capacity.
  public var wireSize: Int = 0
  /// @brief Construct an independent empty original ordinary value.
  /// @return Complete owned value without acquiring authority.
  public init() {}
}

/// @brief Validate canonical Unicode scalar encodings without NUL.
/// @param bytes Immutable UTF-8 bytes. @return True only for strict UTF-8 text.
public func abbUTF8(_ bytes: [UInt8]) -> Bool {
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
struct ABBCursor {
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
    if !abbUTF8(value) {
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

/// @brief Traverse every selected original field in declaration order.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
/// @param operation Exact complete speed, IO or SystemState response selector.
/// @param value Complete independently owned original value; usable only after whole-record success.
/// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
private func abbFields(
  _ operation: UInt32, _ value: inout ABBObservation, _ cursor: inout ABBCursor
) {
  if operation == 1 {
    value.speed.speedRatio = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(value.speed.speedRatio), 1))
    value.speed.resultCode = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(value.speed.resultCode), 2))
    value.speed.message = cursor.text(value.speed.message, 512)
  } else if operation == 2 {
    value.io.value = cursor.text(value.io.value, 512)
    value.io.resultCode = UInt16(truncatingIfNeeded: cursor.number(UInt64(value.io.resultCode), 2))
    value.io.message = cursor.text(value.io.message, 512)
  } else if operation == 3 {
    value.state.seconds = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: value.state.seconds)), 4)))
    value.state.nanoseconds = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(value.state.nanoseconds), 4))
    if value.state.nanoseconds >= 1_000_000_000 {
      cursor.failed = true
      return
    }
    value.state.frameID = cursor.text(value.state.frameID, 64)
    value.state.motorsOn = cursor.boolean(value.state.motorsOn)
    value.state.autoMode = cursor.boolean(value.state.autoMode)
    value.state.rapidRunning = cursor.boolean(value.state.rapidRunning)
    let taskCount = Int(cursor.number(UInt64(value.state.tasks.count), 4))
    if taskCount > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      value.state.tasks = [ABBTask](repeating: ABBTask(), count: taskCount)
    }
    for index in 0..<taskCount {
      value.state.tasks[index].name = cursor.text(value.state.tasks[index].name, 64)
      value.state.tasks[index].activated = cursor.boolean(value.state.tasks[index].activated)
      value.state.tasks[index].executionState = UInt8(
        truncatingIfNeeded: cursor.number(UInt64(value.state.tasks[index].executionState), 1))
      value.state.tasks[index].motionTask = cursor.boolean(value.state.tasks[index].motionTask)
    }
    let unitCount = Int(cursor.number(UInt64(value.state.units.count), 4))
    if unitCount > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      value.state.units = [ABBUnit](repeating: ABBUnit(), count: unitCount)
    }
    for index in 0..<unitCount {
      value.state.units[index].name = cursor.text(value.state.units[index].name, 64)
      value.state.units[index].activated = cursor.boolean(value.state.units[index].activated)
    }
  } else {
    cursor.failed = true
  }
}

/// @brief Encode every selected original field with strict finite bounds.
/// @param operation Exact selected record. @param value Owned records/output.
/// @return Zero on success or canonical error 22; ignore partial output on error.
public func abbEncode(_ operation: UInt32, _ value: inout ABBObservation) -> UInt32 {
  var cursor = ABBCursor(bytes: [UInt8](repeating: 0, count: 2327), limit: 2327, writing: true)
  abbFields(operation, &value, &cursor)
  if cursor.failed {
    return 22
  }
  value.wire = cursor.bytes
  value.wireSize = cursor.at
  return 0
}
/// @brief Decode a complete reply then re-encode every field without projection.
/// @param operation Exact selected record. @param value Owned wire and records.
/// @return Zero only on complete canonical validation; ignore records on error.
public func abbDecode(_ operation: UInt32, _ value: inout ABBObservation) -> UInt32 {
  if value.wireSize < 0 || value.wireSize > value.wire.count {
    return 22
  }
  var cursor = ABBCursor(bytes: value.wire, limit: value.wireSize)
  abbFields(operation, &value, &cursor)
  if cursor.failed || cursor.at != cursor.limit {
    return 22
  }
  return abbEncode(operation, &value)
}

/// @brief Own one exact alias through one checked close in genuine Swift.
/// @param operation 1=speed, 2=IO, 3=state. @param alias Existing exact UTF-8 grant.
/// @param signal Complete IO name. @param attempts Finite state poll budget 1..1000.
/// @return Complete records plus independent transport, decode, controller and close facts.
/// @details Only idle 11 permits another poll; service requests never replay.
/// Array allocation traps can prevent cleanup; ordinary numeric errors always close.
public func abbObserve(
  _ operation: UInt32, _ alias: [UInt8], _ signal: [UInt8], _ attempts: UInt32 = 1
)
  -> ABBObservation
{
  var result = ABBObservation()
  if operation < 1 || operation > 3 || alias.isEmpty || alias.count > 255 || !abbUTF8(alias)
    || attempts == 0
    || attempts > 1000
  {
    result.primary = 22
    return result
  }
  var request = [UInt8](repeating: 0, count: 516)
  var requestSize: UInt32 = 0
  if operation == 2 {
    if signal.isEmpty || signal.count > 512 || !abbUTF8(signal) {
      result.primary = 22
      return result
    }
    for index in 0..<4 {
      request[index] = UInt8(truncatingIfNeeded: UInt32(signal.count) >> (index * 8))
    }
    for index in 0..<signal.count {
      request[index + 4] = signal[index]
    }
    requestSize = UInt32(signal.count + 4)
  }
  if nl_version() != 1 {
    result.primary = 95
    return result
  }
  var handle: UInt64 = 0
  result.primary = alias.withUnsafeBufferPointer {
    nl_open($0.baseAddress!, UInt32(alias.count), &handle)
  }
  if result.primary != 0 {
    return result
  }
  var length = UInt64.max
  if operation == 3 {
    result.primary = nl_subscribe(handle)
    if result.primary == 0 {
      for index in 0..<attempts {
        length = UInt64.max
        result.rpc = result.wire.withUnsafeMutableBufferPointer {
          nl_poll(handle, $0.baseAddress!, UInt32($0.count), &length)
        }
        result.rpcPresent = true
        result.primary = result.rpc
        if result.rpc != 11 || index + 1 == attempts {
          break
        }
        result.primary = nl_pause(10)
        if result.primary != 0 {
          break
        }
      }
    }
  } else {
    result.rpc = request.withUnsafeBufferPointer { input in
      result.wire.withUnsafeMutableBufferPointer {
        nl_call(handle, input.baseAddress!, requestSize, $0.baseAddress!, UInt32($0.count), &length)
      }
    }
    result.rpcPresent = true
    result.primary = result.rpc
  }
  result.length = length
  if result.primary == 0 {
    if result.length > UInt64(result.wire.count) {
      result.primary = 22
    } else {
      result.wireSize = Int(result.length)
      result.primary = abbDecode(operation, &result)
      result.responsePresent = result.primary == 0
      if result.responsePresent
        && ((operation == 1 && (result.speed.resultCode != 1 || result.speed.speedRatio > 100))
          || (operation == 2 && result.io.resultCode != 1))
      {
        result.primary = 5
      }
    }
  }
  result.cleanup = nl_close(handle)
  result.cleanupPresent = true
  return result
}

/// @brief Copy one original WASI argument. @param index Argument index.
/// @return Independently owned bytes; an absent argument returns an empty array.
public func abbArgument(_ index: UInt32) -> [UInt8] {
  var size: UInt32 = 0
  guard let source = nl_argument(index, &size) else {
    return []
  }
  return Array(UnsafeBufferPointer(start: source, count: Int(size)))
}
/// @brief Emit complete facts and canonical bytes. @param value Owned result.
/// @return Original unsigned status; only the common WASI entry clamps exit.
public func abbReport(_ value: ABBObservation) -> UInt32 {
  value.wire.withUnsafeBufferPointer {
    nl_report(
      value.primary, value.cleanup, value.cleanupPresent ? 1 : 0, value.rpc,
      value.rpcPresent ? 1 : 0,
      value.length, value.responsePresent ? 1 : 0, $0.baseAddress!, UInt32(value.wireSize))
  }
}
