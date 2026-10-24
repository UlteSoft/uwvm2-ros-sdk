## @brief Bounded complete original TurtleBot3 Patrol application for Nim/WASI.
## @details Uses actual shared roswasm Owner/Reader/Writer APIs. No native ROS
## server, socket, callback thread, retry or automatic cancellation is introduced.
## @see Goal Report parseGoal encodeGoal run
import roswasm
import roswasm/wire
import std/[math, os, strutils, unicode]

type
  Goal* = object
    ## @brief Complete original Vector3 Goal: square1/triangle2, metres, count.
    ## @details Count is the original decimal integer converted to finite float64.
    ## Construction grants no action permission or native model/safety guarantee.
    ## @see parseGoal encodeGoal run
    mode*, distance*, count*: float64
  Report* = ref object
    ## @brief Retain exact original outcomes and every independently attempted close.
    ## @details primary preserves the actual exception; code110 means unresolved
    ## finite polling. goalId retains all uint64 bits; sendUnknown never permits
    ## replay. Only feedback[0..<feedbackUsed] contains complete original strings.
    ## terminalKind2/3/4 accompanies a fully decoded result. cleanup/attempted use
    ## send/cancel-own/feedback/result order. Reference identity preserves defer's
    ## cleanup updates. Single-caller Guest state; no cleanup guarantee after trap.
    ## @see run Goal
    primary*: ref Exception
    goalId*: uint64
    sendUnknown*: bool
    feedback*: seq[string]
    feedbackUsed*: int
    terminalKind*: uint8
    resultText*: string
    cleanup*: array[4, ref Exception]
    attempted*: array[4, bool]

proc finite(value: float64): bool =
  value == value and abs(value) <= 1.7976931348623157e308

proc number(text: string; integer: bool): float64 =
  if text.len == 0 or text.len > 255: fail(22)
  var at = 0
  if text[0] in {'+', '-'}: inc at
  if at == text.len: fail(22)
  if integer:
    for index in at..<text.len:
      if text[index] notin {'0'..'9'}: fail(22)
  else:
    for value in text:
      if value notin {'0'..'9', '+', '-', '.', 'e', 'E'}: fail(22)
  try:
    result = parseFloat(text)
  except ValueError:
    fail(22)
  if not finite(result): fail(22)
  if integer and result == 0: result = 0

proc parseGoal*(mode, distance, count: string): Goal =
  ## @brief Parse one complete original Goal before opening any capability.
  ## @details Bounded ASCII input replaces the original Python interactive UI.
  ## Numeric strings have at most255 bytes; count requires signed decimal digits,
  ## converted to original finite float64. Whitespace/locale/hex/nonfinite inputs
  ## are refused. Unbounded original integer input remains a documented gap.
  ## @param mode Exactly s or t; the command handles x without opening a role.
  ## @param distance Original finite distance in metres; no model limit inferred.
  ## @param count Original signed decimal integer count.
  ## @return Complete Goal; raises RosError(code22) without a native effect.
  ## @see Goal encodeGoal run
  if mode != "s" and mode != "t": fail(22)
  result = Goal(mode: (if mode == "s": 1.0 else: 2.0),
                distance: number(distance, false), count: number(count, true))

proc encodeGoal*(goal: Goal): seq[byte] =
  ## @brief Encode every original Vector3 field through the shared wire writer.
  ## @details Pure canonical24-byte little-endian conversion; no ROS activity.
  ## @param goal Complete finite original Goal with metre/integer-count semantics.
  ## @return Owned24-byte sequence; RosError(code22) for invalid mode/count/value.
  ## @see Goal parseGoal run
  if goal.mode notin [1.0, 2.0] or not finite(goal.distance) or
      not finite(goal.count) or floor(goal.count) != goal.count: fail(22)
  var writer = initWriter(24)
  putFloat64(writer, goal.mode)
  putFloat64(writer, goal.distance)
  putFloat64(writer, goal.count)
  result = writer.bytes

