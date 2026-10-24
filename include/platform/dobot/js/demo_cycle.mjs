/**
 * @file demo_cycle.mjs
 * @brief Retain original dobot value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// SPDX-License-Identifier: Apache-2.0
import {utf8Encode} from "ros/js/wire";

import * as version3 from './ros1/rosdemo-v3/bounded_records.mjs';
import * as version4 from './ros1/rosdemo-v4/bounded_records.mjs';

const owners = new WeakMap();
const period = 5000000000n, maximumTime = 0xffffffffffffffffn;
const encoder = {
    encode : utf8Encode
};

function failure(code, message, cause)
{
    const result = new Error(`${message}; primary=${code}`);
    result.code = code;
    if(cause !== undefined)
        result.cause = cause;
    return result;
}

function stateFor(owner)
{
    const state = owners.get(owner);
    if(!state || state.closed)
        throw failure(9, 'Closed or foreign DOBOT demo owner');
    if(state.cancelled)
        throw failure(125, 'Locally cancelled DOBOT demo');
    return state;
}

function json(text, maximum)
{
    if(typeof text !== 'string' || text.includes('\0') || encoder.encode(text).length > maximum)
        throw failure(22, 'Bounded complete JSON text required');
    let value;
    try
    {
        value = JSON.parse(text);
    }
    catch(cause)
    {
        throw failure(22, 'Invalid complete DOBOT JSON', cause);
    }
    const pending = [ [ value, 0 ] ];
    let nodes = 0;
    while(pending.length)
    {
        const [current, depth] = pending.pop();
        if(++nodes > 131072 || depth > 256)
            throw failure(90, 'Complete DOBOT JSON structural bound exceeded');
        if(typeof current === 'number' && !Number.isFinite(current))
            throw failure(22, 'Nonfinite number in complete DOBOT JSON');
        if(current !== null && typeof current === 'object')
        {
            for(const child of Object.values(current))
                pending.push([ child, depth + 1 ]);
        }
    }
    return value;
}

function alarmTable(text)
{
    const table = json(text, 1048576);
    if(!Array.isArray(table))
        throw failure(22, 'Complete original alarm array required');
    for(const row of table)
    {
        if(!row || typeof row !== 'object' || !Number.isInteger(row.id) || row.id < -2147483648 || row.id > 2147483647 ||
           typeof row.zh_CN?.description !== 'string' || typeof row.en?.description !== 'string')
            throw failure(22, 'Invalid original bilingual alarm row');
    }
    return table;
}

function integerField(record, key, previous)
{
    const value = record[key];
    if(typeof value !== 'number')
        return previous;
    if(!Number.isFinite(value) || value < -2147483648 || value > 2147483647)
        throw failure(22, 'Original feedback integer outside int32');
    return Math.trunc(value);
}

function advance(state)
{
    if(!state.observed || !state.waiting)
        return;
    const reached = state.version === 3 ? state.feedback.q.every((value, index) => Math.abs(value - state.points[state.point][index]) < 0.001)
                                        : state.feedback.command > state.command || state.feedback.command === state.command && state.feedback.mode === 5;
    if(!reached)
        return;
    state.waiting = false;
    if(state.point === 0)
        state.point = 1;
    else
    {
        state.point = 0;
        state.cycles += 1;
    }
}

function codecSet(version)
{
    const module = version === 3 ? version3 : version4;
    const prefix = `Ros1Rosdemo_v${version}`;
    const move = version === 3 ? 'JointMovJ' : 'MovJ';
    return Object.freeze({
        moveRequest : module[prefix + move + 'RequestCodec'],
        moveResponse : module[prefix + move + 'ResponseCodec'],
        errorRequest : module[prefix + 'GetErrorIDRequestCodec'],
        errorResponse : module[prefix + 'GetErrorIDResponseCodec'],
        continueRequest : version === 3 ? version3.Ros1Rosdemo_v3ContinuesRequestCodec : null,
        continueResponse : version === 3 ? version3.Ros1Rosdemo_v3ContinuesResponseCodec : null
    });
}

function describe(state, id)
{
    for(const [kind, table] of [[ 'Control', state.controller ], [ 'Servo', state.servo ]])
    {
        const row = table.find(value => value.id === id);
        if(row)
            return `${kind} ErrorID : ${id},  ${row.zh_CN.description}, ${row.en.description}\n`;
    }
    return '';
}

/**
 * @brief Run the complete pinned ROS1 rosdemo_v3/v4 local command workflows.
 * @details Owns two six-axis points, one pending move and one independent
 * alarm/Continue request. Original complete service codecs remain versioned.
 * The caller supplies actual I/O and complete bilingual alarm-file contents;
 * this class opens no resource. Thread/parameter/timer/native parity is separate.
 * Reserving a request never certifies delivery or physical arrival.
 * @see DemoCycle.takeMove
 * @see DemoCycle.onTime
 */
