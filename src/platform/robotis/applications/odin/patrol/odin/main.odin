// @brief Bounded original TurtleBot3 Patrol application using actual Odin/WASI APIs.
// @details Uses the selected real roswasm collection and original ROS2 action
// operations. No native ROS server/socket, callback thread, retry or automatic cancel.
// @see Goal Report run_patrol main
package main

import "core:fmt"
import "core:os"
import "core:strconv"
import ros "roswasm:roswasm"

// @brief Complete original Vector3 Goal: square1/triangle2, metres, float count.
// @details Count is the original decimal integer converted to finite f64.
// Construction grants no authority and implies no physical/model safety limit.
// @see run_patrol Report
Goal :: struct { mode, distance, count: f64 }

// @brief Own every byte of one original bounded Feedback/Result string.
// @details Only data[:size] is readable; size<=256, strict UTF-8 and NUL-free.
// Successful decode copies borrowed transport scratch before the next RPC.
// @see Report run_patrol
Text :: struct { data: [256]u8, size: int }

// @brief Caller-owned complete values, full goal ID and every role close.
// @details primary retains the first numeric failure;110 means unresolved finite
// polling. goal_id is full u64; send_unknown never authorizes replay. Only
// feedback[:feedback_used] and a nonzero-terminal_kind result are readable.
// cleanup/attempted use send/cancel-own/feedback/result order. Reserve this
// approximately1MiB object before opening. One synchronous Guest caller owns it.
// @see run_patrol Goal Text
Report :: struct {
    primary: u32,
    cleanup: [4]u32,
    attempted: [4]bool,
    goal_id: u64,
    send_unknown: bool,
    feedback: [4096]Text,
    feedback_used: int,
    terminal_kind: u8,
    result_text: Text,
}

@(private="file")
finite :: proc(value: f64) -> bool {
    return transmute(u64)value & 0x7ff0000000000000 != 0x7ff0000000000000
}

@(private="file")
integer :: proc(value: f64) -> bool {
    if !finite(value) { return false }
    if value <= -9007199254740992.0 || value >= 9007199254740992.0 { return true }
    return f64(i64(value)) == value
}

@(private="file")
failure :: proc(report: ^Report, code: u32) -> u32 {
    report.primary = code
    return code
}

@(private="file")
original_text :: proc(reader: ^ros.Reader, output: ^Text) -> u32 {
    value, ok := ros.get_string(reader, 256)
    if !ok || !ros.reader_finish(reader) { return reader.code == 0 ? 22 : reader.code }
    copy(output.data[:], transmute([]u8)value)
    output.size = len(value)
    return 0
}

// @brief Open exact roles, send one complete Goal and preserve all cleanup facts.
// @details Uses real shared Owner/request and canonical Reader/Writer APIs.
// All owner/state storage remains at stable addresses until every close returns.
// Matching u64 ID, kind2/3/4 and full strict UTF-8 decode precede terminal commit.
// Every acquired owner closes once after partial-open or normal failures. The
// original server/driver remains a separate cooperating program. No cancel-any
// role, automatic cancel, native server wait, replay or hardware recovery.
// @param aliases Four distinct NUL-free UTF-8 send/cancel-own/feedback/result
// names, each1..255 bytes, borrowed unchanged until this synchronous call returns.
// @param goal Complete finite original Goal; distance remains metres.
// @param polls Integer1..4096 iterations; each polls feedback and result once.
// @param report Caller-owned approximately1MiB stable storage; receives all values
// and per-role cleanup. No Owner/State pointer escapes. nil returns22.
// @return Primary status unchanged; inspect report.cleanup separately. A Wasm
// trap cannot promise cleanup or convert uncertainty into a known outcome.
// @see Goal Report Text
run_patrol :: proc(aliases: [4]string, goal: Goal, polls: int, report: ^Report) -> u32 {
    if report == nil { return 22 }
    report^ = Report{}
    if polls < 1 || polls > 4096 || (goal.mode != 1 && goal.mode != 2) ||
       !finite(goal.distance) || !integer(goal.count) { return failure(report, 22) }
    for alias, index in aliases {
        if len(alias) == 0 || len(alias) > 255 || !ros.valid_utf8(transmute([]u8)alias, true) {
            return failure(report, 22)
        }
        for earlier in 0..<index { if aliases[earlier] == alias { return failure(report, 22) } }
    }
    encoded: [24]u8
    writer := ros.Writer{storage=encoded[:], limit=len(encoded)}
    if !ros.put_float64(&writer, goal.mode) || !ros.put_float64(&writer, goal.distance) ||
       !ros.put_float64(&writer, goal.count) { return failure(report, writer.code) }
    states: [4]ros.State
    owners: [4]ros.Owner
    opened: [4]bool
    defer {
        for index := 3; index >= 0; index -= 1 {
            if opened[index] {
                report.attempted[index] = true
                report.cleanup[index] = ros.close(owners[index])
            }
        }
    }
    if ros.raw_abi_version() != 1 { return failure(report, 95) }
    for alias, index in aliases {
        owner, code := ros.open(&states[index], transmute([]u8)alias)
        if code != 0 { return failure(report, code) }
        owners[index], opened[index] = owner, true
    }
    buffer: [269]u8
    report.send_unknown = true
    sent := ros.request(owners[0], .action_send_goal, encoded[:], buffer[:8])
    if sent.code != 0 { return failure(report, sent.code) }
    id_reader := ros.Reader{storage=sent.data}
    id, ok := ros.get_integer(&id_reader, 8)
    if !ok || !ros.reader_finish(&id_reader) || id == 0 { return failure(report, 22) }
    report.goal_id, report.send_unknown = id, false
    selector: [8]u8
    selector_writer := ros.Writer{storage=selector[:], limit=len(selector)}
    if !ros.put_integer(&selector_writer, id, 8) { return failure(report, selector_writer.code) }
    for iteration in 0..<polls {
        feedback := ros.request(owners[2], .action_receive_feedback, selector[:], buffer[:268])
        if feedback.code == 0 {
            reader := ros.Reader{storage=feedback.data}
            received, valid := ros.get_integer(&reader, 8)
            if !valid || received != id { return failure(report, 22) }
            code := original_text(&reader, &report.feedback[report.feedback_used])
            if code != 0 { return failure(report, code) }
            report.feedback_used += 1
        } else if feedback.code != 11 { return failure(report, feedback.code) }
        result := ros.request(owners[3], .action_receive_result, selector[:], buffer[:])
        if result.code == 11 { continue }
        if result.code != 0 { return failure(report, result.code) }
        reader := ros.Reader{storage=result.data}
        received, valid := ros.get_integer(&reader, 8)
        kind, valid_kind := ros.get_integer(&reader, 1)
        if !valid || !valid_kind || received != id || kind < 2 || kind > 4 { return failure(report, 22) }
        code := original_text(&reader, &report.result_text)
        if code != 0 { return failure(report, code) }
        report.terminal_kind = u8(kind)
        return 0
    }
    return failure(report, 110)
}

