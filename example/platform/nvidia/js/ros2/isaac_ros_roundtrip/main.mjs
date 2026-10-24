/**
 * @file main.mjs
 * @brief Compute a complete NVIDIA canonical value in the genuine JavaScript guest.
 * @details The shared QuickJS VM executes all codec calls. No ROS/GPU capability
 * is opened. Argument input and complete byte output remain bounded.
 */
import * as types from 'nvidia-isaac-ros/js/ros2/complete/records';
const codec = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec;

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
    v.header.stamp.sec = -3;
    v.header.stamp.nanosec = seed % 1000000000;
    v.header.frame_id = "cam";
    const d = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec.defaultValue();
    d.family = "tag36h11";
    d.id = seed % 2147483648;
    d.center.x = seed / 8;
    d.pose.pose.pose.orientation.w = 1;
    d.corners.forEach((c, i) => {
        c.x = seed + i;
        c.y = i * 2.5;
    });
    d.pose.pose.covariance = d.pose.pose.covariance.map((_, i) => (seed % 31) + i / 64);
    v.detections.push(d);
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
