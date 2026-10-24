// Bounded canonical bytes, independent of host endianness and native ROS ABI.
/// @brief Bounded owned canonical writer with explicit byte capacity.
/// @details Writes the selected original field widths in canonical order. No
/// native ROS struct layout, host endianness, pointer or type identity is encoded.
/// Mutate on one caller thread; discard partial state after a refused composite write.
/// @see WireReader; Canonical; RosError
public struct WireWriter {
  /// @brief Currently initialized canonical prefix, owned by this writer.
  /// @details Public reads retain Swift array value semantics. A partially
  /// written failed record must not be sent as a complete selected schema value.
  /// @see WireWriter.append; Canonical.encode
  public private(set) var bytes: [UInt8] = []
  /// @brief Inclusive initialized-prefix ceiling in bytes.
  /// @details Chosen explicitly at initialization; it allocates no Host quota.
  /// @see WireWriter.init; Owner.maximumRequest
  public let limit: Int
  /// @brief Construct an empty writer with one explicit canonical byte ceiling.
  /// @details Creates only local Swift storage; importing/encoding grants no rights.
  /// @param[in] limit Inclusive output ceiling, 0 through Owner.maximumRequest bytes.
  /// @return Empty owned writer with the exact selected limit.
  /// @throws RosError Capacity refusal 90 for a negative or excessive limit.
  /// Swift allocation traps are not recoverable RosError results.
  /// @see WireWriter.bytes; Canonical.encode
  public init(limit: Int) throws {
    guard limit >= 0, limit <= Owner.maximumRequest else { throw RosError(90) }
    self.limit = limit
  }
  /// @brief Append the complete supplied canonical field-byte prefix.
  /// @details Checks remaining capacity before changing initialized bytes.
  /// Copying bytes does not validate a schema, UTF-8 value or native identity.
  /// @param[in] b Exact field bytes, unchanged until the synchronous copy returns.
  /// @throws RosError Capacity 90 without appending any of b. Allocation may trap.
  /// @see WireWriter.bytes; WireWriter.limit; WireWriter.string
  public mutating func append(_ b: [UInt8]) throws {
    guard b.count <= limit - bytes.count else { throw RosError(90) }
    bytes.append(contentsOf: b)
  }
  /// @brief Write the exact selected fixed-width integer in little-endian order.
  /// @details Copies MemoryLayout<T>.size bytes of n.littleEndian. Use the
  /// original schema's standard fixed-width Swift scalar; a custom conformance
  /// or another field width does not establish native ABI compatibility.
  /// @param[in] n Complete signed/unsigned field value; bit width is selected by T.
  /// @throws RosError Capacity 90 before appending this scalar; allocation may trap.
  /// @see WireReader.integer; WireWriter.append; Canonical.write
  public mutating func integer<T: FixedWidthInteger>(_ n: T) throws {
    var value = n.littleEndian
    let b = withUnsafeBytes(of: &value) { Array($0) }
    try append(b)
  }
  /// @brief Write one canonical Boolean byte, exactly 0 or 1.
  /// @details Uses the original one-byte wire representation, not a Swift/native
  /// Bool memory layout. No operation or Host permission is performed.
  /// @param[in] n Complete Boolean field value.
  /// @throws RosError Capacity 90 before this field is appended.
  /// @see WireReader.boolean; WireWriter.integer
  public mutating func boolean(_ n: Bool) throws { try integer(UInt8(n ? 1 : 0)) }
  /// @brief Write one finite IEEE binary32 field with its exact bit pattern.
  /// @details Preserves finite signed zero/subnormal bits in canonical LE order.
  /// NaN and infinity are rejected before appending this field.
  /// @param[in] n Complete Float value under the selected field's finite contract.
  /// @throws RosError Nonfinite input 22 or output capacity 90.
  /// @see WireReader.float32; WireWriter.integer
  public mutating func float32(_ n: Float) throws {
    guard n.isFinite else { throw RosError(22) }
    try integer(n.bitPattern)
  }
  /// @brief Write one finite IEEE binary64 field with its exact bit pattern.
  /// @details Uses eight canonical little-endian bytes and preserves finite bits.
  /// This codec performs no unit conversion, scaling or coordinate transform.
  /// @param[in] n Complete finite Double from the original selected field.
  /// @throws RosError Nonfinite input 22 before mutation, or capacity 90.
  /// @see WireReader.float64; WireWriter.float32
  public mutating func float64(_ n: Double) throws {
    guard n.isFinite else { throw RosError(22) }
    try integer(n.bitPattern)
  }
  /// @brief Write a bounded UTF-8 String with an exact u32 byte-length prefix.
  /// @details Preserves UTF-8 content without normalization or a trailing NUL.
  /// Bound counts encoded bytes, not characters. Prefix append can succeed
  /// before body-capacity failure; discard the writer after that partial refusal.
  /// @param[in] value Complete original String, borrowed unchanged through encoding.
  /// @param[in] bound Nonnegative maximum UTF-8 body bytes from the exact schema.
  /// @param[in] rejectNul True rejects embedded NUL; false permits it only for a
  /// schema whose declared string contract independently allows that content.
  /// @throws RosError Invalid bound/content/u32 extent 22 or writer capacity 90.
  /// @see WireReader.string; WireWriter.append; Canonical.write
  public mutating func string(_ value: String, bound: Int, rejectNul: Bool = true) throws {
    let b = Array(value.utf8)
    guard bound >= 0, b.count <= bound, UInt64(b.count) <= UInt32.max,
      !rejectNul || !b.contains(0)
    else { throw RosError(22) }
    try integer(UInt32(b.count))
    try append(b)
  }
}