export class DemoCycle
{
    /**
     * @brief Validate and copy all local inputs before any request can be reserved.
     * @details Requires version3/4, cycles1..1000000, two arrays of six finite
     * source-unit doubles, and both entire original alarm JSON texts<=1MiB each.
     * Parsed tables are private; no caller-owned point or table remains borrowed.
     * Local feedback starts at zero and completion requires a nonempty observation.
     * @param {object} configuration [in] Explicit version/cycles/points and
     * controllerJSON/servoJSON; the entrypoint transports these as bounded input.
     * JSON traversals admit at most131072 values and depth256; every parsed
     * number, including unobserved table/feedback members, must be finite.
     * @returns {DemoCycle} New single-caller local owner requiring close.
     * @throws {Error} Invalid configuration/JSON22, structural quota90 or
     * complete codec validation. No I/O has occurred on construction failure.
     * @see DemoCycle.close
     */
    constructor(configuration)
    {
        if(!configuration || typeof configuration !== 'object' || Array.isArray(configuration))
            throw failure(22, 'Explicit DOBOT configuration object required');
        const version = configuration.version, maximum = configuration.cycles, requested = configuration.points;
        const controllerJSON = configuration.controllerJSON, servoJSON = configuration.servoJSON;
        if(![3, 4].includes(version) || !Number.isInteger(maximum) || maximum < 1 || maximum > 1000000 || !Array.isArray(requested) || requested.length !== 2)
            throw failure(22, 'Explicit bounded version, cycles and two points required');
        const points = [];
        for(let index = 0; index < 2; index += 1)
        {
            const point = requested[index], copy = [];
            if(!Array.isArray(point) || point.length !== 6)
                throw failure(22, 'Both complete original six-axis points must be finite');
            for(let axis = 0; axis < 6; axis += 1)
            {
                const value = point[axis];
                if(typeof value !== 'number' || !Number.isFinite(value))
                    throw failure(22, 'Both complete original six-axis points must be finite');
                copy.push(value);
            }
            points.push(copy);
        }
        owners.set(this, {
            version,
            maximum,
            points,
            codecs : codecSet(version),
            controller : alarmTable(controllerJSON),
            servo : alarmTable(servoJSON),
            feedback : {enabled : 0, error : 0, queued : 0, mode : 0, command : 0, q : [ 0, 0, 0, 0, 0, 0 ]},
            observed : false,
            waiting : false,
            movePending : false,
            errorPending : false,
            continuePending : false,
            point : 0,
            cycles : 0,
            command : 2147483647,
            previousErrors : [],
            lastTime : null,
            nextError : 0n,
            cancelled : false,
            closed : false
        });
    }

    /**
     * @brief Reserve exactly one entire original movement request, or return null.
     * @details Encodes the whole record before marking it pending. V3 uses j1..j6;
     * v4 uses its bool mode=true/a..f (the source assigns1). The original default
     * paramValue remains empty. A pending
     * request cannot be reserved again after an I/O failure of unknown delivery.
     * @returns {Uint8Array|null} Owned complete request; null while waiting/done.
     * @throws {Error} Closed9/cancelled125 or original whole-codec error.
     * @see DemoCycle.onMoveResponse
     */
    takeMove()
    {
        const state = stateFor(this);
        if(state.cycles === state.maximum || state.waiting || state.movePending)
            return null;
        const value = state.codecs.moveRequest.defaultValue(), point = state.points[state.point];
        const names = state.version === 3 ? [ 'j1', 'j2', 'j3', 'j4', 'j5', 'j6' ] : [ 'a', 'b', 'c', 'd', 'e', 'f' ];
        names.forEach((name, index) => { value[name] = point[index]; });
        if(state.version === 4)
            value.mode = true;
        const bytes = state.codecs.moveRequest.encode(value);
        state.movePending = true;
        return bytes;
    }

