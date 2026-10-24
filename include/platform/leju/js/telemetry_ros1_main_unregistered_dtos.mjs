// @file telemetry_ros1_main_unregistered_dtos.mjs
// @brief Provide the complete leju telemetry_ros1_main_unregistered_dtos.mjs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
/**
 * Complete original values, one finite operation and explicit cleanup.
 * readOnce retains the entire state. commandOnce requires a caller-supplied
 * canonical payload loader; no zero command, native address or retry is added.
 */
import {Session} from "ros/js/roswasm.mjs";
import {
    Ros1Kuavo_sdkQvCodec as stateCodec,
    Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec as commandCodec
} from "./ros1/leju-ros1-main-unregistered-dtos-complete/bounded_records.mjs";

function code(e)
{
    return Number.isInteger(e?.code) && e.code > 0 ? e.code : 22;
}

function once(session, alias, load)
{
    if(!(session instanceof Session) || session.version !== 1)
        throw new TypeError("Exact source backend required");
    if(session.outputCapacity < stateCodec.maxWireBytes)
        throw new RangeError("Complete state storage required");
    let cap = null, primary = 0, cleanup = 0, value = null, error = null, cleanupError = null;
    try
    {
        cap = session.open(alias);
        cap.check();
        if(load)
        {
            const bytes = commandCodec.encode(commandCodec.decode(load()));
            primary = session.write("topic_publish", cap.handle, bytes);
        }
        else
        {
            primary = session.raw.topic_subscribe(cap.handle);
            if(!primary)
            {
                const reply = cap.poll();
                primary = reply.status;
                if(!primary)
                    value = stateCodec.decode(reply.bytes);
            }
        }
    }
    catch(e)
    {
        error = e;
        primary = code(e);
        value = null;
    }
    finally
    {
        if(cap)
        {
            try
            {
                cleanup = cap.close();
            }
            catch(e)
            {
                cleanupError = e;
                cleanup = code(e);
            }
        }
    }
    return {primary, cleanup, value, error, cleanupError};
}

export function readOnce(session, alias)
{
    return once(session, alias, null);
}

export function commandOnce(session, alias, load)
{
    if(typeof load !== "function")
        throw new TypeError("Explicit payload loader required");
    return once(session, alias, load);
}
