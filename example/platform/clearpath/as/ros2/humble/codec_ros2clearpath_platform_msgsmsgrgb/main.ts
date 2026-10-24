/**
 * @brief Exercise complete clearpath_platform_msgs/msg/RGB records with the actual AssemblyScript codec.
 * @details Checks malformed extents and exact re-encoding without native authority.
 */
import {abortGuest} from "ros/as/api";
import {Ros2Clearpath_platform_msgsMsgRGB, Ros2Clearpath_platform_msgsMsgRGBCodec} from "clearpath/as/ros2/humble/records";
@external("wasi_snapshot_preview1", "fd_write") declare function fd_write(fd: u32, iovs: usize, count: u32, written: usize): u32;
@external("wasi_snapshot_preview1", "proc_exit") declare function proc_exit(status: u32): void;

export function _start(): void
{
    const value = new Ros2Clearpath_platform_msgsMsgRGB();
    const codec = new Ros2Clearpath_platform_msgsMsgRGBCodec();
    const encoded = codec.encodeChecked(value);
    if(encoded.status != 0)
    {
        proc_exit(encoded.status);
        return;
    }
    const recovered = codec.decodeChecked(encoded.bytes);
    if(recovered.status != 0 || recovered.value === null)
    {
        proc_exit(22);
        return;
    }
    const restored = codec.encodeChecked(changetype<Ros2Clearpath_platform_msgsMsgRGB>(recovered.value));
    if(restored.status != 0 || restored.bytes.length != encoded.bytes.length)
    {
        proc_exit(22);
        return;
    }
    for(let index = 0; index < encoded.bytes.length; ++index)
    {
        if(encoded.bytes[index] != restored.bytes[index])
        {
            proc_exit(22);
            return;
        }
    }
    const trailing = new Uint8Array(encoded.bytes.length + 1);
    trailing.set(encoded.bytes);
    if(codec.decodeChecked(trailing).status == 0)
    {
        proc_exit(22);
        return;
    }
    if(encoded.bytes.length > 0 && codec.decodeChecked(encoded.bytes.slice(0, encoded.bytes.length - 1)).status == 0)
    {
        proc_exit(22);
        return;
    }
    const output = String.UTF8.encode(encoded.bytes.length.toString() + "\n");
    const iov = memory.data(8), written = memory.data(4);
    store<u32>(iov, <u32>changetype<usize>(output));
    store<u32>(iov + 4, <u32>output.byteLength);
    if(fd_write(1, iov, 1, written) != 0 || load<u32>(written) != <u32>output.byteLength)
    {
        proc_exit(5);
    }
}
