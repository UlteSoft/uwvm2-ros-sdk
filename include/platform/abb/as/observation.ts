/**
 * @file observation.ts
 * @brief Preserve complete ABB ROS 2 observations in an AssemblyScript guest.
 * @details Each synchronous function uses the genuine capability API, performs
 * one service request or topic poll, and closes its owner once. It retains the
 * original transport envelope separately from decode/controller/cleanup errors.
 * No timer, executor, retry, native connection, or permission grant is created.
 * @see readSpeed, readIO, readSystemState
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Capability, Reply} from 'ros/as/roswasm';
import {
    VendorCodec,
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Response as SpeedResponse,
    Ros2Abb_robot_msgsSrvGetSpeedRatio_ResponseCodec as SpeedCodec,
    Ros2Abb_robot_msgsSrvGetIOSignal_Request as IORequest,
    Ros2Abb_robot_msgsSrvGetIOSignal_RequestCodec as IORequestCodec,
    Ros2Abb_robot_msgsSrvGetIOSignal_Response as IOResponse,
    Ros2Abb_robot_msgsSrvGetIOSignal_ResponseCodec as IOCodec,
    Ros2Abb_robot_msgsMsgSystemState as SystemState,
    Ros2Abb_robot_msgsMsgSystemStateCodec as StateCodec,
} from 'abb/as/ros2/abb-ros2-complete/bounded_records';

/**
 * @brief Own one complete typed response and independent operation facts.
 * @tparam T Selected generated vendor class, preserving every original field.
 * @details Null value means no complete response. A nonnull response may still
 * describe controller refusal. Managed result storage survives capability close;
 * callers serialize shared mutation. Fatal traps cannot guarantee cleanup.
 * @see Observation.status
 */
export class Observation<T>
{
    primary: u32 = 0;                     /**< @brief First validation/open/transport/decode/controller error. */
    cleanup: u32 = 0;                     /**< @brief Independent checked-close status when present. */
    cleanupPresent: bool = false;         /**< @brief True after an acquired owner was closed. */
    rpc: Reply|null = null;               /**< @brief Original copied transport and length observations. */
    value: T|null = null;                 /**< @brief Entire typed response after complete decoding. */
    wire: Uint8Array = new Uint8Array(0); /**< @brief Whole validated canonical response body. */

    /**
     * @brief Select the primary status before an independent cleanup failure.
     * @return Full unsigned numeric status; zero requires both stages to succeed.
     * @details Local read only; it performs no host operation or authority change.
     * @see Observation.primary
     */
    status(): u32
    {
        return this.primary ? this.primary : this.cleanup;
    }
}

/**
 * @brief Perform one real transport operation and decode the entire reply.
 * @param[in] api Borrowed genuine ROS 2 API, live until synchronous return.
 * @param[in] alias Existing exact type/operation alias with external permission.
 * @param[in] input Complete canonical request; empty for logically empty input.
 * @param[in] maximum Exact complete response maximum from the selected schema.
 * @param[in] topic True selects subscribe/poll; false selects ServiceCall.
 * @param[in] codec Complete checked vendor decoder; no partial defaults escape.
 * @param[in] accepted Pure application predicate without reentry or exceptions.
 * @param[in] attempts Finite poll budget; service callers use one.
 * @param[in] pause Callback between idle polls, unused for single reads.
 * @return Managed whole response and separate original transport/cleanup facts.
 * @details All normal errors retire an acquired capability once. No capacity,
 * timeout, or native refusal is automatically replayed.
 * @see readSpeed, readIO, readSystemState
 */
function receive<T>(
    api: Api,
    alias: string,
    input: Uint8Array,
    maximum: i32,
    topic: bool,
    codec: VendorCodec<T>,
    accepted: (value: T) => bool,
    attempts: u32 = 1,
    pause: () => u32 = noPause,
    ): Observation<T>
{
    const result = new Observation<T>();
    if(api.backend != 2 || attempts < 1 || attempts > 250)
    {
        result.primary = Status.Invalid;
        return result;
    }
    const owner = new Capability(api);
    result.primary = owner.open(alias);
    if(result.primary)
        return result;
    if(topic)
        result.primary = owner.subscribe();
    if(!result.primary)
    {
        let reply = topic ? owner.poll(maximum) : owner.request(Operation.service_call, input, maximum);
        for(let index: u32 = 1; topic && index < attempts && reply.status == 11; ++index)
        {
            result.primary = pause();
            if(result.primary)
                break;
            reply = owner.poll(maximum);
        }
        result.rpc = reply;
        if(!result.primary)
            result.primary = reply.status;
        if(!result.primary)
        {
            const decoded = codec.decodeChecked(reply.bytes);
            result.primary = decoded.status;
            if(!result.primary && decoded.value !== null)
            {
                const value = changetype<T>(decoded.value);
                result.value = value;
                result.wire = reply.bytes;
                if(!accepted(value))
                    result.primary = 5;
            }
            else if(!result.primary)
            {
                result.primary = Status.Invalid;
            }
        }
    }
    result.cleanupPresent = true;
    result.cleanup = owner.close();
    return result;
}

