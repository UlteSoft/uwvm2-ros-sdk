/**
 * @file main.mjs
 * @brief Query every original rosdemo_v4/GetPose field.
 * @details Genuine ECMAScript uses exact BigInt owners and whole typed codecs.
 * Every acquired owner closes before stdout, including ordinary decode failures.
 */
import {Ros1Rosdemo_v4GetPoseRequestCodec, Ros1Rosdemo_v4GetPoseResponseCodec} from "dobot/js/ros1/dobot-ros1-demo-v4-complete/bounded_records";
import {Capability} from "ros/js/transport";

/** @brief Execute one finite observation/query. @return Original unsigned process status, capped at 125. */
function main()
{
    if(__uwvm.argv.length !== 2)
        return 22;
    const acquired = Capability.open(__uwvm.argv[1]);
    const owner = acquired[0];
    let primary = acquired[1], cleanup = 0, present = false, wire = new Uint8Array();
    if(owner !== null)
    {
        try
        {
            const payload = Ros1Rosdemo_v4GetPoseRequestCodec.encode(Ros1Rosdemo_v4GetPoseRequestCodec.defaultValue());
            const reply = owner.invoke("service_call", payload, 264);
            primary = reply[0];
            wire = reply[1];
            if(primary === 0)
            {
                const value = Ros1Rosdemo_v4GetPoseResponseCodec.decode(wire);
                wire = Ros1Rosdemo_v4GetPoseResponseCodec.encode(value);
                present = true;
            }
        }
        catch(error)
        {
            primary = Number.isInteger(error.code) ? error.code : 22;
        }
        finally
        {
            cleanup = owner.close();
        }
    }
    let hex = "";
    if(present)
        for(const byte of wire)
            hex += byte.toString(16).padStart(2, "0");
    try
    {
        print(JSON.stringify({primary, cleanup, cleanup_present : owner !== null, response_present : present, wire_hex : hex}));
    }
    catch
    {
        return Math.min(primary || cleanup || 5, 125);
    }
    return Math.min(primary || cleanup, 125);
}

globalThis.exitCode = main();
