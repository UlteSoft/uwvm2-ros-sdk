/**
 * @file main.mjs
 * @brief Observe the complete industrial_msgs/msg/RobotStatus value in genuine QuickJS.
 * @details All choices, decoding and cleanup run in JavaScript inside the Wasm.
 */
import {Capability} from "ros/js/transport";
import {Ros2Industrial_msgsMsgRobotStatus} from "yaskawa/js/ros2/records";

/**
 * @brief Retain one subscription for at most 250 polls and emit lossless bytes.
 * @return First original operation or independent close status; no implicit grant.
 */
function main()
{
    if(__uwvm.argv.length !== 2)
        return 22;
    const result = {primary : 0, cleanup : 0, cleanup_present : 0, response_present : 0, wire_hex : ""};
    const acquired = Capability.open(__uwvm.argv[1]);
    result.primary = acquired[1];
    const owner = acquired[0];
    if(owner !== null)
    {
        try
        {
            result.primary = owner.invoke("topic_subscribe")[0];
            if(result.primary === 0)
                for(let attempt = 0; attempt < 250; ++attempt)
                {
                    const frame = owner.invoke("event_poll", new Uint8Array(), 150);
                    result.primary = result.rpc_status = frame[0];
                    result.required = frame[2] === null ? null : String(frame[2]);
                    if(frame[0] !== 11 || attempt === 249)
                    {
                        if(frame[0] === 0)
                        {
                            const value = Ros2Industrial_msgsMsgRobotStatus.decode(frame[1]);
                            const encoded = value.encode();
                            if(encoded.length !== frame[1].length || encoded.some((b, i) => b !== frame[1][i]))
                                throw Error("noncanonical whole value");
                            result.response_present = 1;
                            result.wire_hex = Array.from(encoded, b => b.toString(16).padStart(2, "0")).join("");
                        }
                        break;
                    }
                    result.primary = __uwvm.pause_ms(20);
                    if(result.primary)
                        break;
                }
        }
        catch(error)
        {
            result.primary = error.code || 22;
        }
        finally
        {
            result.cleanup_present = 1;
            result.cleanup = owner.close();
        }
    }
    print(JSON.stringify(result));
    return Math.min(result.primary || result.cleanup, 125);
}

globalThis.exitCode = main();
