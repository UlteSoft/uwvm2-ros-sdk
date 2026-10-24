/**
 * @file telemetry_ros2.ts
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/**
 * Real AssemblyScript selected UR I/O reader; no stub NativeApi or host mock.
 * Compile this backend alone. readOnce receives an explicit resource alias and
 * returns the primary ABI status. cleanupStatus preserves independent cleanup.
 * lastValue changes only after full checked decode; inspect status before using
 * it as a new observation. No clock, socket, thread or policy API is imported.
 */
import {Capability, NativeApi} from "ros/as/ros2/roswasm";
import {
    Ros2Ur_msgsMsgIOStates as Status,
    Ros2Ur_msgsMsgIOStatesCodec as StatusCodec
} from "universal_robots/as/ros2/universal-robots-ros2-complete/bounded_records";
export let cleanupStatus: u32 = 0;
let observed: Status|null = null;

export function lastValue(): Status|null
{
    return observed;
}

export function readOnce(alias: string): u32
{
    cleanupStatus = 0;
    const cap = new Capability(new NativeApi());
    let primary = cap.open(alias);
    if(!primary)
        primary = cap.subscribe();
    if(!primary)
    {
        const reply = cap.poll(Status.maxWireBytes);
        primary = reply.status;
        if(!primary)
        {
            const decoded = new StatusCodec().decodeChecked(reply.bytes);
            primary = decoded.status;
            if(!primary)
                observed = decoded.value;
        }
    }
    if(cap.isOpen())
        cleanupStatus = cap.close();
    return primary ? primary : cleanupStatus;
}