proc run*(aliases: array[4, string]; goal: Goal; polls: int): Report =
  ## @brief Send one full Goal, poll complete original values and close every role.
  ## @details Uses actual ROS2 shared imports and independently provisioned
  ## original Patrol roles. The matching original native server remains a separate
  ## cooperating program. Every acquired owner closes once, including partial-open
  ## failures. Full uint64 ID, terminal kind and strict UTF-8 text decode precede
  ## terminal commit. No cancel-any role, native wait, replay or automatic cancel.
  ## @param aliases Distinct NUL-free UTF-8 send/cancel-own/feedback/result names,
  ## each1..255 bytes and unchanged during this synchronous single-caller run.
  ## @param goal Borrowed complete original Goal, encoded before opening.
  ## @param polls Integer1..4096; each iteration polls feedback and result once.
  ## @return Reference Report with exact primary exception, full values and all
  ## close outcomes. Pure input validation raises RosError(code22) before opening.
  ## @see Goal Report parseGoal encodeGoal
  let encoded = encodeGoal(goal)
  if polls < 1 or polls > 4096: fail(22)
  for index, alias in aliases:
    if alias.len == 0 or alias.len > 255 or '\0' in alias or validateUtf8(alias) != -1:
      fail(22)
    for earlier in 0..<index:
      if aliases[earlier] == alias: fail(22)
  result = Report(feedback: newSeq[string](polls))
  var owners: array[4, Owner]
  defer:
    for index in countdown(3, 0):
      if not owners[index].isNil:
        result.attempted[index] = true
        try:
          close(owners[index])
        except:
          result.cleanup[index] = getCurrentException()
  try:
    if raw_abi_version() != 1: fail(95)
    for index, alias in aliases: owners[index] = roswasm.open(alias)
    result.sendUnknown = true
    let sent = request(owners[0], rpc_action_send_goal, encoded, 8)
    var idReader = initReader(sent, 8)
    let id = getInteger(idReader, uint64)
    finish(idReader)
    if id == 0: fail(22)
    result.goalId = id
    result.sendUnknown = false
    var selector = initWriter(8)
    putInteger(selector, id)
    for iteration in 0..<polls:
      try:
        let bytes = request(owners[2], rpc_action_receive_feedback, selector.bytes, 268)
        var reader = initReader(bytes, 268)
        if getInteger(reader, uint64) != id: fail(22)
        let text = getString(reader, 256)
        finish(reader)
        result.feedback[result.feedbackUsed] = text
        inc result.feedbackUsed
      except RosError as error:
        if error.code != 11: raise
      try:
        let bytes = request(owners[3], rpc_action_receive_result, selector.bytes, 269)
        var reader = initReader(bytes, 269)
        if getInteger(reader, uint64) != id: fail(22)
        let kind = getInteger(reader, uint8)
        if kind < 2 or kind > 4: fail(22)
        let text = getString(reader, 256)
        finish(reader)
        result.resultText = text
        result.terminalKind = kind
        break
      except RosError as error:
        if error.code != 11: raise
    if result.terminalKind == 0: fail(110)
  except:
    result.primary = getCurrentException()

proc code(error: ref Exception): uint32 =
  if error.isNil: return 0
  if error of RosError: return cast[ref RosError](error).code
  return 22

proc program(): uint32 =
  if paramCount() == 4 and paramStr(1) == "encode":
    try:
      let bytes = encodeGoal(parseGoal(paramStr(2), paramStr(3), paramStr(4)))
      if stdout.writeBuffer(unsafeAddr bytes[0], bytes.len) != bytes.len: return 5
      return 0
    except RosError as error:
      return error.code
  if paramCount() != 8: return 22
  if paramStr(5) == "x": return 0
  var goal: Goal
  try:
    goal = parseGoal(paramStr(5), paramStr(6), paramStr(7))
  except RosError as error:
    return error.code
  let text = paramStr(8)
  if text.len == 0 or text.len > 4: return 22
  var polls = 0
  for value in text:
    if value notin {'0'..'9'}: return 22
    polls = polls * 10 + ord(value) - ord('0')
  if polls < 1 or polls > 4096: return 22
  let report = run([paramStr(1), paramStr(2), paramStr(3), paramStr(4)], goal, polls)
  if report.goalId != 0: echo "accepted goal=", report.goalId
  for index in 0..<report.feedbackUsed:
    echo "feedback[", report.feedback[index].len, "]: ", report.feedback[index]
  if report.terminalKind != 0:
    echo "terminal kind=", report.terminalKind, " goal=", report.goalId
    echo "result[", report.resultText.len, "]: ", report.resultText
  elif report.goalId != 0 or report.sendUnknown:
    echo "goal=", report.goalId, " send_unknown=", report.sendUnknown,
         " outcome unresolved; no replay or automatic cancel"
  result = code(report.primary)
  echo "primary=", result
  for index in 0..<4:
    echo "cleanup[", index, "]=", code(report.cleanup[index]), " attempted=",
        report.attempted[index]
    if result == 0 and report.attempted[index]: result = code(report.cleanup[index])

when isMainModule:
  quit(int(min(program(), 125'u32)))
