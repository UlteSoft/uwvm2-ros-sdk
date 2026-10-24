// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Demonstrate typed Unitree values with independently checked wire fields.
 * @details Public imports reuse the SDK's original JavaScript codec and transport.
 * Invalid source arguments return 22. Transport operations preserve their original
 * status; encoding a value never grants ROS access or starts a native peer.
 */

import * as records from "unitree/typescript/ros1/records";

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
 * @brief Encode a complete typed sample with explicit nondefault field checks.
 * @details Scale the complete nonzero sample, encode it, and verify every decoded field.
 * The first optional argument is a finite, nonzero scale factor.
 * @return Zero on success, otherwise the original primary or cleanup status.
 * @throws Error If an argument or field validation fails; the entry handler returns 22.
 */
function main(): number
{
    const scale = Number(__uwvm.argv[1] ?? "1");
    if (!Number.isFinite(scale) || scale === 0)
    {
        throw new RangeError("scale must be finite and nonzero");
    }
    const source =
        new records.Ros1Unitree_legged_msgsCartesian({x : 0.125 * scale, y : -0.25 * scale, z : 0.5 * scale});
    const bytes = source.encode();
    const value = records.Ros1Unitree_legged_msgsCartesian.decode(bytes);
    if (!Object.is(value.x, Math.fround(source.x)))
    {
        throw new Error("field x changed during encode");
    }
    if (!Object.is(value.y, Math.fround(source.y)))
    {
        throw new Error("field y changed during encode");
    }
    if (!Object.is(value.z, Math.fround(source.z)))
    {
        throw new Error("field z changed during encode");
    }
    const nondefault = checkFields(value, bytes, true);
    __uwvm.output(JSON.stringify({
        type : records.Ros1Unitree_legged_msgsCartesian.schema.type,
        codec : records.Ros1Unitree_legged_msgsCartesian.schema.codec_identity,
        bytes : bytes.length,
        checked_fields : 3,
        nondefault_fields : nondefault,
        fields : fieldsOf(value),
        hex : hexOf(bytes)
    }));
    return 0;
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
