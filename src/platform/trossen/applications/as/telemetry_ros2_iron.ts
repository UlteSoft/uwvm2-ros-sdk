/**
 * @file telemetry_ros2_iron.ts
 * @brief Preserve the original trossen explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/** Whole original records through one explicitly owned alias. */
import {Capability, NativeApi} from "../../../../assemblyscript/ros2/roswasm";
import {
    Ros2Interbotix_xs_msgsMsgJointTemps as State,
    Ros2Interbotix_xs_msgsMsgJointTempsCodec as StateCodec,
    Ros2Interbotix_xs_msgsMsgJointGroupCommandCodec as CommandCodec
} from "../../../../custom-types/trossen-ros2-iron-complete/bounded_records";
import {readPayload} from "./wasi_alias";
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