/// @brief Cursor over owned canonical input with checked exact field extents.
/// @details Swift array value semantics retain input bytes; no native pointer or
/// borrowed Guest offset is stored. A failed nested decode may advance position;
/// discard the reader/value rather than continue from an unverified prefix.
/// @see WireWriter; WireReader.finish; Canonical.decode
public struct WireReader {
  /// @brief Immutable retained complete canonical input bytes.
  /// @details Backing storage lives with this Swift value and follows array
  /// copy-on-write semantics, independent of transient Host buffer borrows.
  /// @see WireReader.init; WireReader.take
  public let bytes: [UInt8]
  /// @brief Current consumed-byte offset, 0 through bytes.count.
  /// @details Successful take advances it; semantic refusal after a take does
  /// not roll it back. Public callers cannot set the cursor directly.
  /// @see WireReader.take; WireReader.finish
  public private(set) var position = 0
  /// @brief Retain one complete canonical input under an explicit byte ceiling.
  /// @details Performs only local bounds checks; creates no native type identity,
  /// Guest owner, decoder registry or authority.
  /// @param[in] bytes Complete immutable input value retained for this reader.
  /// @param[in] limit Inclusive accepted input ceiling, 0 through Owner.maximumOutput.
  /// @return New reader at position 0 with the supplied owned array value.
  /// @throws RosError Capacity 90 for an invalid limit or excessive input extent.
  /// @see WireReader.position; Canonical.decode
  public init(_ bytes: [UInt8], limit: Int) throws {
    guard limit >= 0, limit <= Owner.maximumOutput, bytes.count <= limit else { throw RosError(90) }
    self.bytes = bytes
  }
  /// @brief Consume exactly n remaining bytes and return an owned array copy.
  /// @details Checks the complete extent before advancing; it never returns a
  /// truncated field or a borrowed view into mutable Host/native memory.
  /// @param[in] n Nonnegative exact selected field extent in bytes.
  /// @return Owned complete byte prefix; n=0 returns a valid empty array.
  /// @throws RosError Invalid/truncated extent 22 before cursor mutation.
  /// Allocation traps provide no ordinary rollback guarantee.
  /// @see WireReader.position; WireReader.integer; WireReader.string
  public mutating func take(_ n: Int) throws -> [UInt8] {
    guard n >= 0, n <= bytes.count - position else { throw RosError(22) }
    let start = position
    position += n
    return Array(bytes[start..<position])
  }
  /// @brief Read the exact selected fixed-width integer from canonical LE bytes.
  /// @details Consumes MemoryLayout<T>.size bytes and preserves signed/unsigned
  /// field bits. Select the original schema's standard fixed-width Swift scalar.
  /// @param[in] type Exact field metatype; no native ROS layout is inferred.
  /// @return Complete scalar value of T without narrowing to host Int.
  /// @throws RosError Truncated field 22 before take advances the cursor.
  /// @see WireWriter.integer; WireReader.take; Canonical.read
  public mutating func integer<T: FixedWidthInteger>(_ type: T.Type) throws -> T {
    let b = try take(MemoryLayout<T>.size)
    var n: T = 0
    for (i, byte) in b.enumerated() { n |= T(truncatingIfNeeded: byte) << (8 * i) }
    return n
  }
  /// @brief Read one canonical Boolean whose byte must be 0 or 1.
  /// @details A noncanonical consumed byte raises an error; it is not coerced
  /// to true. No cursor rollback follows semantic refusal.
  /// @return False for 0, true for 1.
  /// @throws RosError Truncated or noncanonical field 22.
  /// @see WireWriter.boolean; WireReader.integer
  public mutating func boolean() throws -> Bool {
    let n = try integer(UInt8.self)
    guard n <= 1 else { throw RosError(22) }
    return n == 1
  }
  /// @brief Read one finite canonical IEEE binary32 field.
  /// @details Reconstructs exact finite bits from four LE bytes. Nonfinite bits
  /// are rejected after consumption; no unit conversion or default is applied.
  /// @return Complete finite Float, preserving finite signed-zero/subnormal bits.
  /// @throws RosError Truncated/nonfinite field 22; discard partial reader on failure.
  /// @see WireWriter.float32; WireReader.integer
  public mutating func float32() throws -> Float {
    let n = Float(bitPattern: try integer(UInt32.self))
    guard n.isFinite else { throw RosError(22) }
    return n
  }
  /// @brief Read one finite canonical IEEE binary64 field.
  /// @details Reconstructs exact finite bits from eight LE bytes, independently
  /// of host endianness or a native ROS struct layout.
  /// @return Complete finite Double; no scaling or coordinate conversion occurs.
  /// @throws RosError Truncated/nonfinite field 22; a consumed field is not rolled back.
  /// @see WireWriter.float64; WireReader.float32
  public mutating func float64() throws -> Double {
    let n = Double(bitPattern: try integer(UInt64.self))
    guard n.isFinite else { throw RosError(22) }
    return n
  }
  /// @brief Read one complete bounded length-prefixed UTF-8 String.
  /// @details Reads the exact u32 byte count, checks its declared bound, takes
  /// all bytes and validates UTF-8. Neither replacement decoding nor Unicode
  /// normalization hides malformed original bytes. Failure may consume a prefix.
  /// @param[in] bound Nonnegative original schema UTF-8 byte ceiling.
  /// @param[in] rejectNul True rejects embedded NUL; false requires the selected
  /// original field contract to permit it independently.
  /// @return Owned complete String; no result borrows transient Host output.
  /// @throws RosError Invalid bound, truncation, malformed UTF-8 or forbidden NUL 22.
  /// @see WireWriter.string; WireReader.take; Canonical.decode
  public mutating func string(bound: Int, rejectNul: Bool = true) throws -> String {
    let n = try integer(UInt32.self)
    guard bound >= 0, UInt64(n) <= UInt64(bound) else { throw RosError(22) }
    let b = try take(Int(n))
    guard !rejectNul || !b.contains(0), let value = String(validating: b, as: UTF8.self) else {
      throw RosError(22)
    }
    return value
  }
  /// @brief Require exact end-of-record after decoding the complete selected value.
  /// @details Read-only cursor check; nested field readers should leave their
  /// enclosing reader's remaining fields for the outer decoder.
  /// @throws RosError Trailing/unconsumed bytes 22 without cursor mutation.
  /// @see WireReader.position; Canonical.decode; Canonical.read
  public func finish() throws { guard position == bytes.count else { throw RosError(22) } }
}

