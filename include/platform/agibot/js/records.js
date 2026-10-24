// @file records.js
// @brief Provide the complete agibot records.js source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
import {SCHEMA} from "agibot/shared/schema/aimdk_v1_1_0_main";

/**
 * Decode every original field of one bounded canonical AimDK record.
 * @param {string} typename Original fully qualified message/response name.
 * @param {Uint8Array} bytes Borrowed complete payload, at most 32768 bytes.
 * @returns {object} Owned record; all int64/uint64 fields are exact BigInt values.
 * @throws {RangeError} Truncation, trailing bytes, oversized arrays/strings,
 * invalid UTF-8, noncanonical booleans or nonfinite floats. No I/O is performed.
 */
export function decode(typename, bytes)
{
    if(!(bytes instanceof Uint8Array) || bytes.length > 32768 || !SCHEMA[typename])
    {
        throw new RangeError("Invalid canonical record");
    }
    const view = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
    let offset = 0;

    function take(size)
    {
        if(size < 0 || size > bytes.length - offset)
        {
            throw new RangeError("Truncated canonical record");
        }
        const start = offset;
        offset += size;
        return start;
    }

    function scalar(type, bound)
    {
        if(type === "string")
        {
            const size = view.getUint32(take(4), true);
            if(size > bound)
            {
                throw new RangeError("String exceeds guest bound");
            }
            return utf8(bytes.subarray(take(size), offset));
        }
        const formats = {
            bool : [ 1, "getUint8" ],
            byte : [ 1, "getUint8" ],
            char : [ 1, "getUint8" ],
            int8 : [ 1, "getInt8" ],
            uint8 : [ 1, "getUint8" ],
            int16 : [ 2, "getInt16" ],
            uint16 : [ 2, "getUint16" ],
            int32 : [ 4, "getInt32" ],
            uint32 : [ 4, "getUint32" ],
            int64 : [ 8, "getBigInt64" ],
            uint64 : [ 8, "getBigUint64" ],
            float32 : [ 4, "getFloat32" ],
            float64 : [ 8, "getFloat64" ]
        };
        const format = formats[type];
        if(!format)
        {
            return record(type);
        }
        const value = view[format[1]](take(format[0]), true);
        if(type === "bool")
        {
            if(value > 1)
            {
                throw new RangeError("Noncanonical boolean");
            }
            return value === 1;
        }
        if(type.startsWith("float") && !Number.isFinite(value))
        {
            throw new RangeError("Nonfinite canonical float");
        }
        return value;
    }

    function record(type)
    {
        const definition = SCHEMA[type];
        if(!definition)
        {
            throw new RangeError("Unknown original record");
        }
        const value = {};
        for(const field of definition.fields)
        {
            if(field.sequence !== undefined || field.array !== undefined)
            {
                const count = field.array === undefined ? view.getUint32(take(4), true) : field.array;
                if(field.sequence !== undefined && count > field.sequence)
                {
                    throw new RangeError("Sequence exceeds guest bound");
                }
                value[field.name] = Array.from({length : count}, () => scalar(field.type, field.string));
            }
            else
            {
                value[field.name] = scalar(field.type, field.string);
            }
        }
        return value;
    }

    const result = record(typename);
    if(offset !== bytes.length)
    {
        throw new RangeError("Trailing canonical bytes");
    }
    return result;
}

/**
 * Decode strict UTF-8 without depending on browser TextDecoder APIs.
 * @param {Uint8Array} bytes Borrowed string bytes without NUL.
 * @returns {string} Owned Unicode scalar string.
 * @throws {RangeError} Overlong encodings, surrogates, NUL or malformed input.
 */
export function utf8(bytes)
{
    let text = "";
    for(let index = 0; index < bytes.length;)
    {
        const first = bytes[index++];
        let code = first;
        let trailing = 0;
        let minimum = 0;
        if(first >= 0xc2 && first <= 0xdf)
        {
            code &= 31;
            trailing = 1;
            minimum = 0x80;
        }
        else if(first >= 0xe0 && first <= 0xef)
        {
            code &= 15;
            trailing = 2;
            minimum = 0x800;
        }
        else if(first >= 0xf0 && first <= 0xf4)
        {
            code &= 7;
            trailing = 3;
            minimum = 0x10000;
        }
        else if(first > 0x7f)
        {
            throw new RangeError("Invalid UTF-8 lead byte");
        }
        if(trailing > bytes.length - index)
        {
            throw new RangeError("Truncated UTF-8");
        }
        for(let part = 0; part < trailing; ++part)
        {
            const next = bytes[index++];
            if((next & 0xc0) !== 0x80)
            {
                throw new RangeError("Invalid UTF-8 continuation");
            }
            code = code * 64 + (next & 63);
        }
        if(code === 0 || code < minimum || code > 0x10ffff || (code >= 0xd800 && code <= 0xdfff))
        {
            throw new RangeError("Invalid Unicode scalar");
        }
        text += String.fromCodePoint(code);
    }
    return text;
}

/**
 * Render complete records; 64-bit values remain exact decimal JSON strings.
 * @param {object} value Owned, successfully decoded original record.
 * @returns {string} Full JSON; no fields are projected away.
 */
export function json(value)
{
    if(typeof value === "bigint")
    {
        return JSON.stringify(value.toString());
    }
    if(typeof value === "number")
    {
        if(!Number.isFinite(value))
        {
            throw new RangeError("Nonfinite JSON value");
        }
        return Object.is(value, -0) ? "-0" : String(value);
    }
    if(Array.isArray(value))
    {
        return "[" + value.map(json).join(",") + "]";
    }
    if(value !== null && typeof value === "object")
    {
        return "{" + Object.keys(value).map(key => JSON.stringify(key) + ":" + json(value[key])).join(",") + "}";
    }
    return JSON.stringify(value);
}