@(private="file")
number :: proc(text: string, count: bool) -> (f64, bool) {
    bytes := transmute([]u8)text
    if len(bytes) == 0 || len(bytes) > 255 { return 0, false }
    start := 0
    if bytes[0] == '+' || bytes[0] == '-' { start = 1 }
    if start == len(bytes) { return 0, false }
    for value in bytes[start:] {
        if value >= '0' && value <= '9' { continue }
        if count || (value != '+' && value != '-' && value != '.' && value != 'e' && value != 'E') { return 0, false }
    }
    value, ok := strconv.parse_f64(text)
    if !ok || !finite(value) { return 0, false }
    return count && value == 0 ? 0 : value, true
}

@(private="file")
command_report: Report

@(private="file")
program :: proc(arguments: []string) -> u32 {
    if len(arguments) != 9 { return 22 }
    if arguments[5] == "x" { return 0 }
    if arguments[5] != "s" && arguments[5] != "t" { return 22 }
    distance, valid_distance := number(arguments[6], false)
    count, valid_count := number(arguments[7], true)
    if !valid_distance || !valid_count { return 22 }
    budget := transmute([]u8)arguments[8]
    if len(budget) == 0 || len(budget) > 4 { return 22 }
    polls := 0
    for value in budget {
        if value < '0' || value > '9' { return 22 }
        polls = polls * 10 + int(value - '0')
    }
    goal := Goal{mode=arguments[5] == "s" ? 1 : 2, distance=distance, count=count}
    primary := run_patrol([4]string{arguments[1], arguments[2], arguments[3], arguments[4]}, goal, polls, &command_report)
    if command_report.goal_id != 0 { fmt.println("accepted goal=", command_report.goal_id) }
    for index in 0..<command_report.feedback_used {
        value := &command_report.feedback[index]
        fmt.println("feedback[", value.size, "]: ", transmute(string)value.data[:value.size])
    }
    if command_report.terminal_kind != 0 {
        fmt.println("terminal kind=", command_report.terminal_kind, " goal=", command_report.goal_id)
        fmt.println("result: ", transmute(string)command_report.result_text.data[:command_report.result_text.size])
    } else if command_report.goal_id != 0 || command_report.send_unknown {
        fmt.println("goal=", command_report.goal_id, " send_unknown=", command_report.send_unknown,
                    " outcome unresolved; no replay or automatic cancel")
    }
    fmt.println("primary=", primary, " cleanup=", command_report.cleanup, " attempted=", command_report.attempted)
    for value, index in command_report.cleanup {
        if primary == 0 && command_report.attempted[index] { primary = value }
    }
    return primary
}

// @brief Execute the actual Odin WASI argv entry after one bounded application run.
// @details x opens nothing. Every normal role close precedes printed complete
// outcomes and process exit. Only the represented process code is capped at125.
// @see run_patrol Goal Report
main :: proc() {
    code := program(os.args)
    os.exit(int(min(code, 125)))
}
