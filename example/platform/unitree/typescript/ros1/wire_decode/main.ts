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
 * @brief Decode supplied canonical hex; omission selects the complete nondefault sample.
 * @details Validate bounded hexadecimal input before decoding the complete canonical frame.
 * Omitting the first argument selects a complete nonzero sample.
 * @return Zero on success, otherwise the original primary or cleanup status.
 * @throws Error If an argument or field validation fails; the entry handler returns 22.
 */
function main(): number
{
    const sample = "0000003e000080be0000003f";
    const hex = __uwvm.argv[1] ?? sample;
    const schema = records.Ros1Unitree_legged_msgsCartesian.schema;
    if (hex.length % 2 !== 0 || hex.length < 2 * schema.minimum || hex.length > 2 * schema.maximum ||
        !/^[0-9a-f]*$/i.test(hex))
    {
        throw new RangeError("hex frame has an invalid character or byte extent");
    }
    const bytes = Uint8Array.from({length : hex.length / 2},
                                  (_, index) => Number.parseInt(hex.slice(index * 2, index * 2 + 2), 16));
    const value = records.Ros1Unitree_legged_msgsCartesian.decode(bytes);
    const nondefault = checkFields(value, bytes, hex.toLowerCase() === sample);
    if (hexOf(value.encode()) !== hex.toLowerCase())
    {
        throw new Error("decoded field bytes changed");
    }
    __uwvm.output(JSON.stringify({
        type : schema.type,
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
