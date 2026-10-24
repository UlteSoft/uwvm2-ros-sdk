/**
 * @file main.ts
 * @brief Compute complete typed NVIDIA values with the actual AssemblyScript frontend.
 * @details Checked encoding/decoding and every equality comparison run in Wasm.
 * Only explicit ordinary WASI argument/stdout operations are imported.
 */
/** @brief Re-export the shared local abort hook required by the AS producer. */
export {abortGuest} from 'ros/as/api';
import * as types from 'nvidia-isaac-ros/as/ros2/complete/records';
import {decimal, finish, hex, line, parseHex, readArguments} from 'nvidia/as/console';

/**
 * @brief Construct a complete typed sample from an actual uint32 input.
 * @param seed Dimensionless input selecting finite original-field values.
 * @return Complete owned record; construction grants no ROS authority.
 */
function sample(seed: u32): types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
{
    let v = new types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray();
    v.header.stamp.sec = -3;
    v.header.stamp.nanosec = seed % 1000000000;
    v.header.frame_id = "cam";
    let d = new types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection();
    d.family = "tag36h11";
    d.id = <i32>(seed & 0x7fffffff);
    d.center.x = <f64>seed / 8;
    d.pose.pose.pose.orientation.w = 1;
    for(let i = 0; i < 4; ++i)
    {
        d.corners[i].x = <f64>seed + <f64>i;
        d.corners[i].y = <f64>i * 2.5;
    }
    for(let i = 0; i < 36; ++i)
        d.pose.pose.covariance[i] = <f64>(seed % 31) + <f64>i / 64;
    v.detections.push(d);
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
    const codec = new types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec();
    let wire = new Uint8Array(0);
    if('malformed_wire' === 'decode_argument')
    {
        if(args.length != 2)
        {
            finish(22);
            return;
        }
        const parsed = parseHex(args[1], types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec.maxWireBytes);
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
    const again = codec.encodeChecked(changetype<types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>(decoded.value));
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
