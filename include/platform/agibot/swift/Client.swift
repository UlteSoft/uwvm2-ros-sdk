// @file Client.swift
// @brief Provide the complete agibot Client.swift source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
import AgibotC

/// An owned observation outcome; successful JSON remains in the caller's buffer.
///
/// Every call runs inside the same Wasm memory as the statically linked C ABI
/// adapter. It retains no pointer, capability or allocation. Complete original
/// fields are preserved; signed and unsigned 64-bit JSON fields are exact decimal
/// strings. This module uses Embedded Swift, without Foundation or reflection.
public struct ObservationResult {
  /// Original ROS ABI, bounded decoder or JSON serializer errno; zero is success.
  public let errorCode: UInt32
  /// Independent capability-close status. Retirement is attempted exactly once.
  public let cleanupError: UInt32
  /// Initialized UTF-8 byte count, valid only when errorCode is zero.
  public let written: UInt32
  /// Exact original service response code; zero for a state sample.
  public let vendorCode: Int64
}

private func observe(
  _ operation: UInt32,
  alias: UnsafeBufferPointer<UInt8>,
  output: UnsafeMutableBufferPointer<UInt8>,
  timeoutMilliseconds: UInt32
) -> ObservationResult {
  guard alias.count > 0, alias.count <= 255, output.count > 0, output.count <= 65536 else {
    return ObservationResult(errorCode: 22, cleanupError: 0, written: 0, vendorCode: 0)
  }
  var written: UInt32 = 0
  var cleanup: UInt32 = 0
  var vendor: Int64 = 0
  let error = agibot_json_observe(
    operation, alias.baseAddress, UInt32(alias.count), timeoutMilliseconds,
    output.baseAddress, UInt32(output.count), &written, &cleanup, &vendor
  )
  return ObservationResult(
    errorCode: error, cleanupError: cleanup, written: written, vendorCode: vendor)
}

/// Query original GetMcAction once, without replaying the service request.
/// - Parameters:
///   - alias: Borrowed granted UTF-8 capability alias, 1...255 bytes, without NUL.
///   - output: Caller-owned writable JSON span, 1...65536 bytes, disjoint from alias.
/// - Returns: Original errors and complete byte extent; inspect vendorCode separately.
public func queryMode(
  alias: UnsafeBufferPointer<UInt8>, output: UnsafeMutableBufferPointer<UInt8>
) -> ObservationResult {
  observe(1, alias: alias, output: output, timeoutMilliseconds: 3000)
}

/// Receive one complete original McCommonState under a monotonic deadline.
/// - Parameters:
///   - alias: Exact granted subscription alias; borrowed until return.
///   - output: Writable caller-owned JSON storage. Native timestamps and units stay unchanged.
///   - timeoutMilliseconds: 1...30000 milliseconds; requires the explicit monotonic-clock grant.
/// - Returns: Errno 110 on deadline expiry, otherwise the original result and independent close status.
public func nextMotionState(
  alias: UnsafeBufferPointer<UInt8>, output: UnsafeMutableBufferPointer<UInt8>,
  timeoutMilliseconds: UInt32 = 3000
) -> ObservationResult {
  observe(2, alias: alias, output: output, timeoutMilliseconds: timeoutMilliseconds)
}

/// Read all original X2 Ultra resource metadata without starting playback.
/// - Parameters:
///   - alias: Borrowed GetRobotResources capability alias; never an endpoint URL.
///   - output: Writable complete-response JSON storage, up to 65536 bytes.
/// - Returns: ABI/codec status, original vendor code and exact initialized byte count.
///
/// The official resource API excludes EDU hardware. Independent calls must use
/// disjoint storage. No global mutable SDK state or live owner survives the call.
public func listResources(
  alias: UnsafeBufferPointer<UInt8>, output: UnsafeMutableBufferPointer<UInt8>
) -> ObservationResult {
  observe(3, alias: alias, output: output, timeoutMilliseconds: 3000)
}

/// Write complete initialized JSON and one newline through guest WASI stdout.
/// - Parameter bytes: Borrowed successful output span, valid until return.
/// - Returns: Zero on a full flushed write, 22 for invalid extent or 5 for I/O failure.
public func writeJSON(_ bytes: UnsafeBufferPointer<UInt8>) -> Int32 {
  guard bytes.count > 0, bytes.count <= 65536 else { return 22 }
  return Int32(agibot_guest_write_json(bytes.baseAddress, UInt32(bytes.count)))
}

/// Report a missing or extra alias argument; returns usage errno 22 or I/O errno 5.
public func usage() -> Int32 {
  Int32(agibot_guest_usage())
}

/// Report the original observation and close errors without retrying either operation.
/// - Returns: Application failure 1, or I/O errno 5 if the diagnostic cannot be written.
public func diagnostic(_ result: ObservationResult) -> Int32 {
  Int32(agibot_guest_diagnostic(result.errorCode, result.cleanupError))
}
