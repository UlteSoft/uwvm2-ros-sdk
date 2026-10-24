/**
 * @file
 * @brief Observe one complete FANUC GetTCPSpeed response in the actual ROS2 Guest.
 * @details Uses the real embedded engine, Session and selected generated typed
 * client. Importing this module performs no IO and grants no rights. Every call
 * is synchronous and caller-serialized against the Session; no Promise, task,
 * executor, timer, native process, controller reset or replay is introduced.
 * A trap or engine termination cannot guarantee language-level cleanup.
 * @see queryOnce
 * @see Session
 */
import {Session} from 'ros/js/roswasm.mjs';
import {
    RpcConstructionFailure,
    Ros2Fanuc_msgsSrvGetTCPSpeedClient as Client,
} from 'fanuc/js/ros2/fanuc-ros2-complete/bounded_interfaces.mjs';
import {
    Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec as requestCodec,
    Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec as responseCodec,
} from 'fanuc/js/ros2/fanuc-ros2-complete/bounded_records.mjs';

function code(error)
{
    return Number.isInteger(error?.code) && error.code > 0 ? error.code : 22;
}

/**
 * @typedef {object} QueryOutcome
 * @brief Retain the complete response and independent original error/cleanup facts.
 * @details All returned references remain Guest JavaScript objects; no native
 * pointer escapes. A complete response survives controller refusal and owner
 * close. Application success must be considered with cleanup and cleanupError.
 * An exception lacking a positive integer SDK code is normalized to status 22.
 * @property {number} primary First SDK/validation status, or 5 for a decoded
 * controller refusal. Zero does not hide a separate close exception.
 * @property {object|null} response Whole original response, null before complete
 * decoding. Retains signed int32 result/timetag, finite float32 speed and uint8 group. The original IDL does not
 * declare speed or timetag units; no unit/epoch conversion occurs. No physical-state freshness is inferred.
 * @property {object|null} cleanup Actual close or constructor-rollback report;
 * null if none was produced, including some exceptional cleanup paths.
 * @property {unknown|null} error Original validation/construction/call exception,
 * null for a normal controller refusal with status 5.
 * @property {unknown|null} cleanupError Original rollback/close exception when
 * thrown, independent of error and primary. Never infer successful cleanup from
 * primary alone.
 * @property {RpcConstructionFailure|null} construction Original typed constructor
 * failure, preserving its primary error and rollback observations.
 * @see queryOnce
 * @see RpcConstructionFailure
 */

/**
 * @brief Call the complete original GetTCPSpeed service once and close its owner.
 * @details Requires a genuine ROS2 Session from the selected SDK module. Both
 * scratch capacities must accommodate the entire selected request/response wire
 * bounds. Canonical encode/decode snapshots one owned request before open, so
 * accessor-backed input cannot change fields between validation and dispatch.
 * A full response is retained. Application success requires result equals 0, response group equals the requested group,
 * and speed is nonnegative; complete responses failing those checks produce status 5. Failed calls are never replayed.
 * This function closes only its client, not the caller's Session; closing a capability does not stop native work.
 * @param {Session} session Caller-owned actual Guest Session, version 2, alive
 * for this synchronous call. Serialize use; no Session ownership transfers.
 * @param {string} alias Nonempty exact UTF-8 service alias with independently
 * reviewed original type, operations, quotas and deadline policy. No grant is
 * created by the function or by selecting this SDK.
 * @param {object} request Entire original Request. group is the original uint8 identifier (0..255); the command sample
 *     selects group 1. Input is read
 * only while canonicalizing; the snapshot used for dispatch is independently
 * owned. Values beyond bounds fail instead of being clipped or truncated.
 * @returns {QueryOutcome} Whole response, original exception and independent
 * close/rollback observations on normal return. Trap/termination may not return.
 * @see requestCodec.encode
 * @see responseCodec.decode
 * @see Client.call
 * @see Client.closeChecked
 */
export function queryOnce(session, alias, request)
{
    const out = {
        primary : 0,
        response : null,
        cleanup : null,
        error : null,
        cleanupError : null,
        construction : null,
    };
    let client = null;
    try
    {
        if(!(session instanceof Session) || session.version !== 2)
            throw new TypeError('Genuine ROS2 Guest Session required');
        if(session.inputCapacity < requestCodec.maxWireBytes || session.outputCapacity < responseCodec.maxWireBytes)
            throw new RangeError('Whole original Request/Response scratch capacities required');
        // Capture one owned canonical request before opening. Accessor-backed input
        // cannot change fields between validation and the actual service call.
        const owned = requestCodec.decode(requestCodec.encode(request));
        client = new Client(session, alias, null, 1);
        out.response = client.call(owned);
        if(!(out.response.result == 0 && out.response.group == owned.group && out.response.speed >= 0))
            out.primary = 5;
    }
    catch(error)
    {
        out.error = error;
        if(error instanceof RpcConstructionFailure)
        {
            out.construction = error;
            out.primary = code(error.primary);
            out.cleanup = error.cleanup;
            out.cleanupError = error.cleanupThrew ? error.cleanupException : null;
        }
        else
            out.primary = code(error);
    }
    finally
    {
        if(client !== null)
        {
            try
            {
                out.cleanup = client.closeChecked(out.primary);
            }
            catch(error)
            {
                out.cleanupError = error;
            }
        }
    }
    return out;
}
