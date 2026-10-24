/**
 * @file main.mjs
 * @brief Observe every original xarm_msgs/msg/RobotMsg field.
 * @details Genuine ECMAScript uses exact BigInt owners and whole typed codecs.
 * Every acquired owner closes before stdout, including ordinary decode failures.
 */
import {Capability} from "ros/js/transport";
import {Ros2Xarm_msgsMsgRobotMsgCodec} from "ufactory/js/ros2/ufactory-xarm-ros2-jazzy-complete/bounded_records";

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
            primary = owner.invoke("topic_subscribe")[0];
            for(let attempt = 0; primary === 0 && attempt < 250; ++attempt)
            {
                const reply = owner.invoke("event_poll", new Uint8Array(), 362);
                primary = reply[0];
                wire = reply[1];
                if(primary !== 11 || attempt === 249)
                    break;
                primary = __uwvm.pause_ms(20);
            }
            if(primary === 0)
            {
                const value = Ros2Xarm_msgsMsgRobotMsgCodec.decode(wire);
                wire = Ros2Xarm_msgsMsgRobotMsgCodec.encode(value);
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
