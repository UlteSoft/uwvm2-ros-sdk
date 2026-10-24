import RosWasm

/// @brief Complete original Patrol Vector3 Goal: square1/triangle2, metres, count.
/// @details Count is the original decimal integer converted to finite Double.
/// Construction grants no native action permission or physical/model guarantee.
/// @see Patrol.parseGoal Patrol.encodeGoal Patrol.run
public struct PatrolGoal {
  public let mode: Double
  public let distance: Double
  public let count: Double

  /// @brief Retain all three original Goal fields without unit conversion.
  /// @details Validation occurs in encodeGoal/run before opening any capability.
  /// @param mode Original square1 or triangle2 selector.
  /// @param distance Original distance in metres, finite when submitted.
  /// @param count Original integer converted to finite float64.
  /// @see Patrol.encodeGoal Patrol.run
  public init(mode: Double, distance: Double, count: Double) {
    self.mode = mode
    self.distance = distance
    self.count = count
  }
}

/// @brief Retain original values, full opaque ID and independently checked closes.
/// @details A reference carrier keeps defer's cleanup updates visible to callers.
/// primary retains the exact first Error; 110 means unresolved finite polling.
/// goalID retains every UInt64 bit; sendUnknown never authorizes replay. Only
/// feedback[0..<feedbackUsed] is populated; terminalKind2/3/4 accompanies a fully
/// decoded original result. cleanup/attempted use send/cancel-own/feedback/result
/// order. This mutable report is single-caller Guest state, not native authority.
/// @see Patrol.run PatrolGoal
public final class PatrolReport {
  public var primary: Error? = nil
  public var goalID: UInt64 = 0
  public var sendUnknown = false
  public var feedback: [String]
  public var feedbackUsed = 0
  public var terminalKind: UInt8 = 0
  public var result = ""
  public var cleanup: [Error?] = [nil, nil, nil, nil]
  public var attempted = [false, false, false, false]

  /// @brief Allocate every bounded feedback slot before acquiring a role.
  /// @details No native API is called. Runtime allocation failure retains its
  /// ordinary Swift semantics; no claim of cleanup after Wasm trap is made.
  /// @param polls Integer 1..4096 selected by Patrol.run.
  /// @throws RosError(22) Capacity is outside the finite supported range.
  /// @see Patrol.run PatrolReport
  public init(polls: Int) throws {
    guard polls >= 1, polls <= 4096 else { throw RosError(22) }
    feedback = [String](repeating: "", count: polls)
  }
}

/// @brief Bounded original Patrol client over actual shared Swift Owner APIs.
/// @details No native server, socket, ROS thread, retry or automatic cancel is
/// created. The actual Swift compiler-matching WASI SDK/bridge is required.
/// Use one Guest execution thread, never share owners across actors.
/// @see Patrol.parseGoal Patrol.run PatrolReport
public enum Patrol {
  private static func number(_ text: String, integer: Bool) throws -> Double {
    let bytes = Array(text.utf8)
    guard !bytes.isEmpty, bytes.count <= 255 else { throw RosError(22) }
    var start = 0
    if bytes[0] == 43 || bytes[0] == 45 { start = 1 }
    guard start < bytes.count else { throw RosError(22) }
    if integer {
      guard bytes[start...].allSatisfy({ $0 >= 48 && $0 <= 57 }) else { throw RosError(22) }
    } else {
      guard bytes.allSatisfy({ ($0 >= 48 && $0 <= 57) || [43, 45, 46, 101, 69].contains($0) })
      else { throw RosError(22) }
    }
    guard let value = Double(text), value.isFinite else { throw RosError(22) }
    return integer && value == 0 ? 0 : value
  }

  /// @brief Parse a complete square/triangle Goal before opening any role.
  /// @details Each numeric string is bounded to 255 ASCII bytes. Distance is
  /// finite decimal metres; count is signed decimal integer converted to
  /// original float64, including positive zero for '-0'. Interactive/unbounded
  /// Python input remains a documented narrower-domain difference.
  /// @param mode Exactly s or t; command handles x without opening a role.
  /// @param distance Finite original metre argument; no native limit inferred.
  /// @param count Original decimal integer count.
  /// @return Complete PatrolGoal, or RosError(22) with no external effect.
  /// @see PatrolGoal Patrol.encodeGoal Patrol.run
  public static func parseGoal(_ mode: String, _ distance: String, _ count: String) throws
    -> PatrolGoal
  {
    guard mode == "s" || mode == "t" else { throw RosError(22) }
    return PatrolGoal(
      mode: mode == "s" ? 1 : 2,
      distance: try number(distance, integer: false),
      count: try number(count, integer: true))
  }

  /// @brief Encode all original Vector3 fields using the shared canonical writer.
  /// @details Pure 24-byte encoding; no permission or native operation occurs.
  /// @param goal Borrowed complete Goal with original metre/count semantics.
  /// @return Owned 24-byte little-endian value; RosError(22) for invalid fields.
  /// @see PatrolGoal Patrol.parseGoal Patrol.run
  public static func encodeGoal(_ goal: PatrolGoal) throws -> [UInt8] {
    guard goal.mode == 1 || goal.mode == 2, goal.distance.isFinite,
      goal.count.isFinite, goal.count.rounded(.towardZero) == goal.count
    else { throw RosError(22) }
    var writer = try WireWriter(limit: 24)
    try writer.float64(goal.mode)
    try writer.float64(goal.distance)
    try writer.float64(goal.count)
    return writer.bytes
  }

