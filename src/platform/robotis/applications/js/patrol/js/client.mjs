/**
 * @file client.mjs
 * @brief Execute the bounded original Patrol client with real generated actions.
 * @details Runs inside the actual embedded JavaScript Wasm engine. Profile
 * wrappers select the exact generated original codecs and action owner. No
 * Node/socket/native ROS fallback, permission creation or automatic replay.
 * @see runPatrol command parseGoal
 */
import {
    Session,
    RosError,
    createGuestSession,
    readGuestByte,
    writeGuestOutput,
} from '../../../../../../../javascript/guest.mjs';

const encoder = new TextEncoder();
const decoder = new TextDecoder('utf-8', {fatal : true, ignoreBOM : true});

/**
 * @brief Retain this command's complete report for independent diagnostics.
 * @details Updated only by command after checked role cleanup. It retains the
 * original primary/construction/cleanup objects, including arbitrary thrown
 * values. Reading it grants no authority or permission to replay a goal.
 * @see command runPatrol
 */
export let lastReport = null;

function invalid(description)
{
    throw new RosError(22, description);
}

/**
 * @brief Parse a complete original square/triangle Vector3 Goal before opening.
 * @details Each numeric string has at most 255 ASCII bytes. Decimal metre
 * distance and signed integer count become finite float64 values. Count uses
 * BigInt before Number, preserving Python float(int(...)) rounding and '-0'.
 * Interactive/unbounded original input is a documented narrower-domain gap.
 * @param {string} mode Exactly s or t; the command handles x without a Session.
 * @param {string} distance Finite original distance in metres; no model limit inferred.
 * @param {string} count Signed decimal integer converted to original float64 count.
 * @returns {{goal:{x:number,y:number,z:number}}} Full original generated-codec value.
 * @throws {RosError} Invalid 22 before any open; no native effect occurs.
 * @see runPatrol command
 */
