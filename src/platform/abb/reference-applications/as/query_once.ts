/**
 * @file
 * @brief Perform one complete ABB GetSpeedRatio call in the actual AS Guest.
 * @details Requires the selected real ROS2 NativeApi and closed compiler/runtime
 * source graph; host JavaScript execution is not this route. Imports grant no
 * rights or issue a request. Calls are synchronous and caller-serialized, with
 * no executor, timer, implicit retry or controller recovery. Allocation failure
 * or a Wasm trap cannot guarantee cleanup; normal numeric exits retain it.
 * @see queryOnce
 * @see Api
 */
import {Api, Status} from 'ros/as/api';
import {
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Request as Request,
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Response as Response,
} from 'abb/as/ros2/abb-ros2-complete/bounded_records';
import {
    Ros2Abb_robot_msgsSrvGetSpeedRatioClient as Client,
    RPCCleanup,
    RPCReply,
} from 'abb/as/ros2/abb-ros2-complete/bounded_interfaces';

/**
 * @brief Own all complete response, call-envelope and cleanup observations.
 * @details Newly constructed values are local only and acquire no capability.
 * References remain managed Guest objects while reachable. A nonnull response
 * means complete decoding and survives controller refusal/close; it does not
 * prove freshness, native success or additional permission.
 * @see queryOnce
 * @see Response
 */
export class Outcome
{
    /**
     * @brief First request, constructor, transport or application status.
     * @details Zero precedes independent cleanup; complete controller refusal maps
     * to 5. Original SDK numeric errors are preserved without implicit retry.
     * @see Outcome.cleanup
     */
    primary: u32 = 0;
    /**
     * @brief Complete original response retained on successful decoding.
     * @details Retains the original uint16 result_code, uint8 speed_ratio in percent and complete diagnostic message,
     * including controller refusal. Null before a complete response, including transport failure. The managed object
     * remains available after owner closure.
     * @see Response
     */
    response: Response|null = null;
    /**
     * @brief Preserve the full original RPC envelope and required-length facts.
     * @details Null before a call attempt. Numeric failure may still have valid
     * length information, so inspect the actual RPCReply rather than inferring it.
     * @see RPCReply
     */
    reply: RPCReply<Response>|null = null;
    /**
     * @brief Preserve every constructor-rollback status independently.
     * @details Initial empty report means no rollback was recorded. Normal
     * construction results come from the actual typed Client, without a mock.
     * @see Client.constructionCleanup
     */
    construction: RPCCleanup = new RPCCleanup(0, new Array<u32>());
    /**
     * @brief Preserve normal checked-close status independently of primary.
     * @details Initial empty report means no close was recorded. Capability close
     * does not cancel native work or establish physical stopping.
     * @see Client.closeChecked
     */
    cleanup: RPCCleanup = new RPCCleanup(0, new Array<u32>());
}

/**
 * @brief Send one entire original GetSpeedRatio request and close the service owner.
 * @details Refuses a non-ROS2 Api or invalid request before construction. The
 * actual generated Client preserves rollback; its call returns the complete
 * RPCReply. A decoded response remains available. Application success requires
 * result_code equals RC_SUCCESS (1) and speed_ratio is at most 100 percent; a complete response failing those checks
 * produces status 5. No retry, timeout loop, grant or controller mode change occurs. Caller inputs are borrowed for
 * this synchronous call and must remain valid/immutable; result objects have independent managed lifetimes.
 * @param[in] api Genuine selected Guest Api, backend 2, caller-owned and alive
 * through call/cleanup. Serialize all use of the underlying instance.
 * @param[in] alias Exact nonempty UTF-8 service alias with separately reviewed
 * type/operation grants, capacities, quotas and deadline policy.
 * @param[in] request Entire valid bounded original value; The original GetSpeedRatio request is logically empty; no
 * override value is supplied. No ownership transfers, clipping or truncation occurs.
 * @return Outcome preserving response, original RPC status/length facts and
 * independent rollback/close reports. A trap/abort may prevent return/cleanup.
 * @see Request.validValue
 * @see Client.call
 * @see Client.constructionCleanup
 * @see Client.closeChecked
 */
export function queryOnce(api: Api, alias: string, request: Request): Outcome
{
    const out = new Outcome();
    if(api.backend != 2 || !request.validValue())
    {
        out.primary = Status.Invalid;
        return out;
    }
    const client = new Client(api, alias, '', 1);
    out.construction = client.constructionCleanup();
    const reply = client.call(request);
    out.reply = reply;
    out.primary = reply.status;
    if(!out.primary)
    {
        if(reply.value === null)
            out.primary = Status.Invalid;
        else
        {
            const value = changetype<Response>(reply.value);
            out.response = value;
            if(!(value.result_code == 1 && value.speed_ratio <= 100))
                out.primary = 5;
        }
    }
    out.cleanup = client.closeChecked(out.primary);
    return out;
}
