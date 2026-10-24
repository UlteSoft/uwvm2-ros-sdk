/**
 * @file main.mjs
 * @brief Query every original xarm_msgs/GetAnalogIO field.
 * @details Genuine ECMAScript uses exact BigInt owners and whole typed codecs.
 * Every acquired owner closes before stdout, including ordinary decode failures.
 */
import {Capability} from "ros/js/transport";
import {Ros1Xarm_msgsGetAnalogIORequestCodec, Ros1Xarm_msgsGetAnalogIOResponseCodec} from "ufactory/js/ros1/ufactory-xarm-ros1-legacy-complete/bounded_records";

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
            const payload = Ros1Xarm_msgsGetAnalogIORequestCodec.encode(Ros1Xarm_msgsGetAnalogIORequestCodec.defaultValue());
            const reply = owner.invoke("service_call", payload, 266);
            primary = reply[0];
            wire = reply[1];
            if(primary === 0)
            {
                const value = Ros1Xarm_msgsGetAnalogIOResponseCodec.decode(wire);
                wire = Ros1Xarm_msgsGetAnalogIOResponseCodec.encode(value);
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
