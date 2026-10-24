/// @brief Complete original Patrol Vector3 Goal without field projection.
/// @details mode is square1/triangle2; distance is metres; count is the original
/// integer represented as finite Double. Construction grants no native authority
/// or physical/model guarantee. encode_goal validates before any role opens.
/// @see encode_goal run Report
pub(all) struct Goal {
  mode : Double
  distance : Double
  count : Double
}

/// @brief Retain complete original values, full opaque ID and every role close.
/// @details primary preserves original numeric failures;110 means unresolved
/// finite polling. goal_id retains all UInt64 bits; send_unknown never permits
/// replay. Only feedback[0..feedback_used) is populated. terminal_kind2/3/4
/// accompanies a fully decoded original result_text. cleanup keeps every real
/// shared outcome; session retains native retirement diagnostics after shutdown.
/// One synchronous Guest caller owns this mutable carrier; trap cleanup is not promised.
/// @see run Goal
pub(all) struct Report {
  mut primary : Int
  mut goal_id : UInt64
  mut send_unknown : Bool
  feedback : Array[String]
  mut feedback_used : Int
  mut terminal_kind : Int
  mut result_text : String
  mut cleanup : @ros.CleanupReport?
  mut session : @ros.Session?
}

fn integer(value : Double) -> Bool {
  if value.is_nan() || value.is_inf() { return false }
  let bits = value.reinterpret_as_uint64()
  if (bits & 0x7fffffffffffffffUL) == 0UL { return true }
  let exponent = ((bits >> 52) & 2047UL).to_int() - 1023
  if exponent < 0 { return false }
  if exponent >= 52 { return true }
  (bits & ((1UL << (52 - exponent)) - 1UL)) == 0UL
}

/// @brief Encode every original Vector3 field as complete canonical24 bytes.
/// @details Pure encoding, with finite metre value and mathematically integral
/// count checks; no native API or unit conversion. Count zero is normalized to
/// original float(int('-0')) positive zero.
/// @param goal Borrowed complete original Goal, unchanged during encoding.
/// @return Owned24-byte little-endian value or numeric invalid22.
/// @see Goal run
pub fn encode_goal(goal : Goal) -> Result[Bytes, Int] {
  if (goal.mode != 1.0 && goal.mode != 2.0) || goal.distance.is_nan() ||
     goal.distance.is_inf() || !integer(goal.count) { return Err(22) }
  let values = [goal.mode, goal.distance, if goal.count == 0.0 { 0.0 } else { goal.count }]
  Ok(Bytes::makei(24, fn(i) {
    let bits = values[i / 8].reinterpret_as_uint64()
    ((bits >> ((i % 8) * 8)) & 255UL).to_int().to_byte()
  }))
}

fn original_text(bytes : Bytes) -> Result[String, Int] {
  if bytes.length() > 260 { return Err(22) }
  let text = match @wire.read_string(bytes) { Ok(value) => value; Err(code) => return Err(code) }
  let encoded = match @wire.bounded_utf8(text, 256) { Ok(value) => value; Err(code) => return Err(code) }
  for value in encoded { if value.to_int() == 0 { return Err(22) } }
  Ok(text)
}

fn execute(node : @ros.Node, aliases : Array[String], encoded : Bytes, polls : Int,
           report : Report) -> Int {
  let roles : Array[@ros.Resource?] = Array::make(4, None)
  let operations = [@ros.ActionSendGoal, @ros.ActionCancelOwnGoal,
                    @ros.ActionReceiveFeedback, @ros.ActionReceiveResult]
  for i = 0; i < 4; i = i + 1 {
    match node.open(aliases[i], operations[i]) {
      Err(code) => return code
      Ok(value) => roles[i] = Some(value)
    }
  }
  let sender = match roles[0] { Some(value) => value; None => return 9 }
  let feedback = match roles[2] { Some(value) => value; None => return 9 }
  let result = match roles[3] { Some(value) => value; None => return 9 }
  report.send_unknown = true
  let sent = sender.request(encoded, 8)
  if sent.code != 0 { return sent.code }
  let id = match @wire.read_u64(sent.data) { Ok(value) => value; Err(code) => return code }
  if id == 0UL { return 22 }
  report.goal_id = id
  report.send_unknown = false
  let selector = @wire.u64(id)
  for i = 0; i < polls; i = i + 1 {
    let update = feedback.request(selector, 268)
    if update.code == 0 {
      if update.data.length() < 8 { return 22 }
      let received = match @wire.read_u64(update.data[0:8].to_owned()) { Ok(value) => value; Err(code) => return code }
      if received != id { return 22 }
      let text = match original_text(update.data[8:].to_owned()) { Ok(value) => value; Err(code) => return code }
      report.feedback[report.feedback_used] = text
      report.feedback_used = report.feedback_used + 1
    } else if update.code != 11 { return update.code }
    let reply = result.request(selector, 269)
    if reply.code == 11 { continue }
    if reply.code != 0 { return reply.code }
    if reply.data.length() < 9 { return 22 }
    let received = match @wire.read_u64(reply.data[0:8].to_owned()) { Ok(value) => value; Err(code) => return code }
    let kind = reply.data[8].to_int()
    if received != id || kind < 2 || kind > 4 { return 22 }
    let text = match original_text(reply.data[9:].to_owned()) { Ok(value) => value; Err(code) => return code }
    report.result_text = text
    report.terminal_kind = kind
    return 0
  }
  110
}