    /**
     * @brief Consume the entire original motion response for the reserved request.
     * @details The res field remains signed int32. V4 stores it as the command
     * identifier; V3 does not invent controller-success semantics. Existing valid
     * feedback may complete this request after the response is admitted.
     * @param {Uint8Array} bytes [in] Borrowed complete canonical response, copied
     * and validated by the original generated codec before local state mutation.
     * @returns {object} Owned full response, including the unmodified res value.
     * @throws {Error} No pending request22 or whole-message codec failure.
     * @see DemoCycle.onFeedback
     */
    onMoveResponse(bytes)
    {
        const state = stateFor(this);
        if(!state.movePending)
            throw failure(22, 'No pending DOBOT movement response');
        const value = state.codecs.moveResponse.decode(bytes);
        if(state.version === 4)
            state.command = value.res;
        state.movePending = false;
        state.waiting = true;
        advance(state);
        return value;
    }

    /**
     * @brief Apply one complete decoded std_msgs/String feedback JSON object.
     * @details The entry must first decode its whole ROS String wire. Empty text
     * is ignored. Missing/nonnumeric optional fields preserve previous values;
     * malformed int32/short or nonfinite six-joint data fail atomically. Extra
     * JSON members are parsed, never substituted with a smaller ROS record.
     * @param {string} text [in] Complete decoded String payload<=65536 UTF-8 bytes.
     * @returns {void} Completion may advance only a response-admitted request.
     * @throws {Error} Invalid full JSON/fields22, structural quota90, closed9 or
     * cancellation125. A rejected record leaves the previous feedback intact.
     * @see DemoCycle.onMoveResponse
     */
    onFeedback(text)
    {
        const state = stateFor(this);
        if(text === '')
            return;
        const value = json(text, 65536);
        if(!value || typeof value !== 'object' || Array.isArray(value))
            throw failure(22, 'Original feedback must be a JSON object');
        const next = {...state.feedback, q : state.feedback.q.slice()};
        next.enabled = integerField(value, 'EnableStatus', next.enabled);
        next.error = integerField(value, 'ErrorStatus', next.error);
        if(state.version === 3)
        {
            next.queued = integerField(value, 'RunQueuedCmd', next.queued);
            if(Array.isArray(value.QactualVec))
            {
                if(value.QactualVec.length < 6 || value.QactualVec.slice(0, 6).some(item => typeof item !== 'number' || !Number.isFinite(item)))
                    throw failure(22, 'All six original feedback joints must be finite');
                next.q = value.QactualVec.slice(0, 6);
            }
        }
        else
        {
            next.mode = integerField(value, 'robot_mode', next.mode);
            next.command = integerField(value, 'currentCommandId', next.command);
        }
        state.feedback = next;
        state.observed = true;
        advance(state);
    }

    /**
     * @brief Reserve the version-specific error or Continue request on a due tick.
     * @details V3 queries only on error&&enabled; otherwise enabled&&!queued
     * reserves Continue. Its original if(0) ClearError branch stays inactive.
     * V4 queries on error alone and never automatically Continues. Five-second
     * explicit wall-time checks coalesce; no native sleep/timer is simulated.
     * @param {bigint} now [in] Nondecreasing unsigned wall-time nanoseconds.
     * @returns {object|null} Owned kind E/C and whole original request bytes, or null.
     * @throws {Error} Time/backward input22, future overflow34 or owner failure.
     * @see DemoCycle.onErrorResponse
     * @see DemoCycle.onContinueResponse
     */
    onTime(now)
    {
        const state = stateFor(this);
        if(typeof now !== 'bigint' || now < 0n || now > maximumTime || state.lastTime !== null && now < state.lastTime)
            throw failure(22, 'Unsigned nondecreasing DOBOT wall-time observation required');
        if(now < state.nextError || state.errorPending || state.continuePending)
        {
            state.lastTime = now;
            return null;
        }
        if(now > maximumTime - period)
            throw failure(34, 'DOBOT error-check deadline overflow');
        const feedback = state.feedback;
        const query = state.observed && feedback.error && (state.version === 4 || feedback.enabled);
        const resume = state.version === 3 && state.observed && !query && feedback.enabled && !feedback.queued;
        const bytes = query    ? state.codecs.errorRequest.encode(state.codecs.errorRequest.defaultValue())
                      : resume ? state.codecs.continueRequest.encode(state.codecs.continueRequest.defaultValue())
                               : null;
        state.lastTime = now;
        state.nextError = now + period;
        if(query)
            state.errorPending = true;
        if(resume)
            state.continuePending = true;
        return bytes === null ? null : {kind : query ? 'E' : 'C', bytes};
    }

