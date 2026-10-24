/**
 * @brief Bounded original Patrol application using real generated AS actions.
 * @details Profile entries select exact original Goal/Result/Feedback codecs and
 * ROS2 NativeApi. WASI basic I/O is separate from ROS authority. No retry,
 * automatic cancel, native thread or socket bridge is introduced.
 * @see readRequest drive writeReport
 */
import {validUtf8} from '../../../../../../../assemblyscript/codecs';
import {BoundedActionClient, RPCCleanup} from '../../../../../../../custom-types/robotis-turtlebot3-humble-complete/bounded_interfaces';

@external('wasi_snapshot_preview1', 'fd_read') declare function fd_read(fd: u32, vectors: usize, count: u32, size: usize): u32;
@external('wasi_snapshot_preview1', 'fd_write') declare function fd_write(fd: u32, vectors: usize, count: u32, size: usize): u32;
@external('wasi_snapshot_preview1', 'proc_exit') declare function proc_exit(code: u32): void;

/**
 * @brief Preserve all explicit command inputs before opening any role.
 * @details aliases are send/cancel-own/feedback/result. mode is s/t/x; distance
 * is metres and count is the original integer converted to finite float64.
 * polls is 1..4096. encode selects pure 24-byte output with no native API use.
 * status 22 represents malformed basic input. This type grants nothing.
 * @see readRequest drive
 */
export class Request
{
    status: u32 = 0;
    aliases: Array<string> = [ '', '', '', '' ];
    mode: string = '';
    distance: f64 = 0;
    count: f64 = 0;
    polls: i32 = 0;
    encode: bool = false;
}

/**
 * @brief Retain full original text, opaque ID and every cleanup outcome.
 * @details primary is the original ABI failure or 110 for unresolved finite
 * polling. goalId is full u64; sendUnknown never permits replay. feedback has
 * preallocated slots, with feedbackUsed populated entries. terminalKind 2/3/4
 * is committed only after full generated decode. construction rollback and
 * normal close facts remain separate. Wasm abort/trap cannot guarantee cleanup.
 * @see Report.constructor drive writeReport
 */
export class Report
{
    primary: u32 = 0;
    goalId: u64 = 0;
    sendUnknown: bool = false;
    feedback: Array<string> = [];
    feedbackUsed: i32 = 0;
    terminalKind: u8 = 0;
    result: string = '';
    construction: RPCCleanup = new RPCCleanup(0, []);
    cleanup: RPCCleanup = new RPCCleanup(0, []);

    /**
     * @brief Reserve bounded feedback storage before capability acquisition.
     * @details No native API is called. Invalid capacity leaves primary 22.
     * @param polls Integer 1..4096 lifetime feedback slots.
     * @see drive Request
     */
    constructor(polls: i32)
    {
        if(polls < 1 || polls > 4096)
            this.primary = 22;
        else
            this.feedback = new Array<string>(polls).fill('');
    }
}

class TextField
{
    status: u32 = 22;
    value: string = '';
}

function exact(bytes: Uint8Array): bool
{
    const vectors = new Uint32Array(2), used = new Uint32Array(1);
    let at: i32 = 0;
    while(at < bytes.length)
    {
        vectors[0] = <u32>(bytes.dataStart + at);
        vectors[1] = <u32>(bytes.length - at);
        used[0] = 0;
        if(fd_read(0, vectors.dataStart, 1, used.dataStart) || used[0] == 0 || used[0] > vectors[1])
            return false;
        at += <i32>used[0];
    }
    return true;
}

function readText(): TextField
{
    const result = new TextField(), prefix = new Uint8Array(1);
    if(!exact(prefix) || prefix[0] == 0)
        return result;
    const bytes = new Uint8Array(prefix[0]);
    if(!exact(bytes) || !validUtf8(bytes))
        return result;
    for(let index = 0; index < bytes.length; index++)
        if(bytes[index] == 0)
            return result;
    result.value = String.UTF8.decode(bytes.buffer);
    result.status = 0;
    return result;
}

