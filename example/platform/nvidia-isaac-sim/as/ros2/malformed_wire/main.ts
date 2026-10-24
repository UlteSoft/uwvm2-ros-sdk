/**
 * @file main.ts
 * @brief Compute complete typed NVIDIA values with the actual AssemblyScript frontend.
 * @details Checked encoding/decoding and every equality comparison run in Wasm.
 * Only explicit ordinary WASI argument/stdout operations are imported.
 */
/** @brief Re-export the shared local abort hook required by the AS producer. */
export {abortGuest} from 'ros/as/api';
import * as types from 'nvidia-isaac-sim/as/ros2/complete/records';
import {decimal, finish, hex, line, parseHex, readArguments} from 'nvidia/as/console';

/**
 * @brief Construct a complete typed sample from an actual uint32 input.
 * @param seed Dimensionless input selecting finite original-field values.
 * @return Complete owned record; construction grants no ROS authority.
 */
function sample(seed: u32): types.Ros2Sensor_msgsMsgJointState
{
    let v = new types.Ros2Sensor_msgsMsgJointState();
    v.header.stamp.sec = -2;
    v.header.stamp.nanosec = seed % 1000000000;
    v.header.frame_id = "base";
    v.name = [ "j0", "j1" ];
    v.position = new Array<f64>();
    v.velocity = new Array<f64>();
    v.effort = new Array<f64>();
    for(let i = 0; i < 2; ++i)
    {
        v.position.push(<f64>(seed % 41) / 16 + <f64>i);
        v.velocity.push(<f64>i / 32);
        v.effort.push(<f64>(seed % 23) / 4);
    }
    return v;
}

/** @brief Execute a checked complete-value operation, preserving every byte. */
export function _start(): void
{
    const input = readArguments();
    if(input.status)
    {
        finish(input.status);
        return;
    }
    const args = input.values;
    if(args.length < 1 || args.length > 2)
    {
        finish(22);
        return;
    }
    const codec = new types.Ros2Sensor_msgsMsgJointStateCodec();
    let wire = new Uint8Array(0);
    if('malformed_wire' === 'decode_argument')
    {
        if(args.length != 2)
        {
            finish(22);
            return;
        }
        const parsed = parseHex(args[1], types.Ros2Sensor_msgsMsgJointStateCodec.maxWireBytes);
        if(parsed.status)
        {
            finish(parsed.status);
            return;
        }
        wire = parsed.bytes;
    }
    else
    {
        const parsed = decimal(args.length == 2 ? args[1] : '17');
        if(parsed.status || parsed.value > u32.MAX_VALUE)
        {
            finish(22);
            return;
        }
        const encoded = codec.encodeChecked(sample(<u32>parsed.value));
        if(encoded.status)
        {
            finish(encoded.status);
            return;
        }
        wire = encoded.bytes;
    }
    const decoded = codec.decodeChecked(wire);
    if(decoded.status || decoded.value === null)
    {
        finish(decoded.status ? decoded.status : 22);
        return;
    }
    const again = codec.encodeChecked(changetype<types.Ros2Sensor_msgsMsgJointState>(decoded.value));
    if(again.status || again.bytes.length != wire.length)
    {
        finish(22);
        return;
    }
    for(let i = 0; i < wire.length; ++i)
        if(wire[i] != again.bytes[i])
        {
            finish(22);
            return;
        }
    if('malformed_wire' === 'malformed_wire')
    {
        if(!wire.length)
        {
            finish(22);
            return;
        }
        const extra = new Uint8Array(wire.length + 1);
        extra.set(wire);
        if(!codec.decodeChecked(wire.slice(0, wire.length - 1)).status || !codec.decodeChecked(extra).status)
        {
            finish(22);
            return;
        }
    }
    finish(line('wire_bytes=' + wire.length.toString() + ' wire_hex=' + hex(wire)));
}
