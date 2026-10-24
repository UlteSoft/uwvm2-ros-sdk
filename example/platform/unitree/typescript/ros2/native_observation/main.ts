// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Demonstrate typed Unitree values with independently checked wire fields.
 * @details Public imports reuse the SDK's original JavaScript codec and transport.
 * Invalid source arguments return 22. Transport operations preserve their original
 * status; encoding a value never grants ROS access or starts a native peer.
 */

import * as records from "unitree/typescript/ros2/records";
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
function checkFields(value: records.Ros2Unitree_goMsgWirelessController, bytes: Uint8Array,
                     requireNondefault: boolean): number
{
    if (bytes.length !== 18)
    {
        throw new RangeError("complete record extent required");
    }
    const view = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
    let nondefault = 0;
    if (!Object.is(value.lx, view.getFloat32(0, true)))
    {
        throw new Error("field lx differs from wire");
    }
    if (value.lx !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.ly, view.getFloat32(4, true)))
    {
        throw new Error("field ly differs from wire");
    }
    if (value.ly !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.rx, view.getFloat32(8, true)))
    {
        throw new Error("field rx differs from wire");
    }
    if (value.rx !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.ry, view.getFloat32(12, true)))
    {
        throw new Error("field ry differs from wire");
    }
    if (value.ry !== 0)
    {
        nondefault++;
    }
    if (!Object.is(value.keys, view.getUint16(16, true)))
    {
        throw new Error("field keys differs from wire");
    }
    if (value.keys !== 0)
    {
        nondefault++;
    }
    if (requireNondefault && nondefault !== 5)
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
function fieldsOf(value: records.Ros2Unitree_goMsgWirelessController)
{
    return {lx : value.lx, ly : value.ly, rx : value.rx, ry : value.ry, keys : value.keys};
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
    const value = new records.Ros2Unitree_goMsgWirelessController(
        {lx : 0.375, ly : -0.625, rx : 1.125, ry : -1.375, keys : 37285});
    const payload = value.encode();
    const decoded = records.Ros2Unitree_goMsgWirelessController.decode(payload);
    if (!Object.is(decoded.lx, 0.375))
    {
        throw new Error("native field lx changed");
    }
    if (!Object.is(decoded.ly, -0.625))
    {
        throw new Error("native field ly changed");
    }
    if (!Object.is(decoded.rx, 1.125))
    {
        throw new Error("native field rx changed");
    }
    if (!Object.is(decoded.ry, -1.375))
    {
        throw new Error("native field ry changed");
    }
    if (!Object.is(decoded.keys, 37285))
    {
        throw new Error("native field keys changed");
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
        type : "unitree_go/msg/WirelessController",
        checked_fields : 5,
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
