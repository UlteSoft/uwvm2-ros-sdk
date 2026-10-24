/**
 * @file telemetry_ros1_noetic_devel.ts
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/** Whole original records through one explicitly owned alias. */
import {Capability, NativeApi} from "ros/as/ros1/roswasm";
import {
    Ros1Dsr_msgsRobotState as State,
    Ros1Dsr_msgsRobotStateCodec as StateCodec,
    Ros1Dsr_msgsRobotStopCodec as CommandCodec
} from "doosan/as/ros1/doosan-ros1-noetic-devel-complete/bounded_records";
import {readPayload} from "doosan/flows/as/wasi_alias";
export let cleanupStatus: u32 = 0;
let observed: State|null = null;

/** Access a complete prior success without dequeuing another event. */
export function lastValue(): State|null
{
    return observed;
}

export function readOnce(alias: string): u32
{
    observed = null;
    cleanupStatus = 0;
    const cap = new Capability(new NativeApi());
    let primary = cap.open(alias);
    if(!primary)
        primary = cap.subscribe();
    if(!primary)
    {
        const r = cap.poll(State.maxWireBytes);
        primary = r.status;
        if(!primary)
        {
            const d = new StateCodec().decodeChecked(r.bytes);
            primary = d.status;
            if(!primary)
                observed = d.value;
        }
    }
    if(cap.isOpen())
        cleanupStatus = cap.close();
    return primary;
}

/** stdin supplies a counted complete command after admission; never synthesize. */
export function commandOnce(alias: string): u32
{
    cleanupStatus = 0;
    const cap = new Capability(new NativeApi());
    let primary = cap.open(alias);
    if(!primary)
    {
        const input = readPayload();
        primary = input.status;
        if(!primary)
        {
            const codec = new CommandCodec();
            const decoded = codec.decodeChecked(input.bytes);
            primary = decoded.status;
            if(!primary)
            {
                const value = decoded.value;
                if(value === null)
                {
                    primary = 22;
                }
                else
                {
                    const encoded = codec.encodeChecked(value);
                    primary = encoded.status;
                    if(!primary)
                        primary = cap.publish(encoded.bytes);
                }
            }
        }
    }
    if(cap.isOpen())
        cleanupStatus = cap.close();
    return primary;
}
