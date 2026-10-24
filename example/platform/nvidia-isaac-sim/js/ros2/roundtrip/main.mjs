/**
 * @file main.mjs
 * @brief Compute a complete NVIDIA canonical value in the genuine JavaScript guest.
 * @details The shared QuickJS VM executes all codec calls. No ROS/GPU capability
 * is opened. Argument input and complete byte output remain bounded.
 */
import * as types from 'nvidia-isaac-sim/js/ros2/complete/records';
const codec = types.Ros2Sensor_msgsMsgJointStateCodec;

/** @brief Compare every active canonical byte without native object projection. */
function equal(a, b)
{
    return a.length === b.length && a.every((v, i) => v === b[i]);
}

/** @brief Decode an exact bounded hexadecimal argument or refuse the whole input. */
function readHex(text)
{
    if(text.length > codec.maxWireBytes * 2 || text.length % 2 || !/^[0-9a-fA-F]*$/.test(text))
        throw new Error('invalid bounded hex');
    return Uint8Array.from(text.match(/.{2}/g) || [], b => Number.parseInt(b, 16));
}

/** @brief Construct complete typed input from the actual caller-selected seed. */
function sample(seed)
{
    const v = codec.defaultValue();
    v.header.stamp.sec = -2;
    v.header.stamp.nanosec = seed % 1000000000;
    v.header.frame_id = "base";
    v.name = [ "j0", "j1" ];
    v.position = [ (seed % 41) / 16, (seed % 41) / 16 + 1 ];
    v.velocity = [ 0, 1 / 32 ];
    v.effort = [ (seed % 23) / 4, (seed % 23) / 4 ];
    return v;
}

/** @brief Execute the selected complete-value operation and preserve its error. */
function run()
{
    const args = __uwvm.argv;
    if(args.length > 2)
        throw new Error('one argument at most');
    const operation = 'roundtrip';
    let wire;
    if(operation === 'decode_argument')
    {
        if(args.length !== 2)
            throw new Error('complete hex argument required');
        wire = readHex(args[1]);
        const value = codec.decode(wire);
        if(!equal(wire, codec.encode(value)))
            throw new Error('complete byte equality failed');
    }
    else
    {
        const text = args.length === 2 ? args[1] : '17';
        if(!/^[0-9]+$/.test(text))
            throw new Error('unsigned seed required');
        const seed = Number(text);
        if(!Number.isSafeInteger(seed) || seed > 4294967295)
            throw new Error('seed overflow');
        wire = codec.encode(sample(seed));
        const decoded = codec.decode(wire);
        if(!equal(wire, codec.encode(decoded)))
            throw new Error('round trip failed');
        if(operation === 'malformed_wire')
        {
            if(codec.valid(wire.slice(0, -1)) || codec.valid(Uint8Array.from([...wire, 0 ])))
                throw new Error('malformed wire accepted');
        }
    }
    print('wire_bytes=' + wire.length + ' wire_hex=' + Array.from(wire, b => b.toString(16).padStart(2, '0')).join(''));
    return 0;
}

try
{
    globalThis.exitCode = run();
}
catch(error)
{
    globalThis.exitCode = error.code === 90 ? 90 : 22;
}
