// @file telemetry_ros1_aurora_bridge_v1.ts
// @brief Provide the complete fourier telemetry_ros1_aurora_bridge_v1.ts source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
/** Whole original records through one explicitly owned alias. */
import {Capability, NativeApi} from 'ros/as/ros1/roswasm';
import {
    Ros1Uwvm_fourier_bridgeStatus as State,
    Ros1Uwvm_fourier_bridgeStatusCodec as StateCodec,
    Ros1Uwvm_fourier_bridgeVelocityCommandCodec as CommandCodec,
} from './ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_records';
import {readPayload} from './wasi_alias';
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