/// @brief Send one full Goal, poll original feedback/result and close every role.
/// @details Uses actual ROS2 Resource operations and shared canonical codecs.
/// Every acquired role closes once, including partial construction. Full u64 ID,
/// terminal kind2/3/4 and complete strict UTF-8 decode precede terminal commit;
/// no builtin Fibonacci/action projection is reinterpreted. Original native
/// server/driver remains a separate program. No cancel-any role, native wait,
/// replay, automatic cancellation or physical recovery. Matching real MoonBit
/// memory-layout/runtime qualification remains required; source is not a Guest receipt.
/// @param aliases Four distinct1..255-byte NUL-free UTF-8 send/cancel-own/feedback/
/// result names, borrowed unchanged during one synchronous Guest run.
/// @param goal Complete original Goal with metre/integer-count semantics.
/// @param polls Integer1..4096; each iteration polls both channels once.
/// @return Report with original primary, full values and all shared cleanup facts.
/// @see Goal Report encode_goal
pub fn run(aliases : Array[String], goal : Goal, polls : Int) -> Report {
  let report : Report = {
    primary: 0, goal_id: 0UL, send_unknown: false,
    feedback: Array::make(if polls >= 1 && polls <= 4096 { polls } else { 0 }, ""),
    feedback_used: 0, terminal_kind: 0, result_text: "", cleanup: None, session: None,
  }
  let encoded = match encode_goal(goal) {
    Ok(value) => value
    Err(code) => { report.primary = code; return report }
  }
  if aliases.length() != 4 || polls < 1 || polls > 4096 { report.primary = 22; return report }
  for i = 0; i < 4; i = i + 1 {
    let name = match @wire.bounded_utf8(aliases[i], 255) {
      Ok(value) => value
      Err(code) => { report.primary = code; return report }
    }
    if name.length() == 0 { report.primary = 22; return report }
    for value in name { if value.to_int() == 0 { report.primary = 22; return report } }
    for j = 0; j < i; j = j + 1 { if aliases[j] == aliases[i] { report.primary = 22; return report } }
  }
  let session = match @ros.new_session() {
    Ok(value) => value
    Err(code) => { report.primary = code; return report }
  }
  report.session = Some(session)
  match session.node("turtlebot3-patrol") {
    Err(code) => report.primary = code
    Ok(node) => report.primary = execute(node, aliases, encoded, polls, report)
  }
  report.cleanup = Some(session.shutdown())
  report
}

fn read_alias() -> String {
  let size = @stdio.read_byte()
  if size == 0 { @stdio.exit(22); abort("unreachable") }
  let bytes = @stdio.read_bytes(size)
  let text = match @wire.read_string(@wire.i32(size) + bytes) {
    Ok(value) => value
    Err(code) => { @stdio.exit(code); abort("unreachable") }
  }
  for value in bytes { if value.to_int() == 0 { @stdio.exit(22); abort("unreachable") } }
  text
}

fn output(bytes : Bytes) -> Unit {
  let code = @stdio.write_bytes(bytes)
  if code != 0 { @stdio.exit(code) }
}

// Basic stdin: mode u8(0 quit,1 square,2 triangle), four counted UTF-8 aliases,
// distance f64LE, integer-count f64LE, poll-budget u16LE. No implicit defaults.
// Basic stdout: P08 + primary i32LE + goal u64LE + unknown u8; F + counted UTF-8;
// R + kind u8 + counted UTF-8; C + counted alias + handle u64 + code i32 +
// attempted/completed/previous bytes. All output follows actual checked cleanup.
fn main {
  let selected = @stdio.read_byte()
  if selected == 0 { @stdio.exit(0); return }
  if selected != 1 && selected != 2 { @stdio.exit(22); return }
  let aliases = [read_alias(), read_alias(), read_alias(), read_alias()]
  let distance = match @wire.read_u64(@stdio.read_bytes(8)) { Ok(value) => value.reinterpret_as_double(); Err(_) => abort("distance") }
  let count = match @wire.read_u64(@stdio.read_bytes(8)) { Ok(value) => value.reinterpret_as_double(); Err(_) => abort("count") }
  let budget = @stdio.read_bytes(2)
  let polls = budget[0].to_int() | (budget[1].to_int() << 8)
  let goal : Goal = { mode: if selected == 1 { 1.0 } else { 2.0 }, distance, count }
  let report = run(aliases, goal, polls)
  output(b"P08" + @wire.i32(report.primary) + @wire.u64(report.goal_id) + @wire.bool_bytes(report.send_unknown))
  for i = 0; i < report.feedback_used; i = i + 1 {
    let bytes = match @wire.string_bytes(report.feedback[i]) { Ok(value) => value; Err(_) => abort("retained feedback") }
    output(b"F" + bytes)
  }
  if report.terminal_kind != 0 {
    let bytes = match @wire.string_bytes(report.result_text) { Ok(value) => value; Err(_) => abort("retained result") }
    output(b"R" + Bytes::makei(1, fn(_) { report.terminal_kind.to_byte() }) + bytes)
  }
  let mut status = report.primary
  match report.cleanup {
    None => ()
    Some(cleanup) => {
      if status == 0 && cleanup.code != 0 { status = cleanup.code }
      for row in cleanup.outcomes {
        let alias = match @wire.string_bytes(row.alias) { Ok(value) => value; Err(_) => abort("retained cleanup alias") }
        output(b"C" + alias + @wire.u64(row.handle) + @wire.i32(row.code) +
               @wire.bool_bytes(row.attempted) + @wire.bool_bytes(row.completed) + @wire.bool_bytes(row.previous))
        if status == 0 && row.code != 0 { status = row.code }
      }
    }
  }
  @stdio.exit(status)
}