/**
 * @brief Read the complete RAPID motion speed ratio without setting an override.
 * @param[in] api Genuine ROS 2 API, borrowed through the synchronous call.
 * @param[in] alias Existing GetSpeedRatio service alias with call permission.
 * @return Whole typed speed percent, result_code, message, and separate failures.
 * @details Application success requires RC_SUCCESS=1 and speed_ratio<=100.
 * Controller refusal retains the complete response with application status 5.
 * @see Observation.status
 */
export function readSpeed(api: Api, alias: string): Observation<SpeedResponse>
{
    return receive<SpeedResponse>(
        api,
        alias,
        new Uint8Array(0),
        SpeedResponse.maxWireBytes,
        false,
        new SpeedCodec(),
        (value: SpeedResponse): bool => value.result_code == 1 && value.speed_ratio <= 100,
    );
}

/**
 * @brief Read a configured IO signal without writing its value.
 * @param[in] api Borrowed genuine ROS 2 capability API.
 * @param[in] alias Existing GetIOSignal service alias with exact type permission.
 * @param[in] signal Nonempty strict UTF-8 signal name within the 512-byte bound.
 * @return Complete typed reply and independent transport/controller/close facts.
 * @details Generated validation rejects malformed text before acquisition.
 * A request or response is never clipped to fit the selected finite schema.
 * @see readSpeed
 */
export function readIO(api: Api, alias: string, signal: string): Observation<IOResponse>
{
    const request = new IORequest();
    request.signal = signal;
    const input = new IORequestCodec().encodeChecked(request);
    if(!signal.length || input.status)
    {
        const refused = new Observation<IOResponse>();
        refused.primary = Status.Invalid;
        return refused;
    }
    return receive<IOResponse>(
        api,
        alias,
        input.bytes,
        IOResponse.maxWireBytes,
        false,
        new IOCodec(),
        (value: IOResponse): bool => value.result_code == 1,
    );
}

/**
 * @brief Subscribe and attempt one nonblocking complete SystemState read.
 * @param[in] api Borrowed genuine ROS 2 capability API.
 * @param[in] alias Existing SystemState topic alias with subscription permission.
 * @return Entire original header, flags, tasks, and units when available.
 * @details Idle 11 stays a nonzero status with no synthetic default state.
 * Retain an explicit SDK subscription for persistent caller-driven streaming.
 * @see Observation.value
 */
export function readSystemState(api: Api, alias: string): Observation<SystemState>
{
    return receive<SystemState>(
        api,
        alias,
        new Uint8Array(0),
        SystemState.maxWireBytes,
        true,
        new StateCodec(),
        (_value: SystemState): bool => true,
    );
}

/**
 * @brief Default local callback, unused by the one-poll compatibility functions.
 * @return Zero without a host import or scheduling side effect.
 * @see readSystemState
 */
function noPause(): u32
{
    return 0;
}

/**
 * @brief Retain a subscription until a complete sample or the finite poll limit.
 * @param[in] api Borrowed actual ROS 2 API.
 * @param[in] alias Existing SystemState subscription capability alias.
 * @param[in] attempts Poll budget in [1,250], including the immediate first poll.
 * @param[in] pause Callback between idle polls returning zero or an SDK error.
 * @return Whole state and independent final-poll, primary, and cleanup facts.
 * @details Only idle 11 permits another poll on this same owner. Exhaustion
 * retains idle 11; pause errors retain the original idle RPC separately.
 * @see readSystemState
 */
export function waitSystemState(api: Api, alias: string, attempts: u32, pause: () => u32): Observation<SystemState>
{
    return receive<SystemState>(
        api,
        alias,
        new Uint8Array(0),
        SystemState.maxWireBytes,
        true,
        new StateCodec(),
        (_value: SystemState): bool => true,
        attempts,
        pause,
    );
}