  /// @brief Send once, poll full original feedback/result and close every owner.
  /// @details Opens four exact roles before send. Full UInt64 ID, original
  /// terminal kind and bounded strict UTF-8 text are validated through shared
  /// WireReader before terminal commit. Unknown effects never permit replay.
  /// No native server wait, stronger cancel-any role or automatic cancellation
  /// is introduced. A matching original server/driver remains independent.
  /// @param aliases Distinct send/cancel-own/feedback/result names, each 1..255
  /// NUL-free UTF-8 bytes, unchanged during this synchronous call.
  /// @param goal Borrowed complete Goal, encoded before any open.
  /// @param polls Integer 1..4096; each iteration polls feedback and result once.
  /// @return PatrolReport with exact primary Error, complete original values,
  /// full ID and every attempted close. Pure validation throws RosError(22).
  /// @see PatrolReport Patrol.parseGoal Patrol.encodeGoal
  public static func run(_ aliases: [String], goal: PatrolGoal, polls: Int) throws -> PatrolReport {
    let encoded = try encodeGoal(goal)
    guard aliases.count == 4, Set(aliases).count == 4, polls >= 1, polls <= 4096,
      aliases.allSatisfy({ !$0.utf8.isEmpty && $0.utf8.count <= 255 && !$0.utf8.contains(0) })
    else { throw RosError(22) }
    let report = try PatrolReport(polls: polls)
    var owners: [Owner?] = [nil, nil, nil, nil]
    defer {
      for index in (0..<owners.count).reversed() {
        if let owner = owners[index] {
          report.attempted[index] = true
          do { try owner.close() } catch { report.cleanup[index] = error }
        }
      }
    }
    do {
      guard Raw.abi_version() == 1 else { throw RosError(95) }
      for index in 0..<aliases.count { owners[index] = try Owner.open(aliases[index]) }
      report.sendUnknown = true
      let sent = try owners[0]!.request(.action_send_goal, encoded, capacity: 8)
      var idReader = try WireReader(sent, limit: 8)
      let id = try idReader.integer(UInt64.self)
      try idReader.finish()
      guard id != 0 else { throw RosError(22) }
      report.goalID = id
      report.sendUnknown = false
      var selector = try WireWriter(limit: 8)
      try selector.integer(id)
      for _ in 0..<polls {
        do {
          let bytes = try owners[2]!.request(
            .action_receive_feedback, selector.bytes, capacity: 268)
          var reader = try WireReader(bytes, limit: 268)
          guard try reader.integer(UInt64.self) == id else { throw RosError(22) }
          let value = try reader.string(bound: 256)
          try reader.finish()
          report.feedback[report.feedbackUsed] = value
          report.feedbackUsed += 1
        } catch let error as RosError where error.code == 11 {}
        do {
          let bytes = try owners[3]!.request(.action_receive_result, selector.bytes, capacity: 269)
          var reader = try WireReader(bytes, limit: 269)
          guard try reader.integer(UInt64.self) == id else { throw RosError(22) }
          let kind = try reader.integer(UInt8.self)
          guard kind >= 2 && kind <= 4 else { throw RosError(22) }
          let value = try reader.string(bound: 256)
          try reader.finish()
          report.result = value
          report.terminalKind = kind
          break
        } catch let error as RosError where error.code == 11 {}
      }
      if report.terminalKind == 0 { throw RosError(110) }
    } catch { report.primary = error }
    return report
  }
}

@main
struct PatrolCommand {
  static func main() throws {
    let arguments = Array(CommandLine.arguments.dropFirst())
    guard arguments.count == 8 else { throw RosError(22) }
    if arguments[4] == "x" { return }
    let goal = try Patrol.parseGoal(arguments[4], arguments[5], arguments[6])
    guard !arguments[7].isEmpty, arguments[7].utf8.count <= 4,
      arguments[7].utf8.allSatisfy({ $0 >= 48 && $0 <= 57 }),
      let polls = Int(arguments[7]), polls >= 1, polls <= 4096
    else { throw RosError(22) }
    let report = try Patrol.run(Array(arguments[0..<4]), goal: goal, polls: polls)
    if report.goalID != 0 { print("accepted goal=\(report.goalID)") }
    for index in 0..<report.feedbackUsed {
      let value = report.feedback[index]
      print("feedback[\(value.utf8.count)]: \(value)")
    }
    if report.terminalKind != 0 {
      print(
        "terminal kind=\(report.terminalKind) goal=\(report.goalID)\nresult[\(report.result.utf8.count)]: \(report.result)"
      )
    } else if report.goalID != 0 || report.sendUnknown {
      print(
        "goal=\(report.goalID) send_unknown=\(report.sendUnknown) outcome unresolved; no replay or automatic cancel"
      )
    }
    print(
      "primary=\(String(describing: report.primary)) cleanup=\(report.cleanup) attempted=\(report.attempted)"
    )
    if let primary = report.primary { throw primary }
    for error in report.cleanup { if let error { throw error } }
  }
}
