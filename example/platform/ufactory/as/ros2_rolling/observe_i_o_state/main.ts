/**
 * @file main.ts
 * @brief Read every original xarm_msgs/msg/IOState field with genuine AssemblyScript.
 * @details The compiled alias below needs an independently supplied exact grant.
 * Only idle polling repeats; this command never replays an admitted service.
 */
import {exit, pause, write} from "ros/as/command";
import {Capability, NativeApi, Operation} from "ros/as/ros2/roswasm";
import {Ros2Xarm_msgsMsgIOState, Ros2Xarm_msgsMsgIOStateCodec} from "ufactory/as/ros2/ufactory-xarm-ros2-rolling-complete/bounded_records";

export {abortGuest} from "ros/as/api";

/** @brief Exact alias chosen by this command; construction supplies no grant. */
const alias = "ufactory.ros2_rolling.observe_i_o_state";

/**
 * @brief Observe or query once, validate the complete value, then close once.
 * @return Original primary, independent cleanup, then stdout status.
 * @details All managed buffers stay rooted throughout synchronous imports.
 */
function main(): u32
{
    const owner = new Capability(new NativeApi());
    let primary: u32 = owner.open(alias), cleanup: u32 = 0;
    const acquired = primary == 0;
    let present = false;
    let bytes = new Uint8Array(0);
    if(!primary)
    {
        primary = owner.subscribe();
        for(let attempt = 0; !primary && attempt < 250; ++attempt)
        {
            const result = owner.poll(16);
            primary = result.status;
            if(primary == 0)
                bytes = result.bytes;
            if(primary != 11 || attempt == 249)
                break;
            primary = pause();
        }
        if(!primary)
        {
            const codec = new Ros2Xarm_msgsMsgIOStateCodec();
            const decoded = codec.decodeChecked(bytes);
            primary = decoded.status;
            if(!primary && decoded.value !== null)
            {
                const encoded = codec.encodeChecked(decoded.value!);
                primary = encoded.status;
                if(!primary)
                {
                    bytes = encoded.bytes;
                    present = true;
                }
            }
            else if(!primary)
            {
                primary = 22;
            }
        }
        cleanup = owner.close();
    }
    let hex = "";
    if(present)
    {
        const digits = "0123456789abcdef";
        for(let index = 0; index < bytes.length; ++index)
        {
            hex += digits.charAt(bytes[index] >> 4) + digits.charAt(bytes[index] & 15);
        }
    }
    const output = write('{"primary":' + primary.toString() + ',"cleanup":' + cleanup.toString() + ',"cleanup_present":' + (acquired ? "true" : "false") +
                         ',"response_present":' + (present ? "true" : "false") + ',"wire_hex":"' + hex + '"}\n');
    return primary ? primary : cleanup ? cleanup : output;
}

const status = main();
exit(status > 125 ? 125 : status);
