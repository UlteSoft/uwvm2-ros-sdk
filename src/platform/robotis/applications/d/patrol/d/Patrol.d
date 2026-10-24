/// @brief Bounded original TurtleBot3 Patrol application using real BetterC D APIs.
/// @details No Druntime/GC, native ROS socket, callback thread, retry or automatic
/// cancellation. The separate C entry only supplies actual WASI argc/argv.
/// @see Goal Report runPatrol patrolMain
module patrol;

import roswasm;
import roswasm.wire;
import core.stdc.stdio;
import core.stdc.stdlib : strtod;

@nogc nothrow:

/// @brief Complete original Vector3 Goal: square1/triangle2, metres, float count.
/// @details No field is projected and construction grants no native permission
/// or physical/model guarantee. Validation occurs before capability acquisition.
/// @see runPatrol patrolMain
struct Goal {
     double mode, distance, count;
}

/// @brief Own a complete original bounded UTF-8 Feedback/Result string.
/// @details Only data[0..size] is readable; size<=256 and no NUL/malformed UTF-8.
/// Successful decode copies bytes out of borrowed transport scratch.
/// @see Report runPatrol
struct Text {
     ubyte[256] data;
     size_t size;
}

/// @brief Caller-owned original outcomes and every independently attempted close.
/// @details primary preserves numeric failures;110 means unresolved finite
/// polling. goalId retains full ulong/u64 identity; sendUnknown never permits
/// replay. Only feedback[0..feedbackUsed] and a nonzero-terminalKind result are
/// readable. cleanup/attempted use send/cancel-own/feedback/result order. Reserve
/// this approximately1MiB object before opening. One synchronous Guest caller.
/// @see runPatrol Goal Text
struct Report {
    uint primary;
    uint[4] cleanup;
    bool[4] attempted;
    ulong goalId;
    bool sendUnknown;
    Text[4096] feedback;
    size_t feedbackUsed;
    ubyte terminalKind;
    Text resultText;
}

private bool finite(double value) {
    union Bits {
         double value;
         ulong bits;
    }
    Bits encoded; encoded.value = value;
    return (encoded.bits & 0x7ff0000000000000UL) != 0x7ff0000000000000UL;
}

private bool integer(double value) {
    if (!finite(value)) return false;
    if (value <= -9007199254740992.0 || value >= 9007199254740992.0) return true;
    return cast(double)cast(long)value == value;
}

private uint originalText(const(ubyte)[] bytes, ref Text output) {
    Reader reader; reader.storage = bytes;
    const(ubyte)[] value;
    if (!reader.text(value, 256) || !reader.finish()) return reader.code ? reader.code : 22;
    output.data[0..value.length] = value;
    output.size = value.length;
    return 0;
}

/// @brief Send one full original Goal, poll complete values and close every role.
/// @details Uses actual shared Owner.request and canonical Reader/Writer APIs.
/// Four roles open before send; every acquired owner closes once after partial
/// construction or normal errors. Exact u64 ID, terminal kind2/3/4 and complete
/// strict UTF-8 decode precede terminal commit. A matching original server/driver
/// remains a separate program. No stronger cancel-any role or automatic cancel.
/// @param[in] aliases Four distinct NUL-free UTF-8 names,1..255 bytes, in send/
/// cancel-own/feedback/result order. Borrow unchanged until synchronous return.
/// @param[in] goal Complete finite original Goal; distance remains metres.
/// @param[in] polls Integer1..4096 iterations, at most two read RPCs per iteration.
/// @param[out] report Caller-owned approximately1MiB storage; no Owner/State escapes.
/// @return Primary status unchanged; cleanup outcomes are separately retained in
/// report and never overwrite the original failure. No cleanup after trap is promised.
/// @see Goal Report patrolMain
uint runPatrol(const(ubyte)[][4] aliases, Goal goal, uint polls, ref Report report) {
    report = Report.init;
    if (polls == 0 || polls > 4096 || (goal.mode != 1 && goal.mode != 2) ||
        !finite(goal.distance) || !integer(goal.count)) return report.primary = 22;
    foreach (index, alias; aliases) {
        if (alias.length == 0 || alias.length > 255 || !validUtf8(alias, true)) return report.primary = 22;
        foreach (earlier; 0..index) {
            if (aliases[earlier] == alias) return report.primary = 22;
        }
    }
    ubyte[24] encoded;
    Writer goalWriter; goalWriter.storage = encoded;
    if (!goalWriter.float64(goal.mode) || !goalWriter.float64(goal.distance) ||
        !goalWriter.float64(goal.count)) return report.primary = goalWriter.code;
    State[4] states;
    Owner[4] owners;
    bool[4] opened;
    scope(exit) {
        foreach_reverse (index; 0..4) {
            if (opened[index]) {
                report.attempted[index] = true;
                report.cleanup[index] = owners[index].close();
            }
        }
    }
    if (raw_abi_version() != 1) return report.primary = 95;
    foreach (index, alias; aliases) {
        const code = open(states[index], alias, owners[index]);
        if (code) return report.primary = code;
        opened[index] = true;
    }
    ubyte[269] buffer;
    report.sendUnknown = true;
    auto sent = owners[0].request(RPC.action_send_goal, encoded, buffer[0..8]);
    if (sent.code) return report.primary = sent.code;
    Reader idReader; idReader.storage = sent.data;
    ulong id;
    if (!idReader.integer(id) || !idReader.finish() || id == 0) return report.primary = 22;
    report.goalId = id;
    report.sendUnknown = false;
    ubyte[8] selector;
    Writer idWriter; idWriter.storage = selector;
    if (!idWriter.integer(id)) return report.primary = idWriter.code;
    foreach (iteration; 0..polls) {
        auto feedback = owners[2].request(RPC.action_receive_feedback, selector, buffer[0..268]);
        if (feedback.code == 0) {
            Reader reader; reader.storage = feedback.data;
            ulong received;
            if (!reader.integer(received) || received != id) return report.primary = 22;
            const code = originalText(feedback.data[8..$], report.feedback[report.feedbackUsed]);
            if (code) return report.primary = code;
            ++report.feedbackUsed;
        } else if (feedback.code != 11) return report.primary = feedback.code;
        auto result = owners[3].request(RPC.action_receive_result, selector, buffer);
        if (result.code == 11) continue;
        if (result.code) return report.primary = result.code;
        Reader reader; reader.storage = result.data;
        ulong received; ubyte kind;
        if (!reader.integer(received) || !reader.integer(kind) || received != id || kind < 2 || kind > 4)
            return report.primary = 22;
        const code = originalText(result.data[9..$], report.resultText);
        if (code) return report.primary = code;
        report.terminalKind = kind;
        return 0;
    }
    return report.primary = 110;
}

