/**
 * @file main.mjs
 * @brief Receive the complete original uwvm_fourier_bridge/srv/GetFsmState_Response in the genuine QuickJS VM.
 * @details One explicit alias is acquired and retired once. A service is never
 * replayed; only idle subscription polls repeat, with a finite 250-poll budget.
 */
import {Capability} from "ros/js/transport";
import {Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request} from "fourier/js/ros2/aurora_bridge_v1/records";
const facts = {
    primary : 0,
    cleanup : 0,
    cleanup_present : false,
    response_present : false,
    wire_hex : "",
    required : null,
    rpc_status_present : false,
    rpc_status : null
};
if(__uwvm.argv.length !== 3)
{
    globalThis.exitCode = 22;
}
else
{
    const request = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request({sequence : BigInt(__uwvm.argv[2])}).encode();
    const opened = Capability.open(__uwvm.argv[1]);
    const owner = opened[0];
    facts.primary = opened[1];
    if(owner !== null)
    {
        try
        {
            if(facts.primary === 0)
            {
                let frame;
                for(let attempt = 0; attempt < 1; ++attempt)
                {
                    frame = owner.invoke("service_call", request, 140);
                    facts.primary = frame[0];
                    facts.required = frame[2] === null ? null : frame[2].toString();
                    if(frame[0] !== 11 || attempt === 0)
                        break;
                    facts.primary = __uwvm.pause_ms(20);
                    if(facts.primary !== 0)
                        break;
                }
                if(facts.primary === 0)
                {
                    if(frame[2] !== BigInt(frame[1].length))
                        throw new RangeError("complete returned extent required");
                    const value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.decode(frame[1]);
                    facts.wire_hex = Array.from(frame[1], x => x.toString(16).padStart(2, "0")).join("");
                    facts.response_present = true;
                    facts.rpc_status_present = true;
                    facts.rpc_status = value.status.toString();
                }
            }
        }
        catch(error)
        {
            facts.primary = error.code ?? 22;
        }
        finally
        {
            facts.cleanup_present = true;
            facts.cleanup = owner.close();
        }
    }
    const outputStatus = __uwvm.output(JSON.stringify(facts));
    const business = facts.rpc_status_present && facts.rpc_status !== "0" ? 5 : 0;
    globalThis.exitCode = Math.min(125, outputStatus || facts.primary || facts.cleanup || business);
}