export function parseGoal(mode, distance, count)
{
    if(mode !== 's' && mode !== 't')
        invalid('square/triangle mode');
    if(typeof distance !== 'string' || typeof count !== 'string' || distance.length < 1 || distance.length > 255 || count.length < 1 || count.length > 255 ||
       !/^[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?$/.test(distance) || !/^[+-]?[0-9]+$/.test(count))
        invalid('bounded decimal arguments');
    const goal = {
        goal : {x : mode === 's' ? 1 : 2, y : Number(distance), z : Number(BigInt(count))}
    };
    if(!Number.isFinite(goal.goal.y) || !Number.isFinite(goal.goal.z))
        invalid('finite goal');
    return goal;
}

function code(error)
{
    return error instanceof RosError && Number.isInteger(error.code) && error.code > 0 ? error.code : 22;
}

/**
 * @brief Run one complete original Goal/feedback/result sequence with checked cleanup.
 * @details The real generated action owner handles full u64 BigInt IDs, exact
 * codecs, independent roles, terminal ownership and construction rollback. A
 * finite 1..4096 caller-driven poll budget replaces indefinite native spin.
 * No original server is started; it remains a separate cooperating program.
 * No automatic cancellation, stronger cancel-any grant, retry or robot recovery
 * occurs. Unknown thrown values and independent cleanup exceptions stay retained.
 * @param {Function} PatrolClient Exact generated class selected by a profile wrapper.
 * @param {Session} session Borrowed genuine ROS2 Session; single caller, no async sharing.
 * @param {string[]} aliases Four distinct send/cancel-own/feedback/result aliases,
 * each 1..255 strict NUL-free UTF-8 bytes, independently granted for original Patrol.
 * @param {object} goal Borrowed complete original generated Goal value, unchanged while sending.
 * @param {number} polls Integer 1..4096; each iteration polls feedback and result once.
 * @returns {object} Retained primary code/value, complete feedback/result, full
 * goalId, sendUnknown and every construction/cleanup fact. Neither acceptance
 * nor local close proves physical completion or authorizes replay.
 * @throws {RosError} Pure argument validation failed before any capability open.
 * @see parseGoal command
 */
export function runPatrol(PatrolClient, session, aliases, goal, polls)
{
    if(!(session instanceof Session) || session.version !== 2 || typeof PatrolClient !== 'function' || !Array.isArray(aliases) || aliases.length !== 4 ||
       new Set(aliases).size !== 4 || !Number.isInteger(polls) || polls < 1 || polls > 4096)
        invalid('original roles and poll bound');
    for(const alias of aliases)
    {
        if(typeof alias !== 'string' || alias.includes('\0'))
            invalid('original alias');
        const bytes = encoder.encode(alias);
        if(!bytes.length || bytes.length > 255 || decoder.decode(bytes) !== alias)
            invalid('strict alias UTF-8');
    }
    if(!goal || !goal.goal || (goal.goal.x !== 1 && goal.goal.x !== 2) || !Number.isFinite(goal.goal.y) || !Number.isFinite(goal.goal.z) ||
       !Number.isInteger(goal.goal.z))
        invalid('complete finite Goal');
    const report = {
        primary : 0,
        errorKnown : false,
        error : undefined,
        goalId : 0n,
        sendUnknown : false,
        feedback : new Array(polls).fill(null),
        feedbackUsed : 0,
        terminal : null,
        constructionFailure : null,
        cleanup : null,
        cleanupErrorKnown : false,
        cleanupError : undefined,
    };
    let client = null;
    try
    {
        client = new PatrolClient(session,
                                  {
                                      send : aliases[0],
                                      cancelOwn : aliases[1],
                                      feedback : aliases[2],
                                      result : aliases[3],
                                  },
                                  1);
        report.sendUnknown = true;
        report.goalId = client.sendGoal(goal);
        report.sendUnknown = false;
        for(let iteration = 0; iteration < polls; iteration++)
        {
            try
            {
                const value = client.feedback(report.goalId);
                report.feedback[report.feedbackUsed++] = value.state;
            }
            catch(error)
            {
                if(!(error instanceof RosError) || error.code !== 11)
                    throw error;
            }
            try
            {
                report.terminal = client.result(report.goalId);
                break;
            }
            catch(error)
            {
                if(!(error instanceof RosError) || error.code !== 11)
                    throw error;
            }
        }
        if(report.terminal === null)
            throw new RosError(110, 'finite Patrol poll budget');
    }
    catch(error)
    {
        report.errorKnown = true;
        report.error = error;
        // The generated preallocated carrier preserves arbitrary/frozen thrown
        // values and every partial-open cleanup fact. Do not reopen or retry it.
        if(error && error.primaryKnown === true && typeof error.diagnostics === 'function')
        {
            report.constructionFailure = error;
            report.primary = code(error.primary);
            report.cleanup = error.cleanup;
            report.cleanupErrorKnown = error.cleanupThrew;
            report.cleanupError = error.cleanupException;
        }
        else
            report.primary = code(error);
    }
    finally
    {
        if(client !== null)
        {
            try
            {
                report.cleanup = client.closeChecked(report.primary);
            }
            catch(error)
            {
                report.cleanupErrorKnown = true;
                report.cleanupError = error;
            }
        }
    }
    return report;
}

function readText()
{
    const first = readGuestByte();
    if(!Number.isInteger(first) || first < 1 || first > 255)
        invalid('counted basic stdin');
    const bytes = new Uint8Array(first);
    for(let index = 0; index < bytes.length; index++)
    {
        const value = readGuestByte();
        if(!Number.isInteger(value) || value < 0 || value > 255)
            invalid('complete basic stdin');
        bytes[index] = value;
    }
    if(bytes.includes(0))
        invalid('NUL-free command text');
    return decoder.decode(bytes);
}

function write(bytes)
{
    const result = writeGuestOutput(bytes);
    if(result !== 0)
        throw new RosError(result, 'basic stdout');
}

/**
 * @brief Execute a real embedded-JavaScript Patrol command from bounded basic stdin.
 * @details Reads eight u8-length/UTF-8 fields: SEND CANCEL_OWN FEEDBACK RESULT
 * MODE DIST COUNT POLLS. x returns before creating a Session. Alternatively,
 * four fields encode MODE DIST COUNT write exactly the complete 24 goal bytes.
 * Output carries full original text and separate primary/cleanup information;
 * engine execution alone is not a positive ROS/Guest integration receipt.
 * @param {Function} PatrolClient Exact real generated class selected by the wrapper.
 * @param {object} GoalCodec Exact complete original generated Goal codec for that profile.
 * @returns {number} Primary status, then cleanup status; process exit is capped at 125.
 * @throws {Error} Malformed input, unexpected engine/stdio or real bridge failure
 * remains visible. No host fallback or implicit retry is used.
 * @see runPatrol parseGoal
 */
export function command(PatrolClient, GoalCodec)
{
    const first = readText();
    if(first === 'encode')
    {
        const goal = parseGoal(readText(), readText(), readText());
        write(GoalCodec.encode(goal));
        return 0;
    }
    const fields = [ first ];
    for(let index = 1; index < 8; index++)
        fields.push(readText());
    if(fields[4] === 'x')
        return 0;
    const goal = parseGoal(fields[4], fields[5], fields[6]);
    if(!/^[0-9]{1,4}$/.test(fields[7]))
        invalid('bounded poll count');
    const report = runPatrol(PatrolClient, createGuestSession(), fields.slice(0, 4), goal, Number(fields[7]));
    lastReport = report;
    if(report.goalId)
        write(encoder.encode(`accepted goal=${report.goalId}\n`));
    for(let index = 0; index < report.feedbackUsed; index++)
    {
        const value = report.feedback[index];
        write(encoder.encode(`feedback[${encoder.encode(value).length}]: ${value}\n`));
    }
    if(report.terminal !== null)
    {
        const value = report.terminal.value.result;
        write(encoder.encode(`terminal kind=${report.terminal.kind} goal=${report.goalId}\nresult[${encoder.encode(value).length}]: ${value}\n`));
    }
    else if(report.goalId || report.sendUnknown)
    {
        write(encoder.encode(`goal=${report.goalId} send_unknown=${report.sendUnknown} outcome unresolved; no replay or automatic cancel\n`));
    }
    const cleanup = report.cleanup === null ? 0 : report.cleanup.cleanupError;
    write(encoder.encode(`primary=${report.primary} cleanup=${cleanup} cleanup_threw=${report.cleanupErrorKnown}\n`));
    if(report.cleanup !== null)
    {
        for(const row of report.cleanup.statuses)
        {
            write(encoder.encode(`role=${row.role} status=${row.status} attempted=${row.attempted} retained=${row.retained} failure=${
                row.firstFailureStatus} threw=${row.firstFailureThrew}\n`));
        }
    }
    return Math.min(report.primary || cleanup || (report.cleanupErrorKnown ? 22 : 0), 125);
}