private const(ubyte)[] span(const(char)* text) {
    if (text is null) return null;
    foreach (size; 0..256) if (text[size] == 0) return cast(const(ubyte)[])text[0..size];
    return null;
}

private bool number(const(ubyte)[] text, bool count, out double value) {
    if (text.length == 0 || text.length > 255) return false;
    size_t at;
    if (text[0] == '+' || text[0] == '-') ++at;
    if (at == text.length) return false;
    foreach (byteValue; text[at..$]) {
        if (byteValue >= '0' && byteValue <= '9') continue;
        if (count || (byteValue != '+' && byteValue != '-' && byteValue != '.' && byteValue != 'e' && byteValue != 'E')) return false;
    }
    char[256] owned;
    owned[0..text.length] = cast(const(char)[])text;
    char* end;
    value = strtod(owned.ptr, &end);
    if (end != owned.ptr + text.length || !finite(value)) return false;
    if (count && value == 0) value = 0;
    return true;
}

private __gshared Report commandReport;

/// @brief Execute the actual BetterC D Patrol application from WASI argc/argv.
/// @details C startup passes immutable argv only; all Goal construction, action
/// sequencing, full original response validation, ownership and cleanup execute
/// in D. Accepts SEND CANCEL_OWN FEEDBACK RESULT s|t|x DIST COUNT POLLS. x opens
/// nothing. Complete text/IDs and every role status are printed after cleanup.
/// @param[in] argc Actual WASI argument count; exactly9 including program name.
/// @param[in] argv Borrowed original NUL-terminated argument pointers, live until return.
/// @return Primary then first cleanup/stdio failure; C startup caps process code to125.
/// @see runPatrol Goal Report
extern(C) export uint patrolMain(int argc, const(char)** argv) {
    if (argc != 9 || argv is null) return 22;
    auto mode = span(argv[5]);
    if (mode == cast(const(ubyte)[])"x") return 0;
    if (mode != cast(const(ubyte)[])"s" && mode != cast(const(ubyte)[])"t") return 22;
    Goal goal; goal.mode = mode[0] == 's' ? 1 : 2;
    if (!number(span(argv[6]), false, goal.distance) || !number(span(argv[7]), true, goal.count)) return 22;
    auto budget = span(argv[8]);
    if (budget.length == 0 || budget.length > 4) return 22;
    uint polls;
    foreach (value; budget) {
        if (value < '0' || value > '9') return 22;
        polls = polls * 10 + value - '0';
    }
    const(ubyte)[][4] aliases;
    foreach (index; 0..4) aliases[index] = span(argv[index + 1]);
    auto primary = runPatrol(aliases, goal, polls, commandReport);
    if (commandReport.goalId) printf("accepted goal=%llu\n", commandReport.goalId);
    foreach (index; 0..commandReport.feedbackUsed) {
        auto value = &commandReport.feedback[index];
        printf("feedback[%zu]: ", value.size);
        if (fwrite(value.data.ptr, 1, value.size, stdout) != value.size || fputc('\n', stdout) == EOF)
            if (!primary) primary = 5;
    }
    if (commandReport.terminalKind) {
        auto value = &commandReport.resultText;
        printf("terminal kind=%u goal=%llu\nresult[%zu]: ", cast(uint)commandReport.terminalKind, commandReport.goalId, value.size);
        if (fwrite(value.data.ptr, 1, value.size, stdout) != value.size || fputc('\n', stdout) == EOF)
            if (!primary) primary = 5;
    } else if (commandReport.goalId || commandReport.sendUnknown) {
        fprintf(stderr, "goal=%llu send_unknown=%u outcome unresolved; no replay or automatic cancel\n", commandReport.goalId, cast(uint)commandReport.sendUnknown);
    }
    fprintf(stderr, "primary=%u\n", primary);
    foreach (index; 0..4) {
        fprintf(stderr, "cleanup[%zu]=%u attempted=%u\n", cast(size_t)index, commandReport.cleanup[index], cast(uint)commandReport.attempted[index]);
        if (!primary && commandReport.attempted[index]) primary = commandReport.cleanup[index];
    }
    if (!primary && ferror(stdout)) primary = 5;
    return primary;
}
