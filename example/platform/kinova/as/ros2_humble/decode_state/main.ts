/** @brief Validate the complete original value in genuine AssemblyScript. */
import {Ros2Sensor_msgsMsgJointState, Ros2Sensor_msgsMsgJointStateCodec} from "kinova/as/ros2/mobile-fjt-humble-complete/bounded_records";
import {write, exit} from "ros/as/command";
@external("wasi_snapshot_preview1", "fd_read") declare function fdRead(fd: u32, vector: usize, count: u32, used: usize): u32;
const bytes = new Uint8Array(1405);
const vector = new Uint32Array(2), used = new Uint32Array(1);
let length: u32 = 0;
while(length < <u32>bytes.length)
{
    vector[0] = <u32>bytes.dataStart + length;
    vector[1] = <u32>bytes.length - length;
    used[0] = 0;
    if(fdRead(0, vector.dataStart, 1, used.dataStart))
        exit(5);
    if(used[0] > vector[1])
        exit(22);
    if(!used[0])
        break;
    length += used[0];
}
const codec = new Ros2Sensor_msgsMsgJointStateCodec();
const decoded = codec.decodeChecked(bytes.slice(0, <i32>length));
if(decoded.status || decoded.value === null)
    exit(decoded.status ? decoded.status : 22);
const encoded = codec.encodeChecked(changetype<Ros2Sensor_msgsMsgJointState>(decoded.value));
if(encoded.status)
    exit(encoded.status);
let text = "";
for(let index = 0; index < encoded.bytes.length; ++index)
    text += encoded.bytes[index].toString(16).padStart(2, "0");
exit(write(text + "\n"));
