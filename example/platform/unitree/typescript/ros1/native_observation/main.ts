// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Demonstrate typed Unitree values with independently checked wire fields.
 * @details Public imports reuse the SDK's original JavaScript codec and transport.
 * Invalid source arguments return 22. Transport operations preserve their original
 * status; encoding a value never grants ROS access or starts a native peer.
 */

import * as records from "unitree/typescript/ros1/records";
import {Capability} from "unitree/typescript/transport";

/**
 * @brief Compare every sample field with its canonical little-endian byte offset.
 * @details DataView supplies an independent check of the typed codec result.
 * @param value Decoded sample whose fields must match the supplied complete frame.
 * @param bytes Complete canonical frame, with no leading or trailing data.
 * @param requireNondefault Require every sample field to differ from zero.
 * @return Number of nonzero fields in the sample.
 * @throws RangeError If the frame does not have the exact expected extent.
 * @throws Error If a field differs or a required nonzero field is absent.
 */
function checkFields(value: records.Ros1Unitree_legged_msgsCartesian, bytes: Uint8Array,
                     requireNondefault: boolean): number
{
    if (bytes.length !== 12)
    {
        throw new RangeError("complete record extent required");
    }
    const view = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
    let nondefault = 0;
    if (!Object.is(value.x, view.getFloat32(0, true)))
    {
        throw new Error("field x differs from wire");
    }
    if (value.x !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.y, view.getFloat32(4, true)))
    {
        throw new Error("field y differs from wire");
    }
    if (value.y !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.z, view.getFloat32(8, true)))
    {
        throw new Error("field z differs from wire");
    }
    if (value.z !== 0)
    {
        nondefault++;
    }
    if (requireNondefault && nondefault !== 3)
    {
        throw new Error("all original sample fields must be nondefault");
    }
    return nondefault;
}

/**
 * @brief Select all original sample fields for a readable diagnostic object.
 * @param value Validated record returned by the canonical decoder.
 * @return A plain object retaining original field spelling and numeric values.
 */
function fieldsOf(value: records.Ros1Unitree_legged_msgsCartesian)
{
    return {x : value.x, y : value.y, z : value.z};
}

/**
 * @brief Render complete canonical bytes as lowercase hexadecimal.
 * @param bytes Bytes to render; the input is borrowed and never changed.
 * @return Two hexadecimal digits per input byte, without separators.
 */
function hexOf(bytes: Uint8Array): string
{
    return Array.from(bytes, byte => byte.toString(16).padStart(2, "0")).join("");
}

/**
 * @brief Prepare one fully checked value; manual native peer/policy remains external.
 * @details Prepare and verify a complete value before opening the explicit offline_value alias.
 * Release an acquired capability exactly once and keep primary and cleanup status
 * separate. The supplied deployment intentionally has ROS disabled and no grants.
 * @return Zero on success, otherwise the original primary or cleanup status.
 * @throws Error If an argument or field validation fails; the entry handler returns 22.
 */
function main(): number
{
    const value = new records.Ros1Unitree_legged_msgsCartesian({x : 1.25, y : -2.5, z : 3.75});
    const payload = value.encode();
    const decoded = records.Ros1Unitree_legged_msgsCartesian.decode(payload);
    if (!Object.is(decoded.x, 1.25))
    {
        throw new Error("native field x changed");
    }
    if (!Object.is(decoded.y, -2.5))
    {
        throw new Error("native field y changed");
    }
    if (!Object.is(decoded.z, 3.75))
    {
        throw new Error("native field z changed");
    }
    const nondefault = checkFields(decoded, payload, true);
    const [owner, opened] = Capability.open("offline_value");
    let primary: number = opened;
    let rpc: number | null = null;
    let cleanup: number | null = null;
    if (owner !== null)
    {
        try
        {
            rpc = owner.invoke("topic_publish", payload)[0];
            primary = rpc;
        }
        finally
        {
            cleanup = owner.close();
        }
    }
    __uwvm.output(JSON.stringify({
        primary,
        rpc,
        cleanup,
        cleanup_present : cleanup !== null,
        type : "unitree_legged_msgs/Cartesian",
        checked_fields : 3,
        nondefault_fields : nondefault,
        fields : fieldsOf(decoded),
        hex : hexOf(payload)
    }));
    return primary !== 0 ? primary : cleanup ?? 0;
}
try
{
    globalThis.exitCode = main();
}
catch (error: unknown)
{
    __uwvm.output(String(error));
    globalThis.exitCode = 22;
}