    /**
     * @brief Decode a whole error response and render original bilingual alarms.
     * @details V4 compares sorted multisets including duplicates, suppressing
     * unchanged sets while rendering new IDs in response order. V3 renders each
     * response. First controller match takes precedence over the servo table.
     * @param {Uint8Array} bytes [in] Complete original GetErrorID response.
     * @returns {object} Owned full response, suppressed flag and diagnostic text.
     * @throws {Error} Missing pending request22 or complete codec failure before
     * the pending request is cleared; no implicit service replay occurs.
     * @see DemoCycle.onTime
     */
    onErrorResponse(bytes)
    {
        const state = stateFor(this);
        if(!state.errorPending)
            throw failure(22, 'No pending DOBOT alarm response');
        const value = state.codecs.errorResponse.decode(bytes);
        const ids = state.version === 3 ? value.errorID : value.error_id;
        const next = ids.slice().sort((left, right) => left - right);
        const suppressed = state.version === 4 && next.length === state.previousErrors.length && next.every((id, index) => id === state.previousErrors[index]);
        const text = suppressed ? '' : ids.map(id => describe(state, id)).join('');
        if(state.version === 4)
            state.previousErrors = next;
        state.errorPending = false;
        return {value, suppressed, text};
    }

    /**
     * @brief Admit one complete v3 Continues response without a success invention.
     * @details Decodes before clearing the independent pending request; no service
     * is retried and the original signed res is not converted into a boolean.
     * @param {Uint8Array} bytes [in] Entire original signed-int32 response.
     * @returns {object} Owned complete response; res keeps its original meaning.
     * @throws {Error} V4 or missing pending request22, codec or owner error.
     * @see DemoCycle.onTime
     */
    onContinueResponse(bytes)
    {
        const state = stateFor(this);
        if(state.version !== 3 || !state.continuePending)
            throw failure(22, 'No pending original v3 Continue response');
        const value = state.codecs.continueResponse.decode(bytes);
        state.continuePending = false;
        return value;
    }

    /**
     * @brief Copy local progress without exposing mutable points, tables or codecs.
     * @details The returned values are local observations with no native handle,
     * physical stop/arrival guarantee or borrowed caller storage.
     * @returns {object} Frozen version/point/cycles/waiting/pending/done snapshot;
     * completion describes observed source conditions, not certified robot safety.
     * @throws {Error} Closed/foreign9 or locally cancelled125.
     * @see DemoCycle.close
     */
    progress()
    {
        const state = stateFor(this);
        return Object.freeze({
            version : state.version,
            point : state.point,
            cycles : state.cycles,
            waiting : state.waiting,
            movePending : state.movePending,
            errorPending : state.errorPending,
            continuePending : state.continuePending,
            done : state.cycles === state.maximum
        });
    }

    /**
     * @brief Mark local cancellation before the caller performs explicit cleanup.
     * @details Sends no physical stop, disable, clear, retry or revoke request.
     * @returns {void} Further processing raises125; close remains available.
     * @throws {Error} Owner9 or an already cancelled owner125.
     * @see DemoCycle.close
     */
    cancel()
    {
        stateFor(this).cancelled = true;
    }

    /**
     * @brief Release only local copied state; never perform native cleanup or I/O.
     * @details Marks this owner unusable without retrying or altering requests.
     * @returns {void} Idempotent for this owner, including after cancellation.
     * @throws {Error} Foreign receiver9. Native handles must be closed by the caller.
     * @see DemoCycle.cancel
     */
    close()
    {
        const state = owners.get(this);
        if(!state)
            throw failure(9, 'Foreign DOBOT demo owner');
        state.closed = true;
    }
}