function decimal(text: string, integer: bool): bool
{
    if(text.length == 0 || text.length > 255)
        return false;
    let at = 0, digits = 0;
    if(text.charCodeAt(at) == 43 || text.charCodeAt(at) == 45)
        at++;
    while(at < text.length && text.charCodeAt(at) >= 48 && text.charCodeAt(at) <= 57)
    {
        at++;
        digits++;
    }
    if(!integer && at < text.length && text.charCodeAt(at) == 46)
    {
        at++;
        while(at < text.length && text.charCodeAt(at) >= 48 && text.charCodeAt(at) <= 57)
        {
            at++;
            digits++;
        }
    }
    if(digits == 0)
        return false;
    if(!integer && at < text.length && (text.charCodeAt(at) == 101 || text.charCodeAt(at) == 69))
    {
        at++;
        if(at < text.length && (text.charCodeAt(at) == 43 || text.charCodeAt(at) == 45))
            at++;
        const start = at;
        while(at < text.length && text.charCodeAt(at) >= 48 && text.charCodeAt(at) <= 57)
            at++;
        if(at == start)
            return false;
    }
    return at == text.length;
}

/**
 * @brief Read/validate the complete bounded command before constructing NativeApi.
 * @details Basic stdin uses eight u8-length/strict UTF-8 fields SEND CANCEL_OWN
 * FEEDBACK RESULT MODE DIST COUNT POLLS, or four fields encode MODE DIST COUNT.
 * x returns without checking model numbers or opening a role. Nonfinite values,
 * hex/locale/whitespace and non-integer count are refused. No ROS call occurs.
 * @return Request with all original fields or status 22; no partial goal is sent.
 * @see Request Report drive
 */
export function readRequest(): Request
{
    const result = new Request(), first = readText();
    if(first.status)
    {
        result.status = first.status;
        return result;
    }
    result.encode = first.value == 'encode';
    const fields: Array<string> = result.encode ? [] : [ first.value ];
    const total = result.encode ? 3 : 8;
    while(fields.length < total)
    {
        const next = readText();
        if(next.status)
        {
            result.status = next.status;
            return result;
        }
        fields.push(next.value);
    }
    const offset = result.encode ? 0 : 4;
    result.mode = fields[offset];
    if(!result.encode)
    {
        for(let index = 0; index < 4; index++)
            result.aliases[index] = fields[index];
        if(result.mode == 'x')
            return result;
    }
    if((result.mode != 's' && result.mode != 't') || !decimal(fields[offset + 1], false) || !decimal(fields[offset + 2], true))
    {
        result.status = 22;
        return result;
    }
    result.distance = parseFloat(fields[offset + 1]);
    result.count = parseFloat(fields[offset + 2]);
    if(result.count == 0)
        result.count = 0;  // Original float(int('-0')).
    if(!isFinite(result.distance) || !isFinite(result.count))
    {
        result.status = 22;
        return result;
    }
    if(!result.encode)
    {
        const text = fields[7];
        if(text.length == 0 || text.length > 4)
        {
            result.status = 22;
            return result;
        }
        for(let index = 0; index < text.length; index++)
        {
            const digit = text.charCodeAt(index);
            if(digit < 48 || digit > 57)
            {
                result.status = 22;
                return result;
            }
            result.polls = result.polls * 10 + digit - 48;
        }
        if(result.polls < 1 || result.polls > 4096)
            result.status = 22;
    }
    return result;
}

/**
 * @brief Execute one complete typed Goal/feedback/result sequence and all closes.
 * @details Uses only actual generated BoundedActionClient APIs and full typed
 * values. Construction rollback is preserved. Matching terminal decode commits
 * ownership; cancellation is never automatic and no cancel-any alias is opened.
 * Call on one Guest thread. No native wait/server, retry or hardware recovery.
 * @param client Exact profile's real generated client, with four explicit roles.
 * @param goal Complete original generated Goal, unchanged while encoding/sending.
 * @param report Caller-owned preallocated Report; keep it alive until all output is read.
 * @param polls Integer 1..4096 finite feedback/result iterations.
 * @param feedbackText Typed projection of the complete original Feedback.state string.
 * @param resultText Typed projection of the complete original Result.result string.
 * @return Same Report, including primary, complete values and every close status.
 * @see Report readRequest writeReport
 */
