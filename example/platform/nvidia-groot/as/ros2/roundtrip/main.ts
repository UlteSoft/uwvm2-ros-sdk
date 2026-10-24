/**
 * @file main.ts
 * @brief Compute complete typed NVIDIA values with the actual AssemblyScript frontend.
 * @details Checked encoding/decoding and every equality comparison run in Wasm.
 * Only explicit ordinary WASI argument/stdout operations are imported.
 */
/** @brief Re-export the shared local abort hook required by the AS producer. */
export {abortGuest} from 'ros/as/api';
import * as types from 'nvidia-groot/as/ros2/complete/records';
import {decimal, finish, hex, line, parseHex, readArguments} from 'nvidia/as/console';

/**
 * @brief Construct a complete typed sample from an actual uint32 input.
 * @param seed Dimensionless input selecting finite original-field values.
 * @return Complete owned record; construction grants no ROS authority.
 */
function sample(seed: u32): types.Ros2Uwvm_groot_bridgeMsgFloatTensor
{
    let v = new types.Ros2Uwvm_groot_bridgeMsgFloatTensor();
    v.key = "state";
    v.shape = [ 1, 1, 3 ];
    v.values = new Array<f32>();
    for(let i = 0; i < 3; ++i)
        v.values.push(<f32>(seed % 97) / 8 + <f32>i);
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
    const codec = new types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec();
    let wire = new Uint8Array(0);
    if('roundtrip' === 'decode_argument')
    {
        if(args.length != 2)
        {
            finish(22);
            return;
        }
        const parsed = parseHex(args[1], types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec.maxWireBytes);
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
    const again = codec.encodeChecked(changetype<types.Ros2Uwvm_groot_bridgeMsgFloatTensor>(decoded.value));
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
    if('roundtrip' === 'malformed_wire')
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
