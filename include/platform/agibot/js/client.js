// @file client.js
// @brief Provide the complete agibot client.js source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
import {decode} from "agibot/js/records";

/** Encode a capability alias as strict UTF-8 without browser or Node APIs. */
function aliasBytes(alias)
{
    if(typeof alias !== "string")
    {
        throw new RangeError("Alias must be a string");
    }
    const bytes = [];
    for(const scalar of alias)
    {
        const value = scalar.codePointAt(0);
        if(value === 0 || (value >= 0xd800 && value <= 0xdfff))
        {
            throw new RangeError("Invalid alias");
        }
        if(value < 0x80)
        {
            bytes.push(value);
        }
        else if(value < 0x800)
        {
            bytes.push(0xc0 | (value >> 6), 0x80 | (value & 63));
        }
        else if(value < 0x10000)
        {
            bytes.push(0xe0 | (value >> 12), 0x80 | ((value >> 6) & 63), 0x80 | (value & 63));
        }
        else
        {
            bytes.push(0xf0 | (value >> 18), 0x80 | ((value >> 12) & 63), 0x80 | ((value >> 6) & 63), 0x80 | (value & 63));
        }
    }
    if(bytes.length < 1 || bytes.length > 255)
    {
        throw new RangeError("Alias must have 1..255 UTF-8 bytes");
    }
    return new Uint8Array(bytes);
}

/**
 * Own one explicit ROS capability, retire it once, then decode original fields.
 * @returns {{value: object|null, error: number, cleanup: number, vendor: bigint}}
 * Owned result; a vendor refusal remains separate from transport/codec errors.
 * @details Synchronous calls share no mutable state. Only an empty topic queue
 * is polled again. Service calls are attempted once under the gateway deadline.
 */
function observe(alias, typename, capacity, topic, timeoutMilliseconds)
{
    const result = {value : null, error : 0, cleanup : 0, vendor : 0n};
    let name;
    try
    {
        name = aliasBytes(alias);
    }
    catch(invalid)
    {
        result.error = 22;
        return result;
    }
    if(!Number.isInteger(timeoutMilliseconds) || timeoutMilliseconds < 1 || timeoutMilliseconds > 30000)
    {
        result.error = 22;
        return result;
    }
    const native = globalThis.__uwvm;
    if(native.invoke("abi_version", 0n, new Uint8Array(0), 0)[3] !== 1n)
    {
        result.error = 22;
        return result;
    }
    const opened = native.invoke("capability_open", 0n, name, 0);
    result.error = opened[0];
    if(result.error !== 0)
    {
        return result;
    }
    const owner = opened[3];
    let frame;
    try
    {
        if(topic)
        {
            const clock = native.invoke("monotonic_ns", 0n, new Uint8Array(0), 0);
            result.error = clock[0];
            const start = clock[3];
            if(result.error === 0)
            {
                result.error = native.invoke("topic_subscribe", owner, new Uint8Array(0), 0)[0];
            }
            while(result.error === 0)
            {
                frame = native.invoke("event_poll", owner, new Uint8Array(0), capacity);
                result.error = frame[0];
                if(result.error !== 11)
                {
                    break;
                }
                const now = native.invoke("monotonic_ns", 0n, new Uint8Array(0), 0);
                if(now[0] !== 0 || now[3] < start)
                {
                    result.error = now[0] || 5;
                    break;
                }
                if(now[3] - start >= BigInt(timeoutMilliseconds) * 1000000n)
                {
                    result.error = 110;
                    break;
                }
                result.error = native.pause_ms(1);
            }
        }
        else
        {
            frame = native.invoke("service_call", owner, new Uint8Array(8), capacity);
            result.error = frame[0];
        }
    }
    finally
    {
        result.cleanup = native.invoke("capability_close", owner, new Uint8Array(0), 0)[0];
    }
    if(result.error !== 0 || result.cleanup !== 0)
    {
        return result;
    }
    try
    {
        if(!frame || frame[2] !== BigInt(frame[1].length))
        {
            throw new RangeError("Invalid returned length");
        }
        result.value = decode(typename, frame[1]);
        if(!topic)
        {
            result.vendor = typename.includes("GetRobotResources") ? result.value.header.header.code : result.value.header.code;
        }
    }
    catch(invalid)
    {
        result.error = 22;
    }
    return result;
}

/**
 * Query original GetMcAction once. @param {string} alias Granted service alias.
 * @returns {object} Complete owned observation and independent failure facts.
 */
export function queryMode(alias)
{
    return observe(alias, "aimdk_msgs/srv/GetMcAction_Response", 156, false, 3000);
}

/**
 * Receive complete McCommonState with a real monotonic deadline.
 * @param {string} alias Granted state subscription alias.
 * @param {number} timeoutMilliseconds Deadline 1..30000 ms; default 3000.
 * @returns {object} Complete observation; errno 110 indicates deadline expiry.
 */
export function nextMotionState(alias, timeoutMilliseconds = 3000)
{
    return observe(alias, "aimdk_msgs/msg/McCommonState", 698, true, timeoutMilliseconds);
}

/**
 * Enumerate original X2 Ultra resources without playback.
 * @param {string} alias Granted GetRobotResources service alias.
 * @returns {object} Full original resource/file lists within explicit guest bounds.
 */
export function listResources(alias)
{
    return observe(alias, "aimdk_msgs/srv/GetRobotResources_Response", 10236, false, 3000);
}