export function drive<G, R, F>(client: BoundedActionClient<G, R, F>,
                               goal: G,
                               report: Report,
                               polls: i32,
                               feedbackText: (value: F) => string,
                               resultText: (value: R) => string): Report
{
    report.construction = client.constructionCleanup();
    if(report.construction.primary)
    {
        report.primary = report.construction.primary;
        return report;
    }
    if(!report.primary)
    {
        report.sendUnknown = true;
        const sent = client.sendGoal(goal);
        report.primary = sent.status;
        if(!report.primary)
        {
            report.goalId = sent.id;
            report.sendUnknown = false;
        }
    }
    for(let iteration = 0; !report.primary && report.terminalKind == 0 && iteration < polls; iteration++)
    {
        const feedback = client.feedback(report.goalId);
        if(!feedback.status)
            report.feedback[report.feedbackUsed++] = feedbackText(changetype<F>(feedback.value));
        else if(feedback.status != 11)
            report.primary = feedback.status;
        if(report.primary)
            break;
        const result = client.result(report.goalId);
        if(!result.status)
        {
            report.result = resultText(changetype<R>(result.value));
            report.terminalKind = result.kind;
        }
        else if(result.status != 11)
            report.primary = result.status;
    }
    if(!report.primary && report.terminalKind == 0)
        report.primary = 110;
    report.cleanup = client.closeChecked(report.primary);
    return report;
}

/**
 * @brief Write one bounded complete basic stdout value without a ROS grant.
 * @details Handles partial writes with finite progress; zero progress returns 5.
 * No retry of any ROS operation or dynamic native transport is involved.
 * @param bytes Borrowed immutable bytes, at most 4096; unchanged until return.
 * @return Original WASI status, 0 on complete write, 22 for oversized input or 5 on no progress.
 * @see writeReport finish
 */
export function writeBytes(bytes: Uint8Array): u32
{
    if(bytes.length > 4096)
        return 22;
    const vectors = new Uint32Array(2), used = new Uint32Array(1);
    let at: i32 = 0;
    while(at < bytes.length)
    {
        vectors[0] = <u32>(bytes.dataStart + at);
        vectors[1] = <u32>(bytes.length - at);
        used[0] = 0;
        const status = fd_write(1, vectors.dataStart, 1, used.dataStart);
        if(status)
            return status;
        if(used[0] == 0 || used[0] > vectors[1])
            return 5;
        at += <i32>used[0];
    }
    return 0;
}

function writeText(text: string): u32
{
    return writeBytes(Uint8Array.wrap(String.UTF8.encode(text)));
}

/**
 * @brief Print complete original observations and separate cleanup statuses.
 * @details All closes have already been attempted before stdout is accessed.
 * The full opaque u64 goalId is rendered without narrowing. Unknown outcome is
 * explicit; output never implies automatic cancellation or physical completion.
 * @param report Borrowed completed Report; no native API is invoked.
 * @return Primary then first independent cleanup/output failure, or 0.
 * @see Report drive writeBytes
 */
export function writeReport(report: Report): u32
{
    let output: u32 = 0;
    if(report.goalId)
        output = writeText('accepted goal=' + report.goalId.toString() + '\n');
    for(let index = 0; index < report.feedbackUsed; index++)
    {
        const text = report.feedback[index];
        const status = writeText('feedback[' + Uint8Array.wrap(String.UTF8.encode(text)).length.toString() + ']: ' + text + '\n');
        if(!output)
            output = status;
    }
    if(report.terminalKind)
    {
        const status = writeText('terminal kind=' + report.terminalKind.toString() + ' goal=' + report.goalId.toString() + '\nresult: ' + report.result + '\n');
        if(!output)
            output = status;
    }
    else if(report.goalId || report.sendUnknown)
    {
        const status = writeText('outcome unresolved; no replay or automatic cancel\n');
        if(!output)
            output = status;
    }
    let cleanup: u32 = 0;
    for(let index = 0; index < report.construction.statuses.length; index++)
    {
        const value = report.construction.statuses[index];
        if(!cleanup)
            cleanup = value;
        const status = writeText('rollback[' + index.toString() + ']=' + value.toString() + '\n');
        if(!output)
            output = status;
    }
    for(let index = 0; index < report.cleanup.statuses.length; index++)
    {
        const value = report.cleanup.statuses[index];
        if(!cleanup)
            cleanup = value;
        const status = writeText('cleanup[' + index.toString() + ']=' + value.toString() + '\n');
        if(!output)
            output = status;
    }
    return report.primary ? report.primary : cleanup ? cleanup : output;
}

/**
 * @brief End this WASI command with a representable process status.
 * @details Does not close capabilities or cancel a goal; call after checked cleanup.
 * @param code Original primary/cleanup status; values above 125 are represented as 125.
 * @see writeReport drive
 */
export function finish(code: u32): void
{
    proc_exit(code < 126 ? code : 125);
}
