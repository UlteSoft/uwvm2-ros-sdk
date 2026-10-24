/**
 * @file observation.mjs
 * @brief Read complete ABB observations inside the genuine QuickJS Wasm VM.
 * @details JavaScript implements request encoding, whole-response decoding,
 * transport lifetime and controller checks. Only idle topic polls can repeat.
 */
import * as records from "abb/js/records";
import {Capability} from "ros/js/transport";

/** @brief Initialize independent operation/response facts. @return Owned local object. */
export function outcome()
{
    return {
        primary : 0,
        cleanup : 0,
        cleanup_present : 0,
        response_present : 0,
        rpc_present : 0,
        rpc_status : 0,
        required_present : 0,
        required : "0",
        encoding : 0,
        wire_hex : "",
        value : null
    };
}

/**
 * @brief Run one finite capability-owned observation without service replay.
 * @param alias Explicit type-specific deployment alias.
 * @param request Complete language-encoded request created before acquisition.
 * @param codec Complete original response class and finite byte extent.
 * @param topic True polls one subscription; false issues exactly one service call.
 * @param accepted Pure predicate over the complete original response.
 * @return Separate original transport, application and cleanup results.
 */
function receive(alias, request, codec, topic, accepted)
{
    const result = outcome();
    const [owner, code] = Capability.open(alias);
    result.primary = code;
    if(owner === null)
        return result;
    try
    {
        if(topic)
            result.primary = owner.invoke("topic_subscribe")[0];
        if(result.primary === 0)
        {
            let frame = null;
            for(let attempt = 0; attempt < (topic ? 250 : 1); ++attempt)
            {
                frame = owner.invoke(topic ? "event_poll" : "service_call", request, codec.schema.maximum);
                result.rpc_present = 1;
                result.rpc_status = frame[0];
                if(!topic || frame[0] !== 11 || attempt === 249)
                    break;
                result.primary = __uwvm.pause_ms(20);
                if(result.primary)
                    break;
            }
            if(result.primary === 0)
                result.primary = frame[0];
            if(frame !== null && frame[2] !== null)
            {
                result.required_present = 1;
                result.required = String(frame[2]);
            }
            if(frame !== null && frame[0] === 0)
            {
                try
                {
                    const value = codec.decode(frame[1]);
                    result.value = value;
                    result.response_present = 1;
                    result.wire_hex = Array.from(frame[1], byte => byte.toString(16).padStart(2, "0")).join("");
                    if(!accepted(value))
                        result.primary = 5;
                }
                catch
                {
                    result.primary = 22;
                }
            }
        }
    }
    finally
    {
        result.cleanup_present = 1;
        result.cleanup = owner.close();
    }
    return result;
}

/**
 * @brief Read whole speed/result/message without changing override. @param alias Granted GetSpeedRatio
 * alias. @return Full outcome; ratio>100 or controller refusal yields 5.
 */
export function read_speed(alias)
{
    return receive(alias,
                   new Uint8Array(),
                   records.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response,
                   false,
                   value => value.result_code === 1 && value.speed_ratio <= 100);
}

/**
 * @brief Read one original IO signal without writing it. @param alias Granted GetIOSignal alias. @param
 * signal Nonempty strict UTF-8 name<=512 bytes. @return Whole value/result/message and independent status.
 */
export function read_io(alias, signal)
{
    if(typeof signal !== "string" || signal.length === 0)
        return {...outcome(), primary : 22};
    let request;
    try
    {
        request = new records.Ros2Abb_robot_msgsSrvGetIOSignal_Request({signal}).encode();
    }
    catch
    {
        return {...outcome(), primary : 22};
    }
    return receive(alias, request, records.Ros2Abb_robot_msgsSrvGetIOSignal_Response, false, value => value.result_code === 1);
}

/**
 * @brief Retain one subscription until a complete state or finite expiry. @param alias Granted SystemState
 * alias. @return Whole header/flags/tasks/units; idle remains 11.
 */
export function system_state(alias)
{
    return receive(alias, new Uint8Array(), records.Ros2Abb_robot_msgsMsgSystemState, true, () => true);
}

/**
 * @brief Emit exact response bytes after cleanup. @param result Owned outcome. @return Original
 * primary/cleanup/output status, clamped to 125.
 */
export function output(result)
{
    const {value, ...diagnostic} = result;
    const status = result.primary || result.cleanup;
    const code = __uwvm.output(JSON.stringify(diagnostic));
    return Math.min(status || code, 125);
}