/// Complete typed records implement field encoding/decoding in declaration order.
/// @brief Complete selected-record canonical serialization contract.
/// @details Implement every original field, order, width, bound, default and
/// validation rule. Returned values own their decoded storage. Implementing this
/// protocol establishes no native ROS type support, identity or operation grant.
/// @see Canonical.encode; Canonical.decode; WireWriter; WireReader
public protocol Canonical {
  /// @brief Inclusive canonical body ceiling for the entire original record.
  /// @details Must be stable and reflect every complete nested field and bound.
  /// Encoding also requires it within Owner.maximumRequest; decoding requires
  /// it within Owner.maximumOutput. It reserves no Host quota.
  /// @see Canonical.encode; Canonical.decode
  static var maximumWireBytes: Int { get }
  /// @brief Write every original field into the enclosing canonical writer.
  /// @details Preserve original declaration order and exact selected scalar,
  /// array, sequence and nested-record contracts. A refusal may leave a prefix.
  /// @param[in,out] writer Exclusive mutable caller-owned enclosing writer.
  /// @throws Error Preserve the conformer's original failure; checked wire helpers
  /// use RosError for field/content/capacity refusal. Publish no partial value.
  /// @see Canonical.read; Canonical.encode; WireWriter
  func write(to writer: inout WireWriter) throws
  /// @brief Read every original field from the enclosing canonical reader.
  /// @details Consume only this complete record's prefix; the outer decode
  /// checks final exhaustion. Return independently owned nested/string/array values.
  /// @param[in,out] reader Exclusive mutable caller-owned enclosing reader.
  /// @return Complete validated Self with all original fields represented.
  /// @throws Error Preserve the conformer's original failure; checked wire helpers
  /// use RosError for content/bound/truncation refusal. Discard partial state.
  /// @see Canonical.write; Canonical.decode; WireReader.finish
  static func read(from reader: inout WireReader) throws -> Self
}
extension Canonical {
  /// @brief Encode this complete record into owned bounded canonical bytes.
  /// @details Uses the exact maximumWireBytes ceiling and the conformer's full
  /// field writer. Performs no Host call, native type lookup or policy mutation.
  /// @return Complete owned initialized canonical byte vector, including true Empty.
  /// @throws Error Original conformance or checked-writer refusal; no partial
  /// output is returned. Built-in writer refusals retain their RosError status.
  /// Allocation traps do not promise a recoverable error or Guest cleanup.
  /// @see Canonical.write; WireWriter; Owner.publish
  public func encode() throws -> [UInt8] {
    var w = try WireWriter(limit: Self.maximumWireBytes)
    try write(to: &w)
    return w.bytes
  }
  /// @brief Decode exactly one complete record and reject all trailing input.
  /// @details Bounds the complete input, reads every selected field and calls
  /// finish before publishing the owned result. No replacement/default record
  /// stands in for malformed, incomplete or otherwise rejected content.
  /// @param[in] bytes Complete immutable canonical record bytes.
  /// @return Independently owned validated Self with no transient Host pointer.
  /// @throws Error Original conformance failure or checked wire refusal. Built-in
  /// bounds/content/truncation/trailing-input errors preserve RosError status.
  /// @see Canonical.read; WireReader.finish; Owner.poll
  public static func decode(_ bytes: [UInt8]) throws -> Self {
    var r = try WireReader(bytes, limit: maximumWireBytes)
    let value = try read(from: &r)
    try r.finish()
    return value
  }
}
