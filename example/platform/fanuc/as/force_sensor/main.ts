/**
 * @file main.ts
 * @brief Observe all original fanuc_msgs/msg/ForceSensor fields using genuine AssemblyScript.
 * @details Complete records are decoded before checked once-only owner cleanup.
 */
import {NativeApi} from "ros/as/ros2/roswasm";
import {Capability} from "ros/as/roswasm";
import {write, pause, exit} from "ros/as/command";
import {Ros2Fanuc_msgsMsgForceSensorCodec} from "fanuc/as/ros2/fanuc-ros2-complete/bounded_records";

/** @brief Read bounded WASI argument-vector sizes; creates no ROS capability. */
@external("wasi_snapshot_preview1", "args_sizes_get") declare function sizes(count: usize, bytes: usize): u32;
/** @brief Copy original WASI arguments into rooted guest buffers. */
@external("wasi_snapshot_preview1", "args_get") declare function arguments(pointers: usize, bytes: usize): u32;

/**
 * @brief Observe one complete message through the caller's explicit alias.
 * @details Only idle status 11 permits another poll; maximum 250 polls with 20 ms pauses.
 */
export function _start(): void
{
    const extents = new Uint32Array(2);
    if(sizes(extents.dataStart, extents.dataStart + 4) || extents[0] != 2 || extents[1] > 4096)
    {
        exit(22);
        return;
    }
    const pointers = new Uint32Array(2), bytes = new Uint8Array(extents[1]);
    if(arguments(pointers.dataStart, bytes.dataStart))
    {
        exit(22);
        return;
    }
    const begin = <usize>pointers[1];
    if(begin < bytes.dataStart || begin >= bytes.dataStart + bytes.length)
    {
        exit(22);
        return;
    }
    let end = <i32>(begin - bytes.dataStart);
    while(end < bytes.length && bytes[end])
        ++end;
    if(end == bytes.length)
    {
        exit(22);
        return;
    }
    const alias = String.UTF8.decode(bytes.slice(<i32>(begin - bytes.dataStart), end).buffer);
    const owner = new Capability(new NativeApi());
    let primary = owner.open(alias), cleanup: u32 = 0;
    let present = false, hex = "";
    if(!primary)
    {
        primary = owner.subscribe();
        if(!primary)
            for(let attempt: u32 = 0; attempt < 250; ++attempt)
            {
                const reply = owner.poll(28);
                primary = reply.status;
                if(primary != 11 || attempt == 249)
                {
                    if(!primary)
                    {
                        const codec = new Ros2Fanuc_msgsMsgForceSensorCodec();
                        const value = codec.decodeChecked(reply.bytes);
                        primary = value.status;
                        if(!primary && value.value !== null)
                        {
                            const encoded = codec.encodeChecked(value.value!);
                            primary = encoded.status;
                            if(!primary)
                            {
                                present = true;
                                for(let i = 0; i < encoded.bytes.length; ++i)
                                {
                                    const digit = encoded.bytes[i].toString(16);
                                    hex += digit.length == 1 ? "0" + digit : digit;
                                }
                            }
                        }
                        else if(!primary)
                            primary = 22;
                    }
                    break;
                }
                primary = pause();
                if(primary)
                    break;
            }
        cleanup = owner.close();
    }
    const io = write('{"primary":' + primary.toString() + ',"cleanup":' + cleanup.toString() + ',"response_present":' + (present ? "1" : "0") +
                     ',"wire_hex":"' + hex + '"}\n');
    let status = primary ? primary : cleanup ? cleanup : io;
    exit(status > 125 ? 125 : status);
}
