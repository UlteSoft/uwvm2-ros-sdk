/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original dobot/ros2_v4 canonical value domain.
 * @details The selected domain contains 250 complete record/components and 554 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/**
 * Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
 * Records are ordinary owned values. Decode throws before exposing malformed bytes;
 * encode validates the complete value before allocating its one wire output.
 * 64-bit integers remain BigInt. Strings are strict UTF-8 with no embedded NUL.
 * Owned Service transport is a separate explicit raw12 adapter, not legacy RPC.
 */
import {utf8Decode, utf8Encode} from "ros/js/wire";

const utf8Encoder = {
    encode : utf8Encode
},
      utf8Decoder = {
          decode : utf8Decode
      };

export class ControlCodecError extends Error
{
    constructor(code)
    {
        super("invalid original-control canonical value");
        this.code = code;
    }
}

function bad(code = 22)
{
    throw new ControlCodecError(code);
}

const nativeTypedLength = Object.getOwnPropertyDescriptor(Object.getPrototypeOf(Uint8Array.prototype), "length").get, nativeTypedSet = Uint8Array.prototype.set;

function copyRaw(value, bound, code = 22)
{
    if(!(value instanceof Uint8Array))
        bad();
    const n = nativeTypedLength.call(value);
    if(n > bound)
        bad(code);
    const out = new Uint8Array(n);
    nativeTypedSet.call(out, value);
    return out;
}

function addSize(n, m)
{
    if(!Number.isSafeInteger(n) || !Number.isSafeInteger(m) || n < 0 || m < 0 || n > 32768 || m > 32768 - n)
        bad(90);
    return n + m;
}

function textBytes(value, bound)
{
    if(typeof value !== "string" || value.length > bound || value.includes("\0"))
        bad();
    for(let i = 0; i < value.length; ++i)
    {
        const c = value.charCodeAt(i);
        if(c >= 0xd800 && c <= 0xdbff)
        {
            if(++i === value.length)
                bad();
            const d = value.charCodeAt(i);
            if(d < 0xdc00 || d > 0xdfff)
                bad();
        }
        else if(c >= 0xdc00 && c <= 0xdfff)
            bad();
    }
    const b = utf8Encoder.encode(value);
    if(b.length > bound)
        bad();
    return b;
}

function integer(value, width, signed)
{
    if(width === 8)
    {
        if(typeof value !== "bigint" || value < (signed ? -(1n << 63n) : 0n) || value > (signed ? (1n << 63n) - 1n : (1n << 64n) - 1n))
            bad();
    }
    else if(!Number.isInteger(value) || value < (signed ? -(2 ** (width * 8 - 1)) : 0) || value > (signed ? 2 ** (width * 8 - 1) - 1 : 2 ** (width * 8) - 1))
        bad();
}

class Reader
{
    constructor(bytes)
    {
        if(!(bytes instanceof Uint8Array) || bytes.length > 32768)
            bad();
        this.b = bytes;
        this.v = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
        this.at = 0;
    }

    take(n)
    {
        if(!Number.isInteger(n) || n < 0 || n > this.b.length - this.at)
            bad();
        const p = this.at;
        this.at += n;
        return p;
    }

    u32()
    {
        return this.v.getUint32(this.take(4), true);
    }

    text(bound)
    {
        const n = this.u32();
        if(n > bound)
            bad();
        const p = this.take(n);
        let s;
        try
        {
            s = utf8Decoder.decode(this.b.subarray(p, p + n));
        }
        catch
        {
            bad();
        }
        if(s.includes("\0"))
            bad();
        return s;
    }

    raw(bound)
    {
        const n = this.u32();
        if(n > bound)
            bad();
        const p = this.take(n);
        return this.b.slice(p, p + n);
    }
}

class Writer
{
    constructor(size)
    {
        if(size > 32768)
            bad();
        this.b = new Uint8Array(size);
        this.v = new DataView(this.b.buffer);
        this.at = 0;
    }

    text(value, bound)
    {
        const b = textBytes(value, bound);
        this.v.setUint32(this.at, b.length, true);
        this.at += 4;
        this.b.set(b, this.at);
        this.at += b.length;
    }

    raw(value)
    {
        this.v.setUint32(this.at, value.length, true);
        this.at += 4;
        this.b.set(value, this.at);
        this.at += value.length;
    }
}

/** Complete ROS2 dobot_msgs_v4/msg/RobotStatus codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4MsgRobotStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eee706b4ec3949d677c44797c59b343856c3fee77526ffc53ed2d4b5f94f62de",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"is_enable" : false, "is_connected" : false};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4MsgRobotStatusSize(Ros2Dobot_msgs_v4MsgRobotStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4MsgRobotStatusCapture(value), n = Ros2Dobot_msgs_v4MsgRobotStatusSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4MsgRobotStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4MsgRobotStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4MsgRobotStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["is_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["is_connected"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4MsgRobotStatusWrite(value, w)
{
    w.v.setUint8(w.at, value["is_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_connected"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Dobot_msgs_v4MsgRobotStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_connected"] = decoded !== 0;
    }
    return value;
}

function Ros2Dobot_msgs_v4MsgRobotStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["is_enable"];
        out["is_enable"] = field;
    }
    {
        const field = value["is_connected"];
        out["is_connected"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/msg/ToolVectorActual codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4MsgToolVectorActualCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d0771f8fdeb4e475f6e411b0193f8ecc4aaba32e344f16b641d3c5bbe682b4d",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4MsgToolVectorActualSize(Ros2Dobot_msgs_v4MsgToolVectorActualCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4MsgToolVectorActualCapture(value), n = Ros2Dobot_msgs_v4MsgToolVectorActualSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4MsgToolVectorActualWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4MsgToolVectorActualRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4MsgToolVectorActualSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rx"] !== "number" || !Number.isFinite(value["rx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["ry"] !== "number" || !Number.isFinite(value["ry"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rz"] !== "number" || !Number.isFinite(value["rz"]))
        bad();
    n = addSize(n, 8);
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4MsgToolVectorActualWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["ry"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rz"], true);
    w.at += 8;
}

function Ros2Dobot_msgs_v4MsgToolVectorActualRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4MsgToolVectorActualCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AI_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAI_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bdbc80f3e76a6774e837d87435329a76b10e34cc5d9cb18b98050dc3359159bb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAI_RequestSize(Ros2Dobot_msgs_v4SrvAI_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAI_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvAI_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAI_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAI_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAI_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAI_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAI_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAI_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AI_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAI_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5fbdce37610593de2a03d2f49cc02766663a8622a20f8e2347454e778ea075b4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAI_ResponseSize(Ros2Dobot_msgs_v4SrvAI_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAI_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvAI_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAI_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAI_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAI_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAI_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAI_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAI_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5078d8712b23ba062ad643216ba7e1affdf4bf590b183ad14b536081d45ab3e5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAO_RequestSize(Ros2Dobot_msgs_v4SrvAO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvAO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8011a322470545bc19910e6d56fb7254c3d82799a5080d751ea6ae042b658c9c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAO_ResponseSize(Ros2Dobot_msgs_v4SrvAO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvAO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAO_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AOInstant_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_628b66109b5b38d9db98cdc855626f7213909027f511674c2653b72483ac3414",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAOInstant_RequestSize(Ros2Dobot_msgs_v4SrvAOInstant_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAOInstant_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvAOInstant_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAOInstant_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAOInstant_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAOInstant_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAOInstant_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAOInstant_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAOInstant_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AOInstant_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f4647c9dfddea33b375f95ef624306bf28d127245a4576f8840973cc63dca5e8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAOInstant_ResponseSize(Ros2Dobot_msgs_v4SrvAOInstant_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAOInstant_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvAOInstant_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAOInstant_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAOInstant_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAOInstant_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAOInstant_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAOInstant_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAOInstant_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AccJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAccJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_248a82af3c8962079ec85dd3f8ade486f0887d49e8a357df575f98f47ffef734",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAccJ_RequestSize(Ros2Dobot_msgs_v4SrvAccJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAccJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvAccJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAccJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAccJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAccJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAccJ_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAccJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAccJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AccJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9be895251d37fb27d4831f43cd8266e4d706de267d7c3940c1dd67a741daa588",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAccJ_ResponseSize(Ros2Dobot_msgs_v4SrvAccJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAccJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvAccJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAccJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAccJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAccJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAccJ_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAccJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAccJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AccL_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAccL_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bcd179d618549545e1b376f277a5adcae950aa3175613f9d77a75faf4d625d79",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAccL_RequestSize(Ros2Dobot_msgs_v4SrvAccL_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAccL_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvAccL_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAccL_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAccL_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAccL_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAccL_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAccL_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAccL_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/AccL_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvAccL_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1303a7daae664e089cd34186755f63a48f351e378a42f13eb14b574b29739920",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvAccL_ResponseSize(Ros2Dobot_msgs_v4SrvAccL_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvAccL_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvAccL_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvAccL_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvAccL_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvAccL_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvAccL_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvAccL_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvAccL_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Arc_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvArc_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b6cd15f881546de8f56ceee68e65730452c66b5114cfbf6b769917adf1d7fb0",
    maxWireBytes : 4261,
    minWireBytes : 101,
    cartesianMaxWireBytes : 4261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "mode" : false,
            "a" : 0,
            "b" : 0,
            "c" : 0,
            "d" : 0,
            "e" : 0,
            "f" : 0,
            "a2" : 0,
            "b2" : 0,
            "c2" : 0,
            "d2" : 0,
            "e2" : 0,
            "f2" : 0,
            "param_value" : []
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvArc_RequestSize(Ros2Dobot_msgs_v4SrvArc_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvArc_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvArc_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvArc_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4261, 90);
        if(owned.length < 101)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvArc_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvArc_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["a2"] !== "number" || !Number.isFinite(value["a2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b2"] !== "number" || !Number.isFinite(value["b2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c2"] !== "number" || !Number.isFinite(value["c2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d2"] !== "number" || !Number.isFinite(value["d2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e2"] !== "number" || !Number.isFinite(value["e2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f2"] !== "number" || !Number.isFinite(value["f2"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4261)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvArc_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f2"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvArc_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f2"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvArc_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["a2"];
        out["a2"] = field;
    }
    {
        const field = value["b2"];
        out["b2"] = field;
    }
    {
        const field = value["c2"];
        out["c2"] = field;
    }
    {
        const field = value["d2"];
        out["d2"] = field;
    }
    {
        const field = value["e2"];
        out["e2"] = field;
    }
    {
        const field = value["f2"];
        out["f2"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Arc_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvArc_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e018ed128ffdad09c6c99ce071b191d7fe55f806026249a8d3172e55a00bfc58",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvArc_ResponseSize(Ros2Dobot_msgs_v4SrvArc_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvArc_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvArc_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvArc_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvArc_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvArc_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvArc_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvArc_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvArc_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/BrakeControl_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e6a5156fbf4ad3e5934d8944aa1a2d2558a869e85484117ed7d7005cc7fe4aff",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis_id" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvBrakeControl_RequestSize(Ros2Dobot_msgs_v4SrvBrakeControl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvBrakeControl_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvBrakeControl_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvBrakeControl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvBrakeControl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvBrakeControl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axis_id"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["axis_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["axis_id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis_id"];
        out["axis_id"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/BrakeControl_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e614c144b2ffa2db3c2bdd51ee91c8764dcbeba212b0a6fa84b115bcdd90066d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvBrakeControl_ResponseSize(Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvBrakeControl_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvBrakeControl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvBrakeControl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvBrakeControl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CP_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCP_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5b50f0e2818dcb92b710256b11f5dac64514ceda991b539d39e250fa7ebcaead",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCP_RequestSize(Ros2Dobot_msgs_v4SrvCP_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCP_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCP_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCP_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCP_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCP_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCP_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCP_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCP_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CP_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCP_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0a5b672966243045235fa5fd51f9aaad2dd127baf8223dbd7fa4fe10dc9d0c62",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCP_ResponseSize(Ros2Dobot_msgs_v4SrvCP_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCP_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCP_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCP_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCP_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCP_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCP_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCP_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCP_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CalcTool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4962e0dd8c306af10844fe93e0cad24f290bae794ed8730d38a3540b50e261b5",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCalcTool_RequestSize(Ros2Dobot_msgs_v4SrvCalcTool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCalcTool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCalcTool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCalcTool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCalcTool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCalcTool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["matrix"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["offset"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCalcTool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros2Dobot_msgs_v4SrvCalcTool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["matrix"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["offset"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCalcTool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["matrix"];
        out["matrix"] = field;
    }
    {
        const field = value["offset"];
        out["offset"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CalcTool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7809dd31ed483c5a1edaf7d5ccdc60741a9936739c2eef6608180580a91461de",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCalcTool_ResponseSize(Ros2Dobot_msgs_v4SrvCalcTool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCalcTool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCalcTool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCalcTool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCalcTool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCalcTool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCalcTool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCalcTool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCalcTool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CalcUser_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4064b15154e37f79d354d6553feab616d162f0b2401dec4ebeebe85572e6b735",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCalcUser_RequestSize(Ros2Dobot_msgs_v4SrvCalcUser_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCalcUser_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCalcUser_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCalcUser_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCalcUser_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCalcUser_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["matrix"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["offset"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCalcUser_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros2Dobot_msgs_v4SrvCalcUser_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["matrix"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["offset"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCalcUser_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["matrix"];
        out["matrix"] = field;
    }
    {
        const field = value["offset"];
        out["offset"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CalcUser_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_082fa64dc008e07ace128e2681f18c3eec3ad0a3af15f07915868dd04a8f2196",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCalcUser_ResponseSize(Ros2Dobot_msgs_v4SrvCalcUser_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCalcUser_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCalcUser_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCalcUser_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCalcUser_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCalcUser_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCalcUser_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCalcUser_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCalcUser_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovC_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8fe5accb27df28e70af66f59cec2d3366c0c5d7f17bef94ddd86446a69054312",
    maxWireBytes : 4308,
    minWireBytes : 148,
    cartesianMaxWireBytes : 4308n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "point1_j1" : 0,
            "point1_j2" : 0,
            "point1_j3" : 0,
            "point1_j4" : 0,
            "point1_j5" : 0,
            "point1_j6" : 0,
            "point2_j1" : 0,
            "point2_j2" : 0,
            "point2_j3" : 0,
            "point2_j4" : 0,
            "point2_j5" : 0,
            "point2_j6" : 0,
            "point3_j1" : 0,
            "point3_j2" : 0,
            "point3_j3" : 0,
            "point3_j4" : 0,
            "point3_j5" : 0,
            "point3_j6" : 0,
            "param_value" : []
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestSize(Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4308, 90);
        if(owned.length < 148)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["point1_j1"] !== "number" || !Number.isFinite(value["point1_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j2"] !== "number" || !Number.isFinite(value["point1_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j3"] !== "number" || !Number.isFinite(value["point1_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j4"] !== "number" || !Number.isFinite(value["point1_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j5"] !== "number" || !Number.isFinite(value["point1_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j6"] !== "number" || !Number.isFinite(value["point1_j6"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j1"] !== "number" || !Number.isFinite(value["point2_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j2"] !== "number" || !Number.isFinite(value["point2_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j3"] !== "number" || !Number.isFinite(value["point2_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j4"] !== "number" || !Number.isFinite(value["point2_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j5"] !== "number" || !Number.isFinite(value["point2_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j6"] !== "number" || !Number.isFinite(value["point2_j6"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j1"] !== "number" || !Number.isFinite(value["point3_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j2"] !== "number" || !Number.isFinite(value["point3_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j3"] !== "number" || !Number.isFinite(value["point3_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j4"] !== "number" || !Number.isFinite(value["point3_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j5"] !== "number" || !Number.isFinite(value["point3_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point3_j6"] !== "number" || !Number.isFinite(value["point3_j6"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4308)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["point1_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j6"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j6"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point3_j6"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j6"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j6"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point3_j6"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point1_j1"];
        out["point1_j1"] = field;
    }
    {
        const field = value["point1_j2"];
        out["point1_j2"] = field;
    }
    {
        const field = value["point1_j3"];
        out["point1_j3"] = field;
    }
    {
        const field = value["point1_j4"];
        out["point1_j4"] = field;
    }
    {
        const field = value["point1_j5"];
        out["point1_j5"] = field;
    }
    {
        const field = value["point1_j6"];
        out["point1_j6"] = field;
    }
    {
        const field = value["point2_j1"];
        out["point2_j1"] = field;
    }
    {
        const field = value["point2_j2"];
        out["point2_j2"] = field;
    }
    {
        const field = value["point2_j3"];
        out["point2_j3"] = field;
    }
    {
        const field = value["point2_j4"];
        out["point2_j4"] = field;
    }
    {
        const field = value["point2_j5"];
        out["point2_j5"] = field;
    }
    {
        const field = value["point2_j6"];
        out["point2_j6"] = field;
    }
    {
        const field = value["point3_j1"];
        out["point3_j1"] = field;
    }
    {
        const field = value["point3_j2"];
        out["point3_j2"] = field;
    }
    {
        const field = value["point3_j3"];
        out["point3_j3"] = field;
    }
    {
        const field = value["point3_j4"];
        out["point3_j4"] = field;
    }
    {
        const field = value["point3_j5"];
        out["point3_j5"] = field;
    }
    {
        const field = value["point3_j6"];
        out["point3_j6"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovC_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ff22013962988c5d1a2660d90b0f0b5df9353f0352842567ab5355a6ce2c504",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseSize(Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4edc7c7b03747ade62995528fb8a0a54fd4ab166b427e8f2856117651d212e83",
    maxWireBytes : 4260,
    minWireBytes : 100,
    cartesianMaxWireBytes : 4260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "point1_j1" : 0,
            "point1_j2" : 0,
            "point1_j3" : 0,
            "point1_j4" : 0,
            "point1_j5" : 0,
            "point1_j6" : 0,
            "point2_j1" : 0,
            "point2_j2" : 0,
            "point2_j3" : 0,
            "point2_j4" : 0,
            "point2_j5" : 0,
            "point2_j6" : 0,
            "param_value" : []
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestSize(Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4260, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["point1_j1"] !== "number" || !Number.isFinite(value["point1_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j2"] !== "number" || !Number.isFinite(value["point1_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j3"] !== "number" || !Number.isFinite(value["point1_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j4"] !== "number" || !Number.isFinite(value["point1_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j5"] !== "number" || !Number.isFinite(value["point1_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j6"] !== "number" || !Number.isFinite(value["point1_j6"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j1"] !== "number" || !Number.isFinite(value["point2_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j2"] !== "number" || !Number.isFinite(value["point2_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j3"] !== "number" || !Number.isFinite(value["point2_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j4"] !== "number" || !Number.isFinite(value["point2_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j5"] !== "number" || !Number.isFinite(value["point2_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j6"] !== "number" || !Number.isFinite(value["point2_j6"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["point1_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j6"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j6"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j6"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j6"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point1_j1"];
        out["point1_j1"] = field;
    }
    {
        const field = value["point1_j2"];
        out["point1_j2"] = field;
    }
    {
        const field = value["point1_j3"];
        out["point1_j3"] = field;
    }
    {
        const field = value["point1_j4"];
        out["point1_j4"] = field;
    }
    {
        const field = value["point1_j5"];
        out["point1_j5"] = field;
    }
    {
        const field = value["point1_j6"];
        out["point1_j6"] = field;
    }
    {
        const field = value["point2_j1"];
        out["point2_j1"] = field;
    }
    {
        const field = value["point2_j2"];
        out["point2_j2"] = field;
    }
    {
        const field = value["point2_j3"];
        out["point2_j3"] = field;
    }
    {
        const field = value["point2_j4"];
        out["point2_j4"] = field;
    }
    {
        const field = value["point2_j5"];
        out["point2_j5"] = field;
    }
    {
        const field = value["point2_j6"];
        out["point2_j6"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_57242fb5b7c9947263615b398a413491c9c643a61f9f7ad0e385fa8edb23b842",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseSize(Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovL_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc1d518a7841cc1e6ae2dc6fe5af528957806e9ced225fc5ebec644b4775c022",
    maxWireBytes : 4260,
    minWireBytes : 100,
    cartesianMaxWireBytes : 4260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "point1_j1" : 0,
            "point1_j2" : 0,
            "point1_j3" : 0,
            "point1_j4" : 0,
            "point1_j5" : 0,
            "point1_j6" : 0,
            "point2_j1" : 0,
            "point2_j2" : 0,
            "point2_j3" : 0,
            "point2_j4" : 0,
            "point2_j5" : 0,
            "point2_j6" : 0,
            "param_value" : []
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestSize(Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4260, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["point1_j1"] !== "number" || !Number.isFinite(value["point1_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j2"] !== "number" || !Number.isFinite(value["point1_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j3"] !== "number" || !Number.isFinite(value["point1_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j4"] !== "number" || !Number.isFinite(value["point1_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j5"] !== "number" || !Number.isFinite(value["point1_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point1_j6"] !== "number" || !Number.isFinite(value["point1_j6"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j1"] !== "number" || !Number.isFinite(value["point2_j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j2"] !== "number" || !Number.isFinite(value["point2_j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j3"] !== "number" || !Number.isFinite(value["point2_j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j4"] !== "number" || !Number.isFinite(value["point2_j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j5"] !== "number" || !Number.isFinite(value["point2_j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["point2_j6"] !== "number" || !Number.isFinite(value["point2_j6"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["point1_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point1_j6"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["point2_j6"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point1_j6"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["point2_j6"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point1_j1"];
        out["point1_j1"] = field;
    }
    {
        const field = value["point1_j2"];
        out["point1_j2"] = field;
    }
    {
        const field = value["point1_j3"];
        out["point1_j3"] = field;
    }
    {
        const field = value["point1_j4"];
        out["point1_j4"] = field;
    }
    {
        const field = value["point1_j5"];
        out["point1_j5"] = field;
    }
    {
        const field = value["point1_j6"];
        out["point1_j6"] = field;
    }
    {
        const field = value["point2_j1"];
        out["point2_j1"] = field;
    }
    {
        const field = value["point2_j2"];
        out["point2_j2"] = field;
    }
    {
        const field = value["point2_j3"];
        out["point2_j3"] = field;
    }
    {
        const field = value["point2_j4"];
        out["point2_j4"] = field;
    }
    {
        const field = value["point2_j5"];
        out["point2_j5"] = field;
    }
    {
        const field = value["point2_j6"];
        out["point2_j6"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/CheckOddMovL_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_13fc61c35c8f6a6a0cc56cc7aa5b72060d757a61c9c388992d1e3eee2db8f6da",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseSize(Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Circle_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCircle_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43b8e7a31172e3b965dfc6ef6d1c8867c6151a2ffecce5416c56d4c15a95ca6e",
    maxWireBytes : 4265,
    minWireBytes : 105,
    cartesianMaxWireBytes : 4265n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "mode" : false,
            "a" : 0,
            "b" : 0,
            "c" : 0,
            "d" : 0,
            "e" : 0,
            "f" : 0,
            "a2" : 0,
            "b2" : 0,
            "c2" : 0,
            "d2" : 0,
            "e2" : 0,
            "f2" : 0,
            "count" : 0,
            "param_value" : []
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCircle_RequestSize(Ros2Dobot_msgs_v4SrvCircle_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCircle_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvCircle_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCircle_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4265, 90);
        if(owned.length < 105)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCircle_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCircle_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["a2"] !== "number" || !Number.isFinite(value["a2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b2"] !== "number" || !Number.isFinite(value["b2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c2"] !== "number" || !Number.isFinite(value["c2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d2"] !== "number" || !Number.isFinite(value["d2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e2"] !== "number" || !Number.isFinite(value["e2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f2"] !== "number" || !Number.isFinite(value["f2"]))
        bad();
    n = addSize(n, 8);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4265)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCircle_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f2"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvCircle_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f2"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCircle_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["a2"];
        out["a2"] = field;
    }
    {
        const field = value["b2"];
        out["b2"] = field;
    }
    {
        const field = value["c2"];
        out["c2"] = field;
    }
    {
        const field = value["d2"];
        out["d2"] = field;
    }
    {
        const field = value["e2"];
        out["e2"] = field;
    }
    {
        const field = value["f2"];
        out["f2"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Circle_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvCircle_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9f6bc32bc392e71c29f09360619c6157e2b5b06221ab124f4930cb3abce9ca31",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvCircle_ResponseSize(Ros2Dobot_msgs_v4SrvCircle_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvCircle_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvCircle_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvCircle_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvCircle_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvCircle_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvCircle_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvCircle_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvCircle_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ClearError_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvClearError_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1688c12ed6b3a7d1dd48aa672424d279eeb28e19d63417e95daa991c8d0dbc6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvClearError_RequestSize(Ros2Dobot_msgs_v4SrvClearError_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvClearError_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvClearError_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvClearError_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvClearError_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvClearError_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvClearError_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvClearError_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvClearError_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ClearError_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvClearError_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e609ead650473c695d52a83ff28e19bebd3e04672c38eedd32077bc8f5f3b71",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvClearError_ResponseSize(Ros2Dobot_msgs_v4SrvClearError_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvClearError_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvClearError_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvClearError_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvClearError_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvClearError_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvClearError_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvClearError_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvClearError_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Continue_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvContinue_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c1dc157f99d5d6bbd3ac0c035b601f651c8daaf5d8a4f0d56d1cc338e588e20a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvContinue_RequestSize(Ros2Dobot_msgs_v4SrvContinue_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvContinue_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvContinue_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvContinue_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvContinue_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvContinue_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvContinue_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvContinue_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvContinue_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Continue_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvContinue_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_691cb70f5534d1a2786105456dd8a2fa1a587952b570b746f4ca2ff7f98fb897",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvContinue_ResponseSize(Ros2Dobot_msgs_v4SrvContinue_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvContinue_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvContinue_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvContinue_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvContinue_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvContinue_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvContinue_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvContinue_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvContinue_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DI_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDI_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eb44c535be237d52a065df43829612a2e5d95b29223580dc03f134c1e249bdfc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDI_RequestSize(Ros2Dobot_msgs_v4SrvDI_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDI_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDI_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDI_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDI_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDI_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDI_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDI_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDI_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DI_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDI_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaef4431d8260336925a2351d62a3257488b5984f509e445bf62c66fe1f46fa2",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDI_ResponseSize(Ros2Dobot_msgs_v4SrvDI_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDI_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDI_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDI_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDI_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDI_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDI_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDI_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDI_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DIGroup_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45a371932213f97947cd5240b831d5713aa6288210ce7201d84a6c19ce5c082f",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDIGroup_RequestSize(Ros2Dobot_msgs_v4SrvDIGroup_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDIGroup_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDIGroup_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDIGroup_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDIGroup_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDIGroup_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["args"]) || value["args"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["args"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDIGroup_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Dobot_msgs_v4SrvDIGroup_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["args"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["args"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDIGroup_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["args"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["args"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DIGroup_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8353adc015354e736091c4350a030f44506659d2024f4a06d076b02b31e37650",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDIGroup_ResponseSize(Ros2Dobot_msgs_v4SrvDIGroup_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDIGroup_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDIGroup_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDIGroup_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDIGroup_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDIGroup_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDIGroup_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDIGroup_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDIGroup_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DIGroupDEC_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05aed569214589409cc5e8b99482cd7ddaf4fc7fecd761030b27f17f4c5e17a8",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestSize(Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["group"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["group"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["group"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DIGroupDEC_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81cac737811c76967ba0d4c09654e7f9b2fc7131505b82c74594f0bfa76b4d40",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseSize(Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a881682fa874e49e7732ccc5a28dd07c48c3f7669aba865393eaa9912164c431",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0, "time" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDO_RequestSize(Ros2Dobot_msgs_v4SrvDO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    integer(value["time"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["time"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["time"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_245660015aa11d9c53c31131157a3447b947963c8759a1137ecba9bfd05378d5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDO_ResponseSize(Ros2Dobot_msgs_v4SrvDO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDO_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOGroup_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98f0df1adff5f79f5dee48e9e6c3fb3fe1dc31f536c73e3c6eaaaf5f556a7823",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOGroup_RequestSize(Ros2Dobot_msgs_v4SrvDOGroup_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOGroup_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDOGroup_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOGroup_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOGroup_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOGroup_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["args"]) || value["args"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["args"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOGroup_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Dobot_msgs_v4SrvDOGroup_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["args"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["args"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOGroup_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["args"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["args"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOGroup_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c34aafaa069fc5738e9d4d7c2625e387977110db900bba8151ebbafe42b20db",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOGroup_ResponseSize(Ros2Dobot_msgs_v4SrvDOGroup_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOGroup_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDOGroup_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOGroup_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOGroup_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOGroup_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOGroup_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDOGroup_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOGroup_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOGroupDEC_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2402f7f4195746e5c3fa2993a0f9100d05dc4f24546866f65268898cb118c3d8",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestSize(Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["group"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["group"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["group"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOGroupDEC_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_497c31bed5a6d9b634beb984ebc4ceb9ba1cf64be30d63844a33bd7f231b5c9f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseSize(Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOInstant_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5052cd81fbe27ce716965aa008daec0c8c052cdcca5355dc3b71b16655b41cd7",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOInstant_RequestSize(Ros2Dobot_msgs_v4SrvDOInstant_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOInstant_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDOInstant_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOInstant_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOInstant_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOInstant_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOInstant_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDOInstant_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOInstant_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DOInstant_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c654a28a690ca9412e2967ab9ff1cd5c831ce42ab2f38cf813bbe44465daf998",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDOInstant_ResponseSize(Ros2Dobot_msgs_v4SrvDOInstant_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDOInstant_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDOInstant_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDOInstant_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDOInstant_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDOInstant_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDOInstant_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDOInstant_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDOInstant_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DisableRobot_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7882b1f1429c23acbe145b8ce69596107d451a85a47e8215f5f27ee909d80c87",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDisableRobot_RequestSize(Ros2Dobot_msgs_v4SrvDisableRobot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDisableRobot_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDisableRobot_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDisableRobot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDisableRobot_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDisableRobot_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDisableRobot_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvDisableRobot_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvDisableRobot_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DisableRobot_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_785b8a705af89d59fbe4055cd50414024ddf8d95e01ae16d32f17cca5d10f878",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDisableRobot_ResponseSize(Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDisableRobot_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDisableRobot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDisableRobot_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDisableRobot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDisableRobot_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDisableRobot_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DragSensivity_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bdd47b9cde315a72fbf0d4ce40d44bc6fdc6d0706f94cbba7c51454232e8652a",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDragSensivity_RequestSize(Ros2Dobot_msgs_v4SrvDragSensivity_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDragSensivity_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvDragSensivity_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDragSensivity_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDragSensivity_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDragSensivity_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/DragSensivity_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_128b7bef7b3fddf68eba6aeeaeac41d450bedab6bf3d18be366f456970f7fecb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvDragSensivity_ResponseSize(Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvDragSensivity_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvDragSensivity_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvDragSensivity_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvDragSensivity_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EmergencyStop_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c3613b55e06feb34dc533222386ac1f680e50218325331fe1a23d6d0f926a4a6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEmergencyStop_RequestSize(Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvEmergencyStop_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEmergencyStop_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEmergencyStop_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEmergencyStop_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EmergencyStop_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_97e6abce2a240c971cc4281894dc339642aa6bd5e87099696f66ed20bbd265b9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseSize(Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableFTSensor_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eedf535c97390b7221afb06203a23b2e515fdc6d84d0458a2440270939c81896",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestSize(Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableFTSensor_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a706bb66974028716f4c39597ad0d103f8e31264cf137cb9ab173955e892c68e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseSize(Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableRobot_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1b6c1b223ff41b41fe94b4279c7659913f8bb9bcbf2deca33db3560833c3395d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableRobot_RequestSize(Ros2Dobot_msgs_v4SrvEnableRobot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableRobot_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvEnableRobot_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableRobot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableRobot_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableRobot_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableRobot_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvEnableRobot_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableRobot_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableRobot_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e12accb5c027987874ee96f644bb325770f7c4aab56b85ae4c1b318402299f3f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableRobot_ResponseSize(Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvEnableRobot_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableRobot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableRobot_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableRobot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableRobot_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEnableRobot_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableSafeSkin_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2bb1a6b02d736fed3c8efd58a154bd1f5531f78e77ed97d41bc1a009021bd6bd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestSize(Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EnableSafeSkin_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41602848b5137aea415e29ccfcaf413f098050f535f6b4030bd8e42efac7665c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseSize(Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EndRTOffset_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_33b058e6146ce66391d69a891b0c06fe86c92d6923a0db32845d1629c7f5ce45",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEndRTOffset_RequestSize(Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvEndRTOffset_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEndRTOffset_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEndRTOffset_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEndRTOffset_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/EndRTOffset_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4327bcad0a32d1c6d9f46b27f106f10d9264c0aaefe9ec657c23e0890c803659",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseSize(Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCCollisionSwitch_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ae2cac85626fcfc41d0db663f11e16441be6aef482e44905ecf808b9e35c2aff",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enable" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestSize(Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["enable"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["enable"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["enable"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enable"];
        out["enable"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCCollisionSwitch_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1bf6878cb66870fd62fcd4f860aea8e2dcc9b49e1951227946395c4182118602",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseSize(Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCForceMode_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_347d80606d3f49539d04e22f4cb496f6500a3cb61f58984e8866a3ca87ae0f54",
    maxWireBytes : 60,
    minWireBytes : 60,
    cartesianMaxWireBytes : 60n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "x" : 0,
            "y" : 0,
            "z" : 0,
            "rx" : 0,
            "ry" : 0,
            "rz" : 0,
            "fx" : 0,
            "fy" : 0,
            "fz" : 0,
            "frx" : 0,
            "fry" : 0,
            "frz" : 0,
            "reference" : -1,
            "user" : -1,
            "tool" : -1
        };
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCForceMode_RequestSize(Ros2Dobot_msgs_v4SrvFCForceMode_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCForceMode_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCForceMode_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCForceMode_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 60, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCForceMode_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCForceMode_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    integer(value["fx"], 4, true);
    n = addSize(n, 4);
    integer(value["fy"], 4, true);
    n = addSize(n, 4);
    integer(value["fz"], 4, true);
    n = addSize(n, 4);
    integer(value["frx"], 4, true);
    n = addSize(n, 4);
    integer(value["fry"], 4, true);
    n = addSize(n, 4);
    integer(value["frz"], 4, true);
    n = addSize(n, 4);
    integer(value["reference"], 4, true);
    n = addSize(n, 4);
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(n > 60)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["fx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["fy"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["fz"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["frx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["fry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["frz"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["reference"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fy"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fz"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["frx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["frz"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["reference"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    {
        const field = value["fx"];
        out["fx"] = field;
    }
    {
        const field = value["fy"];
        out["fy"] = field;
    }
    {
        const field = value["fz"];
        out["fz"] = field;
    }
    {
        const field = value["frx"];
        out["frx"] = field;
    }
    {
        const field = value["fry"];
        out["fry"] = field;
    }
    {
        const field = value["frz"];
        out["frz"] = field;
    }
    {
        const field = value["reference"];
        out["reference"] = field;
    }
    {
        const field = value["user"];
        out["user"] = field;
    }
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCForceMode_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2531c8825fa91b29951a24f9d120fc6a3f7528dec2c342da49775b90e200c117",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCForceMode_ResponseSize(Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCForceMode_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCForceMode_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCForceMode_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCForceMode_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCOff_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCOff_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d17a82f5baa60795c8acac38b00fde67a0f4d867033b3110011c2e6bc43deb3e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCOff_RequestSize(Ros2Dobot_msgs_v4SrvFCOff_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCOff_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCOff_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCOff_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCOff_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCOff_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCOff_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvFCOff_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvFCOff_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCOff_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_56192a7914a1838ca52a4638fc02254111dadc27e5a27d6d6e836a6f28a90497",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCOff_ResponseSize(Ros2Dobot_msgs_v4SrvFCOff_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCOff_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCOff_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCOff_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCOff_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCOff_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCOff_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCOff_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCOff_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetDamping_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_31401b97a4ed6d45287aaaf6fdf4c71ec7b3480eb82ba2ef1def506c6627cc89",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetDamping_RequestSize(Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetDamping_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetDamping_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetDamping_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetDamping_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetDamping_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c380e2b7f9afe2fbc307f9af41e9f4fd94e037cef4293e120852680f8809e15",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetDeviation_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eec644d0993c1018f004c88b542b93da026cfc08bb3ec1b8d95f46489a0e0b51",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "controltype" : -1};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestSize(Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    integer(value["controltype"], 4, true);
    n = addSize(n, 4);
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["controltype"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["controltype"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    {
        const field = value["controltype"];
        out["controltype"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetDeviation_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaf9f396da64133c29f4ac19e7a5f9f656a1b133af71e32e7e9e9d66281c6d40",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForce_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7493fc71d24b454ee591581b5e344f5c01fd5ff049ded7b4b0094fe79819c105",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForce_RequestSize(Ros2Dobot_msgs_v4SrvFCSetForce_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForce_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForce_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForce_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForce_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForce_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForce_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68bfe61ae9d274f3e61687b09d241c2552d9ec2bea02ad2352d108ed3f4019ba",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForce_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForce_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForce_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForce_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForce_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForceLimit_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_402fd98a518905b5bbb101e808b0e8152a544dc8eadab38899350c1c64dbeee7",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestSize(Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForceLimit_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a4087b717706babf5c3a324a1db478642f2e036b33a7fe14754caa202c4ed817",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_10ecd33899ae99e0e6bc3768ebc9ab10daf2576ce247fc7ddf105745682bc940",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestSize(Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a3ae8b80fd5c157d301c2fa33d26f9718a144f0db34bf02c3bfa8dc2239f5c85",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetMass_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_088044ba8a56b2a9d5f039bb63bc5d504b04f31c017495321c48b8f4722d8ca3",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetMass_RequestSize(Ros2Dobot_msgs_v4SrvFCSetMass_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetMass_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetMass_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetMass_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetMass_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetMass_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetMass_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a6ba05a607a916335ac87ed5b41891438c444cd2df7c3f6ce5272d57436be3b6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetMass_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetMass_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetMass_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetMass_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetMass_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetStiffness_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3bbb929308cafc25ac4c90ba32b20af933d45f3c7c61d9c49d7a64e92050fae9",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestSize(Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/FCSetStiffness_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7565e01faff246688f0c89b94f291c5b4da04ca79700bcbe63345d37a265d1b8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseSize(Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ForceDriveMode_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aa09ac56979c790df88d8fb0afc7c327aa367baf60b472732e85efa2dfb66126",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "user" : -1};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvForceDriveMode_RequestSize(Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvForceDriveMode_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvForceDriveMode_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvForceDriveMode_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvForceDriveMode_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["x"], 4, true);
    n = addSize(n, 4);
    integer(value["y"], 4, true);
    n = addSize(n, 4);
    integer(value["z"], 4, true);
    n = addSize(n, 4);
    integer(value["rx"], 4, true);
    n = addSize(n, 4);
    integer(value["ry"], 4, true);
    n = addSize(n, 4);
    integer(value["rz"], 4, true);
    n = addSize(n, 4);
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["x"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["y"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["z"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rx"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ry"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["rz"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["rz"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    {
        const field = value["user"];
        out["user"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ForceDriveMode_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5eee21e54b22fe8fcdaed4fdaec7547e24223d6e37defe69222264a4b8dd3c6c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseSize(Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ForceDriveSpeed_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_435dbee1e046067bfb927a0017648d9a0b8e515b0e289302fbbb46ef18ff4ee1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestSize(Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["speed"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ForceDriveSpeed_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d080dd4734667b1a4ce220e35957da4e080eab446c2f3d94725aceea6fe2b918",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseSize(Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetAO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetAO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e80faf08e52a92738db8426c2df23c5360e5efc2f301eb1c233872cec5b03c02",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetAO_RequestSize(Ros2Dobot_msgs_v4SrvGetAO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetAO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetAO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetAO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetAO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetAO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetAO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetAO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetAO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetAO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e55d3bf20a4305ad6125818cdb2380340afa7cd5f2e5d6350d2c8049b2520665",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetAO_ResponseSize(Ros2Dobot_msgs_v4SrvGetAO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetAO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetAO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetAO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetAO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetAO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetAO_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetAO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetAO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetAngle_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5cef38ae26f22408200cbedc759065a50b98823d68752aee96ec5bb996d0791",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetAngle_RequestSize(Ros2Dobot_msgs_v4SrvGetAngle_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetAngle_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetAngle_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetAngle_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetAngle_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetAngle_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetAngle_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvGetAngle_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvGetAngle_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetAngle_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a8aad09efa2936be21e855bf0e258430954e9cd56ec97ae0fddbcd60316a3fa",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetAngle_ResponseSize(Ros2Dobot_msgs_v4SrvGetAngle_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetAngle_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetAngle_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetAngle_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetAngle_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetAngle_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetAngle_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetAngle_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetAngle_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetCoils_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b0c5613397c1e25669dd730bca4bfab5c89c9184691145a68224ec8e816cafe",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetCoils_RequestSize(Ros2Dobot_msgs_v4SrvGetCoils_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetCoils_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetCoils_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetCoils_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetCoils_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetCoils_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetCoils_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetCoils_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetCoils_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetCoils_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1e2d843e743d8b7c502fc1438aef0ecd143ea6a51259473c62ba8854d256423",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetCoils_ResponseSize(Ros2Dobot_msgs_v4SrvGetCoils_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetCoils_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetCoils_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetCoils_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetCoils_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetCoils_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetCoils_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetCoils_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetCoils_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetCurrentCommandId_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4702dc010e7dbf7b30975380598d466e2cdff81254748e7ff082a8a2b1ac75d6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestSize(Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetCurrentCommandId_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6c974daf9cd8e932b2703eff8b1ef824250f1a46b02ea24896da2f28554651b",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseSize(Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a86fc4c758f3fda42ab46f5dcee90a64367d3a72fc71f3114ee703977bd0845",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDO_RequestSize(Ros2Dobot_msgs_v4SrvGetDO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetDO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetDO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f297f6291b049b2b494a482c2015d078bd5c8b8ab959ce0cdfe7d9197dd7b2ec",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDO_ResponseSize(Ros2Dobot_msgs_v4SrvGetDO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetDO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDO_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetDO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDOGroup_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f6687ad1635eac46215c0d31adc6ca141933ff8690443ffc665ca250dd53272",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index_group" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDOGroup_RequestSize(Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetDOGroup_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDOGroup_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDOGroup_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDOGroup_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["index_group"]) || value["index_group"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["index_group"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["index_group"].length, true);
    w.at += 4;
    for(const element of value["index_group"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["index_group"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["index_group"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index_group"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["index_group"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDOGroup_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd99607ad22d6b0a802b4a5bb986de95020acb10bde51c186fce9388e30f834b",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseSize(Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDOGroupDEC_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f0ab9c764d7c8e5a54a53192530d1cb68aa9fcee20c2784fe97fdd4d9c398aed",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestSize(Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["group"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["group"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["group"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetDOGroupDEC_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a77468074bad22900ccfc92a285ec968b065671dfdc56758ca5af319e5270967",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseSize(Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetError_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetError_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dcc1abdb063c9e9d54f1de870df5b3147b7d6ab3717f70336e18de43bd7beb68",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"language" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetError_RequestSize(Ros2Dobot_msgs_v4SrvGetError_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetError_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetError_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetError_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetError_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetError_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["language"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetError_RequestWrite(value, w)
{
    w.text(value["language"], 256);
}

function Ros2Dobot_msgs_v4SrvGetError_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["language"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetError_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["language"];
        out["language"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetError_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetError_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c980b444e4e71c178e5dbf1156cd70f58177b7a2267546912e4f719e95584d8",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetError_ResponseSize(Ros2Dobot_msgs_v4SrvGetError_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetError_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetError_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetError_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetError_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetError_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetError_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetError_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetError_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetErrorID_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e07250dedd39c3d3ba3b50ea2a585dd38219449c7793f0cc304cb839c9c3a2eb",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetErrorID_RequestSize(Ros2Dobot_msgs_v4SrvGetErrorID_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetErrorID_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetErrorID_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetErrorID_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetErrorID_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetErrorID_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetErrorID_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvGetErrorID_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvGetErrorID_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetErrorID_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_577dda014c2a5f5409b67bfb68c10812e2d5da1ea04d31545a7081b1b55ff0de",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetErrorID_ResponseSize(Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetErrorID_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetErrorID_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetErrorID_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetErrorID_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetErrorID_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetErrorID_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetForce_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetForce_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c25b42bb0f38b0f611a04602a00da76f410abbfb524dd1790a658068dd57d490",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"tool" : -1};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetForce_RequestSize(Ros2Dobot_msgs_v4SrvGetForce_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetForce_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetForce_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetForce_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetForce_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetForce_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetForce_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetForce_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetForce_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetForce_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3d557e76b135fde34e7978948d9fd00ea402ec6aaef3e40ad4fa769f16a6e23a",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetForce_ResponseSize(Ros2Dobot_msgs_v4SrvGetForce_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetForce_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetForce_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetForce_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetForce_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetForce_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetForce_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetForce_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetForce_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetHoldRegs_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05cca038598bcf95c62c13920afd392d2e10cf320abec879d941b47fab2adaa1",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "val_type" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestSize(Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["val_type"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["val_type"], 256);
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["val_type"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["val_type"];
        out["val_type"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetHoldRegs_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_400fb0dc428c94545bb348023209a5903f609cf43896885d540e054f5bc6870f",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseSize(Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInBits_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ae044a88038228f76c9b2e6b8477797bbde2adf3453cf2b8d406fa11fdd676d",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInBits_RequestSize(Ros2Dobot_msgs_v4SrvGetInBits_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInBits_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetInBits_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInBits_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInBits_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInBits_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInBits_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInBits_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInBits_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInBits_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fe612d58b5215dd0528436df1b962460ab006a00a85ca51d0626eac8cba3442b",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInBits_ResponseSize(Ros2Dobot_msgs_v4SrvGetInBits_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInBits_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetInBits_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInBits_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInBits_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInBits_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInBits_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInBits_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInBits_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInRegs_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_35ebc727edd3789dbb5c71ae403408c7d8998de0f150a183909274161c51a004",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "val_type" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInRegs_RequestSize(Ros2Dobot_msgs_v4SrvGetInRegs_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInRegs_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetInRegs_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInRegs_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInRegs_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInRegs_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["val_type"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInRegs_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["val_type"], 256);
}

function Ros2Dobot_msgs_v4SrvGetInRegs_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["val_type"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInRegs_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["val_type"];
        out["val_type"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInRegs_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_12f6551ed525b636f176db49f2ef060a4467f8c3265c90ccfddbb3e2419dd4d7",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInRegs_ResponseSize(Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetInRegs_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInRegs_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInRegs_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInRegs_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInRegs_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInRegs_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputBool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8cb60d63252fee7d2640b39ab9273a591d3e95a9392197fd14cfb24e92fd0d78",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputBool_RequestSize(Ros2Dobot_msgs_v4SrvGetInputBool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputBool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputBool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputBool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputBool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputBool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputBool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ad8535a417098495d7934dfc6c722aab76737448f024df3b1f9fa66b669d3e1",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputBool_ResponseSize(Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputBool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputBool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputBool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputBool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputFloat_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db95cdfbc919beb1cdd511e4041a6f8d51b1261a1d542bf5dc7c3299f7955b69",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputFloat_RequestSize(Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputFloat_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputFloat_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputFloat_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputFloat_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputFloat_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e8c8c5db8f89fe88409abfa474e2825efd6daebf8c818b5cf2e5d3e06e169057",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseSize(Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputInt_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5489590da6a7c9c66fa17439e4e163c45f668083c0e3506433f45edd912ac75",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputInt_RequestSize(Ros2Dobot_msgs_v4SrvGetInputInt_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputInt_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputInt_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputInt_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputInt_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputInt_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetInputInt_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1e0edd9be016e722b2421c32d50d739be0913cc648a7c9722c5319f6d87cd974",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetInputInt_ResponseSize(Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetInputInt_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetInputInt_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetInputInt_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetInputInt_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputBool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ae241253db833cc88fe41e76aedf59d5f04ecb6cb830bddf972e720496009cc7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputBool_RequestSize(Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputBool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputBool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputBool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputBool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputBool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a45ff2c772129c849356b9322a4638850c511ceaa4a9baba0eb021ae92b3b0e0",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseSize(Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputFloat_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2426d08e3ef1a54486ed97d82f8df204a86d44dc2b1e305027de16d53ff4407f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestSize(Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputFloat_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28d795b33927ebd6f3346e47f8e1439fd747c12bca2698a5ae2bb5c131992f1e",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseSize(Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputInt_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e6df285298a742802f892b40303bb5a7f86e34bc66804c84216daf5e2cb20aa1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputInt_RequestSize(Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputInt_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputInt_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputInt_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputInt_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetOutputInt_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_06affe317be333b3f4be657ce2260e04e92936965a1f2250bfdd8d19462b4474",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseSize(Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetPose_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetPose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fff7c6517cef4df5570bbbb4bb5ce3feeb9d051bf7ba02d292836d3dd7bde76d",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"user" : 0, "tool" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetPose_RequestSize(Ros2Dobot_msgs_v4SrvGetPose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetPose_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetPose_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetPose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetPose_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetPose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetPose_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetPose_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetPose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["user"];
        out["user"] = field;
    }
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetPose_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd64b61a545f7054e870f4abb48850ed4a668ac2435fd96d094c2888428c7c25",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetPose_ResponseSize(Ros2Dobot_msgs_v4SrvGetPose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetPose_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetPose_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetPose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetPose_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetPose_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetPose_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetPose_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetPose_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetStartPose_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_943e44aedcb9f14338b3f5293aa7e2da2286429c0405724c1a510839aedbac33",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetStartPose_RequestSize(Ros2Dobot_msgs_v4SrvGetStartPose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetStartPose_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetStartPose_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetStartPose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetStartPose_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetStartPose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetStartPose_RequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
}

function Ros2Dobot_msgs_v4SrvGetStartPose_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetStartPose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trace_name"];
        out["trace_name"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetStartPose_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e751bf2c42b1f8883976e00998ef19de2ca852cdc655ec73d542700edccee658",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetStartPose_ResponseSize(Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetStartPose_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetStartPose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetStartPose_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetStartPose_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetStartPose_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetStartPose_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetToolDO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28e04bd9937b355386ad49f0bccc5c4dea6315abe1aed86b2f7a19d5cf528d80",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetToolDO_RequestSize(Ros2Dobot_msgs_v4SrvGetToolDO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetToolDO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvGetToolDO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetToolDO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetToolDO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetToolDO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/GetToolDO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9dd61b31af67f1fd28eed26aaac5b5d514c63fcebeeb84f834aecbba687571da",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvGetToolDO_ResponseSize(Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvGetToolDO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvGetToolDO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvGetToolDO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvGetToolDO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/InverseKin_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_453350aa14f30de7cfd0eba9ee114885ade509fec936fd60d9e69b8082e5d6ff",
    maxWireBytes : 1088,
    minWireBytes : 64,
    cartesianMaxWireBytes : 1088n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "use_joint_near" : "", "joint_near" : "", "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvInverseKin_RequestSize(Ros2Dobot_msgs_v4SrvInverseKin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvInverseKin_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvInverseKin_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvInverseKin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1088, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvInverseKin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvInverseKin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rx"] !== "number" || !Number.isFinite(value["rx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["ry"] !== "number" || !Number.isFinite(value["ry"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rz"] !== "number" || !Number.isFinite(value["rz"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["use_joint_near"], 256).length);
    n = addSize(n, 4 + textBytes(value["joint_near"], 256).length);
    n = addSize(n, 4 + textBytes(value["user"], 256).length);
    n = addSize(n, 4 + textBytes(value["tool"], 256).length);
    if(n > 1088)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvInverseKin_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["ry"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rz"], true);
    w.at += 8;
    w.text(value["use_joint_near"], 256);
    w.text(value["joint_near"], 256);
    w.text(value["user"], 256);
    w.text(value["tool"], 256);
}

function Ros2Dobot_msgs_v4SrvInverseKin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["ry"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rz"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["use_joint_near"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["joint_near"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["user"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["tool"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvInverseKin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    {
        const field = value["rx"];
        out["rx"] = field;
    }
    {
        const field = value["ry"];
        out["ry"] = field;
    }
    {
        const field = value["rz"];
        out["rz"] = field;
    }
    {
        const field = value["use_joint_near"];
        out["use_joint_near"] = field;
    }
    {
        const field = value["joint_near"];
        out["joint_near"] = field;
    }
    {
        const field = value["user"];
        out["user"] = field;
    }
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/InverseKin_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a699faaa2a3e0bfb4fa8cd6c8eddb56d5046f6216e40776b463612489a743fc6",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvInverseKin_ResponseSize(Ros2Dobot_msgs_v4SrvInverseKin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvInverseKin_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvInverseKin_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvInverseKin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvInverseKin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvInverseKin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvInverseKin_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvInverseKin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvInverseKin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/InverseSolution_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_274887c4d2477282d5af7681f8f36506dc46a03daed353587b5f279e817c5643",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"parameter" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvInverseSolution_RequestSize(Ros2Dobot_msgs_v4SrvInverseSolution_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvInverseSolution_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvInverseSolution_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvInverseSolution_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvInverseSolution_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvInverseSolution_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["parameter"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvInverseSolution_RequestWrite(value, w)
{
    w.text(value["parameter"], 256);
}

function Ros2Dobot_msgs_v4SrvInverseSolution_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["parameter"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvInverseSolution_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["parameter"];
        out["parameter"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/InverseSolution_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_653b734654c75bcd4b6b46b03e5d0664d60dac4a4dd780cf52b423f60dcf7652",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvInverseSolution_ResponseSize(Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvInverseSolution_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvInverseSolution_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvInverseSolution_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvInverseSolution_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvInverseSolution_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvInverseSolution_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusClose_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eb5220db23dbc6775a4cf5584fb399daf7e9e10bc6e6270b6e13cfa0ef49a8c3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusClose_RequestSize(Ros2Dobot_msgs_v4SrvModbusClose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusClose_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvModbusClose_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusClose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusClose_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusClose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusClose_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusClose_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusClose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusClose_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9313e560d4b6e1166bf72567f104805d709e726df438356e40dc23660248bde3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusClose_ResponseSize(Ros2Dobot_msgs_v4SrvModbusClose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusClose_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvModbusClose_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusClose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusClose_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusClose_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusClose_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusClose_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusClose_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusCreate_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b541505ec07934c4512dbfcedba59ec1fe0d949e939092fadbe7383419ba56c",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : "", "port" : 0, "slave_id" : 0, "is_rtu" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusCreate_RequestSize(Ros2Dobot_msgs_v4SrvModbusCreate_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusCreate_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvModbusCreate_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusCreate_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusCreate_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusCreate_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["slave_id"], 4, true);
    n = addSize(n, 4);
    integer(value["is_rtu"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_RequestWrite(value, w)
{
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["is_rtu"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["slave_id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["is_rtu"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["slave_id"];
        out["slave_id"] = field;
    }
    {
        const field = value["is_rtu"];
        out["is_rtu"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusCreate_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_36f9bbbc4f5b9f216e058be3ee8f9dddd15499e12fcd53beea4c8ddc989e9d5c",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusCreate_ResponseSize(Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvModbusCreate_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusCreate_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusCreate_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusCreate_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusRTUCreate_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_697e4ed564330dd90288c1c4e2e48d033de56f1fbe97767218e83702e2908bb2",
    maxWireBytes : 276,
    minWireBytes : 20,
    cartesianMaxWireBytes : 276n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"slave_id" : 0, "baud" : 0, "parity" : "", "data_bit" : 0, "stop_bit" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestSize(Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 276, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["slave_id"], 4, true);
    n = addSize(n, 4);
    integer(value["baud"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["parity"], 256).length);
    integer(value["data_bit"], 4, true);
    n = addSize(n, 4);
    integer(value["stop_bit"], 4, true);
    n = addSize(n, 4);
    if(n > 276)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["baud"], true);
    w.at += 4;
    w.text(value["parity"], 256);
    w.v.setInt32(w.at, value["data_bit"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["stop_bit"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["slave_id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baud"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["parity"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data_bit"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["stop_bit"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["slave_id"];
        out["slave_id"] = field;
    }
    {
        const field = value["baud"];
        out["baud"] = field;
    }
    {
        const field = value["parity"];
        out["parity"] = field;
    }
    {
        const field = value["data_bit"];
        out["data_bit"] = field;
    }
    {
        const field = value["stop_bit"];
        out["stop_bit"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ModbusRTUCreate_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98c64f86eadc06070f03a4c104dd21b978829f43879f55e6fcae2129bb248be1",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseSize(Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d819c2c114cd2570f8d81cea0222424a7515476af96f0d11512c932750abccbe",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovJ_RequestSize(Ros2Dobot_msgs_v4SrvMovJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvMovJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4213)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovJ_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvMovJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ccfa44ef4f25f155e2099281467906b5de650b38f0d97ce416a96c835f85aab",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovJ_ResponseSize(Ros2Dobot_msgs_v4SrvMovJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvMovJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovJ_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvMovJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovJIO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f0106d3117558821cf789297cafffc7a799cde05cae7bd5bde8f1c7f3f211fe2",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "mdis" : [], "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovJIO_RequestSize(Ros2Dobot_msgs_v4SrvMovJIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovJIO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvMovJIO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovJIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovJIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovJIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["mdis"]) || value["mdis"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["mdis"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 8377)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovJIO_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["mdis"].length, true);
    w.at += 4;
    for(const element of value["mdis"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvMovJIO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["mdis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["mdis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovJIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["mdis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["mdis"] = values;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovJIO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6425e2d05a322f9bc270ba95d55cfba3515455addca126d4a4b8f4d5db23eac",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovJIO_ResponseSize(Ros2Dobot_msgs_v4SrvMovJIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovJIO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvMovJIO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovJIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovJIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovJIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovJIO_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvMovJIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovJIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovL_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovL_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ec610142d58db65c4e47a3c031ffe323e1ca56b014c3c1223b855b080f7a091",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovL_RequestSize(Ros2Dobot_msgs_v4SrvMovL_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovL_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvMovL_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovL_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovL_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovL_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4213)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovL_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvMovL_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovL_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovL_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovL_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a1be520caacfbf7ecaeb4dcbf2f2ed332697166fe552e18585ea2d2b0480c9d",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovL_ResponseSize(Ros2Dobot_msgs_v4SrvMovL_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovL_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvMovL_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovL_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovL_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovL_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovL_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvMovL_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovL_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovLIO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3dcc51388c6641ba5d30a4aba80f860f7fff3b13c5792ea8702a3a3a7731bf74",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "mdis" : [], "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovLIO_RequestSize(Ros2Dobot_msgs_v4SrvMovLIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovLIO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvMovLIO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovLIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovLIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovLIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["mdis"]) || value["mdis"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["mdis"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 8377)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovLIO_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["mode"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["mdis"].length, true);
    w.at += 4;
    for(const element of value["mdis"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvMovLIO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["mode"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["mdis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["mdis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovLIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["mdis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["mdis"] = values;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MovLIO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0910c4af671b5df85dca50e157e0989da74f4bc3f66f1186620d1ffe459a87c0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMovLIO_ResponseSize(Ros2Dobot_msgs_v4SrvMovLIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMovLIO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvMovLIO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMovLIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMovLIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMovLIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMovLIO_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvMovLIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMovLIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MoveJog_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d57cb14991c382b3e1772a46203a675c7b79d84eb5fd9566a3ac935218d41c25",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis_id" : "", "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMoveJog_RequestSize(Ros2Dobot_msgs_v4SrvMoveJog_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMoveJog_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvMoveJog_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMoveJog_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMoveJog_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMoveJog_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["axis_id"], 256).length);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4424)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMoveJog_RequestWrite(value, w)
{
    w.text(value["axis_id"], 256);
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvMoveJog_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["axis_id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMoveJog_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis_id"];
        out["axis_id"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/MoveJog_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d93bc3f5fb6116a55272d5cf6849afc25582712a794265e83b9e0fe5a65ef35c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvMoveJog_ResponseSize(Ros2Dobot_msgs_v4SrvMoveJog_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvMoveJog_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvMoveJog_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvMoveJog_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvMoveJog_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvMoveJog_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvMoveJog_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvMoveJog_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvMoveJog_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Pause_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPause_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c3745f783b956f2152565dedf056f115bf9acce50bb6b500ad7f8518a6aad54e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPause_RequestSize(Ros2Dobot_msgs_v4SrvPause_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPause_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvPause_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPause_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPause_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPause_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPause_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvPause_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvPause_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Pause_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPause_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a7b398b7db5664aa6ec64b70a9431b7df090feed6590859f1201c90135a0561",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPause_ResponseSize(Ros2Dobot_msgs_v4SrvPause_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPause_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvPause_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPause_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPause_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPause_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPause_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvPause_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvPause_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/PositiveKin_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6937bac982dd49d9ec8bd2dde09a8bbd70f3e0ba2a8e1a9f3a07b2fbc27e5ecc",
    maxWireBytes : 568,
    minWireBytes : 56,
    cartesianMaxWireBytes : 568n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"j1" : 0, "j2" : 0, "j3" : 0, "j4" : 0, "j5" : 0, "j6" : 0, "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPositiveKin_RequestSize(Ros2Dobot_msgs_v4SrvPositiveKin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPositiveKin_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvPositiveKin_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPositiveKin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 568, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPositiveKin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPositiveKin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["j1"] !== "number" || !Number.isFinite(value["j1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["j2"] !== "number" || !Number.isFinite(value["j2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["j3"] !== "number" || !Number.isFinite(value["j3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["j4"] !== "number" || !Number.isFinite(value["j4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["j5"] !== "number" || !Number.isFinite(value["j5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["j6"] !== "number" || !Number.isFinite(value["j6"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["user"], 256).length);
    n = addSize(n, 4 + textBytes(value["tool"], 256).length);
    if(n > 568)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPositiveKin_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["j1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["j2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["j3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["j4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["j5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["j6"], true);
    w.at += 8;
    w.text(value["user"], 256);
    w.text(value["tool"], 256);
}

function Ros2Dobot_msgs_v4SrvPositiveKin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["j6"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["user"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["tool"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvPositiveKin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["j1"];
        out["j1"] = field;
    }
    {
        const field = value["j2"];
        out["j2"] = field;
    }
    {
        const field = value["j3"];
        out["j3"] = field;
    }
    {
        const field = value["j4"];
        out["j4"] = field;
    }
    {
        const field = value["j5"];
        out["j5"] = field;
    }
    {
        const field = value["j6"];
        out["j6"] = field;
    }
    {
        const field = value["user"];
        out["user"] = field;
    }
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/PositiveKin_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_171fd891727b9d6678bf8254f94694579bd8408a4b67ce35a5027e62819b4192",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPositiveKin_ResponseSize(Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvPositiveKin_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPositiveKin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPositiveKin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPositiveKin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPositiveKin_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvPositiveKin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/PowerOn_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d77f237d6bb081c5ebec66cb7cdf36c3d3d6a192b9ee9c4941c61b06cfa32843",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPowerOn_RequestSize(Ros2Dobot_msgs_v4SrvPowerOn_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPowerOn_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvPowerOn_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPowerOn_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPowerOn_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPowerOn_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPowerOn_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvPowerOn_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvPowerOn_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/PowerOn_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_07d11cce0fa126965ac2ef3f600199c444121dcf0251bc4f0555ed7efefe9e50",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvPowerOn_ResponseSize(Ros2Dobot_msgs_v4SrvPowerOn_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvPowerOn_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvPowerOn_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvPowerOn_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvPowerOn_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvPowerOn_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvPowerOn_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvPowerOn_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvPowerOn_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelJointMovJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b10f4dd4f4bde0e5979802416a3b78b7fa3ccf3bcbe94b532a230d4f754c4bd",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestSize(Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelJointMovJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ee9287af0dc45374f44537bca294dcf04a8feab5b427a7b0961ab54c3577a30",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseSize(Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovJTool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9f720103df63dd8e3686c4d2f6c829f0392d691d63fb929bc8a87677aba55410",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovJTool_RequestSize(Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovJTool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovJTool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovJTool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovJTool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovJTool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_414787fb60b733af9bb23b33ea873217d34e8d73ae90b58b015f6010971481fe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseSize(Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovJUser_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85424e710627d5ddf69f7d409ded4d71b7fea61f23413f76c3d6a3f2fb60e2e3",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovJUser_RequestSize(Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovJUser_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovJUser_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovJUser_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovJUser_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovJUser_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f99924765e3e229d7370e30b8bcb6c6bb0dd802725b42d2039e29e574ee7005",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseSize(Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovLTool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_745dfec46b2b24e0bdad62d53517268df5ab840453a92a0db9d03fa192b3a45c",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovLTool_RequestSize(Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovLTool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovLTool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovLTool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovLTool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovLTool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29ec56e4091c8ecdb438d1d9d64c3e51da96a5c08b3f42eddfb89d8e901439ee",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseSize(Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovLUser_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e7ebfa61453ceac9bf84d4837880ec9bf2887028086513fbd2ad67c54cac000",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovLUser_RequestSize(Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovLUser_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovLUser_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovLUser_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovLUser_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RelMovLUser_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6cda3abba1421d8ba5d34d815e8a57ffce5395e9375d2a1e56ed57e6fa914b7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseSize(Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RequestControl_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_403c7651979ef6d74972fbd5ae126bcb322e01e119aee550a763050e45f19195",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRequestControl_RequestSize(Ros2Dobot_msgs_v4SrvRequestControl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRequestControl_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRequestControl_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRequestControl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRequestControl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRequestControl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRequestControl_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvRequestControl_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvRequestControl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RequestControl_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17a6369b96ae52c3af449d42334c88ae104c8cd330d4c9a814e4aaa2f1ddd068",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRequestControl_ResponseSize(Ros2Dobot_msgs_v4SrvRequestControl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRequestControl_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRequestControl_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRequestControl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRequestControl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRequestControl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRequestControl_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRequestControl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRequestControl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ResetRobot_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db70e9f338c97dc76c6edf6c8d72175da80d88231d92590079464ded5029314e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvResetRobot_RequestSize(Ros2Dobot_msgs_v4SrvResetRobot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvResetRobot_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvResetRobot_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvResetRobot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvResetRobot_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvResetRobot_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvResetRobot_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvResetRobot_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvResetRobot_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ResetRobot_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d90445c37f315fe8bbdaac6b35bb063a3724d71488ab5149038e68fb00b4ca7d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvResetRobot_ResponseSize(Ros2Dobot_msgs_v4SrvResetRobot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvResetRobot_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvResetRobot_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvResetRobot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvResetRobot_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvResetRobot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvResetRobot_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvResetRobot_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvResetRobot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RobotMode_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0474e68e529b30bb9b353ce9309f6d600b701aeab23767077108b958c957d670",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRobotMode_RequestSize(Ros2Dobot_msgs_v4SrvRobotMode_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRobotMode_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRobotMode_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRobotMode_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRobotMode_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRobotMode_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRobotMode_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvRobotMode_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvRobotMode_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RobotMode_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e81b9352938bb0114725cb4d2231da39e4bb9b5855d96cab96af404bb9cb2d0",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_return" : "", "res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRobotMode_ResponseSize(Ros2Dobot_msgs_v4SrvRobotMode_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRobotMode_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRobotMode_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRobotMode_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRobotMode_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRobotMode_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRobotMode_ResponseWrite(value, w)
{
    w.text(value["robot_return"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRobotMode_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRobotMode_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RunScript_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRunScript_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2db52f777b0fd0f6cb88c160e5e80ad5a44e9a4bfbd526589e769e5164647511",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"project_name" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRunScript_RequestSize(Ros2Dobot_msgs_v4SrvRunScript_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRunScript_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRunScript_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRunScript_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRunScript_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRunScript_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["project_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRunScript_RequestWrite(value, w)
{
    w.text(value["project_name"], 256);
}

function Ros2Dobot_msgs_v4SrvRunScript_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["project_name"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRunScript_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["project_name"];
        out["project_name"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RunScript_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9e67e2d3fdde32e4f4e63762ef6fea3347190af1147c6fc64663a8a6e40eac88",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRunScript_ResponseSize(Ros2Dobot_msgs_v4SrvRunScript_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRunScript_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRunScript_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRunScript_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRunScript_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRunScript_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRunScript_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRunScript_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRunScript_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RunTo_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRunTo_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bbf5b5160ec7012cb9055ce6ccfeb9a21e711b5619967a65adc1e83d2ad032da",
    maxWireBytes : 68,
    minWireBytes : 68,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a1" : 0, "b1" : 0, "c1" : 0, "d1" : 0, "e1" : 0, "f1" : 0, "move_type" : 0, "user" : -1, "tool" : -1, "a" : -1, "v" : -1};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRunTo_RequestSize(Ros2Dobot_msgs_v4SrvRunTo_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRunTo_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvRunTo_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRunTo_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 68)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRunTo_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRunTo_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a1"] !== "number" || !Number.isFinite(value["a1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b1"] !== "number" || !Number.isFinite(value["b1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c1"] !== "number" || !Number.isFinite(value["c1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d1"] !== "number" || !Number.isFinite(value["d1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e1"] !== "number" || !Number.isFinite(value["e1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f1"] !== "number" || !Number.isFinite(value["f1"]))
        bad();
    n = addSize(n, 8);
    integer(value["move_type"], 4, true);
    n = addSize(n, 4);
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    integer(value["a"], 4, true);
    n = addSize(n, 4);
    integer(value["v"], 4, true);
    n = addSize(n, 4);
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRunTo_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f1"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["move_type"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["a"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["v"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRunTo_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f1"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["move_type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["v"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRunTo_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a1"];
        out["a1"] = field;
    }
    {
        const field = value["b1"];
        out["b1"] = field;
    }
    {
        const field = value["c1"];
        out["c1"] = field;
    }
    {
        const field = value["d1"];
        out["d1"] = field;
    }
    {
        const field = value["e1"];
        out["e1"] = field;
    }
    {
        const field = value["f1"];
        out["f1"] = field;
    }
    {
        const field = value["move_type"];
        out["move_type"] = field;
    }
    {
        const field = value["user"];
        out["user"] = field;
    }
    {
        const field = value["tool"];
        out["tool"] = field;
    }
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["v"];
        out["v"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/RunTo_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5d2d3bf2585f26630606625f66197df0a4d702bb086ac70495f6042c76586350",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvRunTo_ResponseSize(Ros2Dobot_msgs_v4SrvRunTo_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvRunTo_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvRunTo_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvRunTo_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvRunTo_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvRunTo_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvRunTo_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvRunTo_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvRunTo_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ServoJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvServoJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d86fe36c8826af558c1c34a0e985d7c640f61bf1663a6ffa9e252a0be3abe5b9",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvServoJ_RequestSize(Ros2Dobot_msgs_v4SrvServoJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvServoJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvServoJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvServoJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvServoJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvServoJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvServoJ_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvServoJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvServoJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ServoJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_52a4e48c6e53d3423cb39f66166ebd0060bd6f6bc6b18203968d5d92daf1ea0d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvServoJ_ResponseSize(Ros2Dobot_msgs_v4SrvServoJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvServoJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvServoJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvServoJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvServoJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvServoJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvServoJ_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvServoJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvServoJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ServoP_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvServoP_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_964dc8a3ed4efd8bbb8e0e1a0fccda883b781e775cf1e3e410509193b13a4ed0",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvServoP_RequestSize(Ros2Dobot_msgs_v4SrvServoP_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvServoP_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvServoP_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvServoP_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvServoP_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvServoP_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["d"] !== "number" || !Number.isFinite(value["d"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["e"] !== "number" || !Number.isFinite(value["e"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["f"] !== "number" || !Number.isFinite(value["f"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvServoP_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["d"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["e"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["f"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvServoP_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["c"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["d"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["e"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["f"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvServoP_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["a"];
        out["a"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    {
        const field = value["c"];
        out["c"] = field;
    }
    {
        const field = value["d"];
        out["d"] = field;
    }
    {
        const field = value["e"];
        out["e"] = field;
    }
    {
        const field = value["f"];
        out["f"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ServoP_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvServoP_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a377ed474d9101145e72002dbdd8ae960042ff65c357ba7160cdc01a2cd2cfc7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvServoP_ResponseSize(Ros2Dobot_msgs_v4SrvServoP_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvServoP_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvServoP_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvServoP_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvServoP_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvServoP_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvServoP_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvServoP_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvServoP_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetBackDistance_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_94cc7291ada95362bd71494ab65369ecb47092a84f50ccbf9de8887ef3170408",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"distance" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetBackDistance_RequestSize(Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetBackDistance_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetBackDistance_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetBackDistance_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetBackDistance_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["distance"] !== "number" || !Number.isFinite(value["distance"]))
        bad();
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["distance"], true);
    w.at += 8;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["distance"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["distance"];
        out["distance"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetBackDistance_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afa51eaa955da18aadc262c2c99c19817a645d5e1fd17387cd69816947ccfac0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseSize(Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetCoils_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_032304fb488fcee97eabea57c6b7cd4a14a9645be533627099ae9d7f3e19ed9d",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "val_tab" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetCoils_RequestSize(Ros2Dobot_msgs_v4SrvSetCoils_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetCoils_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetCoils_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetCoils_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetCoils_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetCoils_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["val_tab"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetCoils_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["val_tab"], 256);
}

function Ros2Dobot_msgs_v4SrvSetCoils_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["val_tab"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetCoils_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["val_tab"];
        out["val_tab"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetCoils_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee2ab263594c4c81c2f5372b96775fc1c4a3082682f16c2da5251ba8e783bbe1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetCoils_ResponseSize(Ros2Dobot_msgs_v4SrvSetCoils_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetCoils_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetCoils_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetCoils_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetCoils_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetCoils_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetCoils_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetCoils_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetCoils_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetCollisionLevel_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_18bc765bcb570eac7b33751aef1a9b134c4bba12682d1bf584b36837a387a7a1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestSize(Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["level"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["level"];
        out["level"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetCollisionLevel_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e31189b7ab4932b7d9fa202ce90e330715ebb8e57540ab3344365c1b70d1fc6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseSize(Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetFCCollision_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_55445aace4d74de76605a84c1cb4ce370e46e47a6d7ca0aea459b09a87f1c42d",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : 0, "torque" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetFCCollision_RequestSize(Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetFCCollision_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetFCCollision_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetFCCollision_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetFCCollision_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["force"] !== "number" || !Number.isFinite(value["force"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["torque"] !== "number" || !Number.isFinite(value["torque"]))
        bad();
    n = addSize(n, 8);
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["force"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["torque"], true);
    w.at += 8;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["torque"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["torque"];
        out["torque"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetFCCollision_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dcc2fe7fbd1c4371e03a597bf53ef5bcc3c9c8b192fc9fa6c88c6a8cc3046943",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseSize(Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetHoldRegs_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d4f8c9592ade8fa31c8c4decc0f96411138792c7b3a47b47bf0c6263589f3f0",
    maxWireBytes : 532,
    minWireBytes : 20,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "val_tab" : "", "val_type" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestSize(Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["addr"], 4, true);
    n = addSize(n, 4);
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["val_tab"], 256).length);
    n = addSize(n, 4 + textBytes(value["val_type"], 256).length);
    if(n > 532)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["val_tab"], 256);
    w.text(value["val_type"], 256);
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["addr"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["val_tab"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["val_type"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["addr"];
        out["addr"] = field;
    }
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["val_tab"];
        out["val_tab"] = field;
    }
    {
        const field = value["val_type"];
        out["val_type"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetHoldRegs_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1deb9fd0d39ee2654b710cd8b92299cc34517e975ac04863b08369e26c778661",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseSize(Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputBool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_66c31c6e7c4fa9bd1659f4a5e59483924f784f61c39bd75934e9b6074ec95db1",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputBool_RequestSize(Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputBool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputBool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputBool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputBool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputBool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb046c3d40941fa7ee4ba8492b56a37d1eb39d1b276555a62b53cb53e78fde56",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseSize(Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputFloat_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea92680705f446d3a2a31d2e97094f26dc8477d951d93c91d9ccac0a8037ecaa",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestSize(Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(typeof value["value"] !== "number" || !Number.isFinite(value["value"]))
        bad();
    n = addSize(n, 8);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputFloat_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d61c5583b405a88ecf9ca3a504c78d6181747a021225ae1c0719b43f935139de",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseSize(Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputInt_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d41e5554649c7cad2a0368150ba6eb28007ca3c908b34e9806a38d119810ed34",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputInt_RequestSize(Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputInt_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputInt_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputInt_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputInt_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetOutputInt_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ffd66e58346a61620a52891327592f71d8dbb881d7dd90e1b69c384f597a22a2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseSize(Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetPayload_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d620aef8f3c9875c5e382b2c8d14169933ab0dcfa15a179acadebf9498a88a8",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"load" : 0, "x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetPayload_RequestSize(Ros2Dobot_msgs_v4SrvSetPayload_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetPayload_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetPayload_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetPayload_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetPayload_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetPayload_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["load"] !== "number" || !Number.isFinite(value["load"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetPayload_RequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["load"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros2Dobot_msgs_v4SrvSetPayload_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["load"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetPayload_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["load"];
        out["load"] = field;
    }
    {
        const field = value["x"];
        out["x"] = field;
    }
    {
        const field = value["y"];
        out["y"] = field;
    }
    {
        const field = value["z"];
        out["z"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetPayload_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6d407c427b3e4b9a12c9d7f77671f4681191f016f0cb08bdefe761e8c922c07",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetPayload_ResponseSize(Ros2Dobot_msgs_v4SrvSetPayload_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetPayload_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetPayload_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetPayload_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetPayload_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetPayload_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetPayload_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetPayload_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetPayload_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetPostCollisionMode_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68c64ece5716d174d772579438e9c1dcadb9507bfdc10875ca7debb4cba8e51c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestSize(Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetPostCollisionMode_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_143938e2f852a1776f63c34f79ea19da387c6c18c92f02a4eb03e93f2e08b4fe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseSize(Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetSafeSkin_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_52adc5391c85a35c9bbb9cfd8903e92ced671a51e6442b58f2b8881eee798bff",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"part" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestSize(Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["part"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["part"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["part"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["part"];
        out["part"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetSafeSkin_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9e6ad533a05d04c8a98d4644cf3f467a90ada31cf160c7c8c1c87720c72ee4c7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseSize(Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetSafeWallEnable_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e3440d7de447cc75b6c6ff9bcb5b75012e0de9ff3a16d5414fae053d1c1a9a13",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestSize(Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetSafeWallEnable_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_61b6404b9419fbc261cd24cc71dbd17be97bcba63f08d8e95388a7b305eb69ff",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseSize(Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetTool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetTool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a7dc50dae7ff5a0d79013b64b97bd59e942ebdd323680bc0f43c81560690934",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetTool_RequestSize(Ros2Dobot_msgs_v4SrvSetTool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetTool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetTool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetTool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetTool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetTool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["value"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetTool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros2Dobot_msgs_v4SrvSetTool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetTool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetTool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7b16d2371acf7e512fc872f805ad473276152495123b1f2c81cedcd2b379aae6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetTool_ResponseSize(Ros2Dobot_msgs_v4SrvSetTool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetTool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetTool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetTool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetTool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetTool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetTool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetTool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetTool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetTool485_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2b39d6dfee6b75c0103780423d33bf2bc2edb52a6e17ebe2f8452b5b148d33e8",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baudrate" : 0, "parity" : "", "stop" : 0, "identify" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetTool485_RequestSize(Ros2Dobot_msgs_v4SrvSetTool485_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetTool485_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetTool485_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetTool485_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetTool485_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetTool485_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["baudrate"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["parity"], 256).length);
    integer(value["stop"], 4, true);
    n = addSize(n, 4);
    integer(value["identify"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetTool485_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baudrate"], true);
    w.at += 4;
    w.text(value["parity"], 256);
    w.v.setInt32(w.at, value["stop"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["identify"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetTool485_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baudrate"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["parity"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["stop"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["identify"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetTool485_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["baudrate"];
        out["baudrate"] = field;
    }
    {
        const field = value["parity"];
        out["parity"] = field;
    }
    {
        const field = value["stop"];
        out["stop"] = field;
    }
    {
        const field = value["identify"];
        out["identify"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetTool485_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0300651f89d97f729464b2b3908e6d14b42aa830ea78a4c3f086741cc93f7ef5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetTool485_ResponseSize(Ros2Dobot_msgs_v4SrvSetTool485_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetTool485_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetTool485_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetTool485_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetTool485_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetTool485_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetTool485_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetTool485_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetTool485_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetToolMode_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a1b84fbba05c066efc33278ccd27c5dda5bf825203cb9e15637f8d5b48683484",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "type" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetToolMode_RequestSize(Ros2Dobot_msgs_v4SrvSetToolMode_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetToolMode_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetToolMode_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetToolMode_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetToolMode_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetToolMode_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 4, true);
    n = addSize(n, 4);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetToolMode_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b82f61b5ea8c3fe51f531c7c0f7972f91b85a3c712301e586cb4f766651aa5b7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetToolMode_ResponseSize(Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetToolMode_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetToolMode_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetToolMode_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetToolMode_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetToolPower_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a89dd4dfc861b022448615ed2da1216b634bfddc1b2c15cef2ab230b6631ae12",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetToolPower_RequestSize(Ros2Dobot_msgs_v4SrvSetToolPower_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetToolPower_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetToolPower_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetToolPower_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetToolPower_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetToolPower_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetToolPower_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_adc48762b33431e6c502e40f706aa75c2804d0f0293ad15a5c1cd3c3307c03b4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetToolPower_ResponseSize(Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetToolPower_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetToolPower_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetToolPower_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetToolPower_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetUser_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetUser_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81b7b804988c5a6ebbb76fb62c83b9114fb712313bceb1d2e4ab5ec8bb6b1fed",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetUser_RequestSize(Ros2Dobot_msgs_v4SrvSetUser_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetUser_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetUser_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetUser_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetUser_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetUser_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["value"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetUser_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros2Dobot_msgs_v4SrvSetUser_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetUser_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetUser_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_accca9cc2c80031c5b0f7459cbb3d5c54465e4df093cbe6a0875163eb5a2fb9a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetUser_ResponseSize(Ros2Dobot_msgs_v4SrvSetUser_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetUser_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetUser_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetUser_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetUser_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetUser_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetUser_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetUser_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetUser_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetWorkZoneEnable_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09aba48aac42bf2b6e67910c0142960a051c31e9724464d517e040cdc9642613",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestSize(Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SetWorkZoneEnable_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a6e72b6a47cabf16bdb0216d7b137fa4880ea7817f5d40375fd7c498d4ad0e8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseSize(Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseSize(owned),
              w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SixForceHome_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3dbcc24390d425f65574985885e52a8c3cbfa239a96bc21ede7c041486a067eb",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSixForceHome_RequestSize(Ros2Dobot_msgs_v4SrvSixForceHome_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSixForceHome_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSixForceHome_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSixForceHome_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSixForceHome_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSixForceHome_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSixForceHome_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvSixForceHome_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvSixForceHome_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SixForceHome_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04b317ddf28f184a148de74f22235cc6f41095c72269ee489a67d485887cc583",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSixForceHome_ResponseSize(Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSixForceHome_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSixForceHome_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSixForceHome_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSixForceHome_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSixForceHome_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSixForceHome_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SpeedFactor_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e17b9366d15184d84c64e520db9e3c35ee832a273e38bd6ee2c92b01e06c4e9d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ratio" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSpeedFactor_RequestSize(Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvSpeedFactor_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSpeedFactor_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSpeedFactor_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSpeedFactor_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ratio"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["ratio"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ratio"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ratio"];
        out["ratio"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/SpeedFactor_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_353246afc9c000d5235bb9517a28e5fdf05fd224ac57411f7fc279b69fb97a4c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseSize(Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartDrag_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a3d3c9e03f38988abb6d5a463421deedd787ed3d275d277968af51b0fdbd37c2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartDrag_RequestSize(Ros2Dobot_msgs_v4SrvStartDrag_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartDrag_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStartDrag_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartDrag_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartDrag_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartDrag_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartDrag_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvStartDrag_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvStartDrag_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartDrag_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7dec399bf542ceca9f7acf6213f863323751b869a8cda0698d0099c499082dca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartDrag_ResponseSize(Ros2Dobot_msgs_v4SrvStartDrag_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartDrag_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStartDrag_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartDrag_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartDrag_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartDrag_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartDrag_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStartDrag_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStartDrag_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartPath_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartPath_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fb37e04b563ed40f27ae8034b8dd9d2b5cf36e55b9089c2edaeb2f2b32f616f2",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : "", "param_value" : []};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartPath_RequestSize(Ros2Dobot_msgs_v4SrvStartPath_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartPath_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStartPath_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartPath_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartPath_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartPath_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(!Array.isArray(value["param_value"]) || value["param_value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["param_value"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4424)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartPath_RequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
    w.v.setUint32(w.at, value["param_value"].length, true);
    w.at += 4;
    for(const element of value["param_value"])
    {
        w.text(element, 256);
    }
}

function Ros2Dobot_msgs_v4SrvStartPath_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["param_value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param_value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStartPath_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trace_name"];
        out["trace_name"] = field;
    }
    {
        const field = value["param_value"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param_value"] = values;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartPath_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48b184f798f192b00130c900b8331bd8a98d6a7416753d4bc5f4c736507807eb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartPath_ResponseSize(Ros2Dobot_msgs_v4SrvStartPath_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartPath_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStartPath_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartPath_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartPath_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartPath_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartPath_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStartPath_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStartPath_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartRTOffset_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c582b88c4aae68ee0474bf750249139d175dcf51c1abb8a3c6c1960cf5433745",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartRTOffset_RequestSize(Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStartRTOffset_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartRTOffset_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartRTOffset_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartRTOffset_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StartRTOffset_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4aed9b63ca8e0043e9e2c9aef0cfc9d7f18b6b3c308ebfc7960c625319d2e4cc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseSize(Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Stop_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStop_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7c790dbc997558994e8fcc57044ffe0bd98bf4bc6c9ff18428bf8b4b701baff1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStop_RequestSize(Ros2Dobot_msgs_v4SrvStop_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStop_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStop_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStop_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStop_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStop_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStop_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvStop_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvStop_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Stop_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStop_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_27f4d159bbb2155a344f0da8317513e99338bbab073cfe6def1362ca6c11503f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStop_ResponseSize(Ros2Dobot_msgs_v4SrvStop_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStop_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStop_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStop_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStop_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStop_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStop_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStop_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStop_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StopDrag_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5726ed170c8d8c30e57c91dc3cf4685feba2b761ddbb5d25e6327d51e680d6e7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStopDrag_RequestSize(Ros2Dobot_msgs_v4SrvStopDrag_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStopDrag_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStopDrag_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStopDrag_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStopDrag_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStopDrag_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStopDrag_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvStopDrag_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvStopDrag_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StopDrag_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4610fb06a436e0dafc3a3118d23ee8c66ee79eee1b916b9a15d2d48f6be79ae1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStopDrag_ResponseSize(Ros2Dobot_msgs_v4SrvStopDrag_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStopDrag_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStopDrag_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStopDrag_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStopDrag_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStopDrag_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStopDrag_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStopDrag_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStopDrag_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StopMoveJog_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1186e51277670f5371641a689fbd004690afa0ba0c083e939e8a4ea707e7cc48",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStopMoveJog_RequestSize(Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvStopMoveJog_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStopMoveJog_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStopMoveJog_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStopMoveJog_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_RequestWrite(value, w)
{
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/StopMoveJog_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a16d5185cfacf20366bc39096fd5f178372b49114f1b54934998b83598ab88ba",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseSize(Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/TcpDashboard_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_364e06ac6090aab0c80f08c0b65fc7d7dc9b01f97001ab2b8bef01cb6665238e",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvTcpDashboard_RequestSize(Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvTcpDashboard_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvTcpDashboard_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvTcpDashboard_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvTcpDashboard_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_RequestWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["command"];
        out["command"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/TcpDashboard_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_af114666c84215cf57d7ebfab7cd19fd4f02d80ad5420b99199bfbd88d337ef4",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : ""};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseSize(Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["result"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseWrite(value, w)
{
    w.text(value["result"], 256);
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["result"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["result"];
        out["result"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Tool_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvTool_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_46a879d337500dd0363b55d3af8df7d5008ff677c961e4945bee19430a596356",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvTool_RequestSize(Ros2Dobot_msgs_v4SrvTool_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvTool_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvTool_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvTool_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvTool_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvTool_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvTool_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvTool_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvTool_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/Tool_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvTool_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0356c8a66a835ca4357c0acb9448693c77729cfe36a04ef7bb04490f32e17c8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvTool_ResponseSize(Ros2Dobot_msgs_v4SrvTool_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvTool_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvTool_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvTool_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvTool_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvTool_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvTool_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvTool_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvTool_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolAI_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolAI_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b4271be2ad590c256fd80b1ef3ed003bb8109725511a72a317563436759482db",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolAI_RequestSize(Ros2Dobot_msgs_v4SrvToolAI_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolAI_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvToolAI_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolAI_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolAI_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolAI_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolAI_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolAI_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolAI_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolAI_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_108dce96d777772e846b8b6f51b8e69c75a481c3a087124a2f3af01204cbb25f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolAI_ResponseSize(Ros2Dobot_msgs_v4SrvToolAI_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolAI_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvToolAI_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolAI_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolAI_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolAI_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolAI_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolAI_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolAI_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDI_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDI_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc04ef24949f55eed4f550c8e6894c6684ae4a9b72d13e4a0257b2919abe8c75",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDI_RequestSize(Ros2Dobot_msgs_v4SrvToolDI_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDI_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvToolDI_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDI_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDI_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDI_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDI_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDI_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDI_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDI_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44925063f0b55bd4f63177a5bb3d566e249699b74120805f1477e28085f0a598",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDI_ResponseSize(Ros2Dobot_msgs_v4SrvToolDI_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDI_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvToolDI_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDI_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDI_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDI_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDI_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDI_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDI_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDO_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_013cac15434c4dbacec6ab5cd7912f2992ccb77c619db0b0f1b3837b6d89ffa3",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDO_RequestSize(Ros2Dobot_msgs_v4SrvToolDO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDO_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvToolDO_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDO_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDO_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0231b146fd731cd304cdd2147679481307d77b4fae9d7436e523458a2dbf81a7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDO_ResponseSize(Ros2Dobot_msgs_v4SrvToolDO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDO_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvToolDO_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDO_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDOInstant_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cfac2b284303fbaf26d1ed93e8737e879ae16ef03a44fd0aa6118dac4fce03b2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDOInstant_RequestSize(Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvToolDOInstant_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDOInstant_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDOInstant_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDOInstant_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/ToolDOInstant_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e4472558e66ca84105318afc706c6aaaeb790d49d62fcfaac45506762d99262",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseSize(Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/User_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvUser_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afa82fa40468d485c2aedd845180f41746938a7e6bcd8187122aa0eef01864a3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvUser_RequestSize(Ros2Dobot_msgs_v4SrvUser_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvUser_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvUser_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvUser_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvUser_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvUser_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvUser_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvUser_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvUser_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/User_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvUser_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eeb9ac569c6db66730edf5a7c72bfc7cdddca2168e69f8b099595c8ba47242a8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvUser_ResponseSize(Ros2Dobot_msgs_v4SrvUser_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvUser_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvUser_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvUser_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvUser_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvUser_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvUser_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvUser_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvUser_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/VelJ_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvVelJ_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c223b003b51ad228cae88eef51b31e7457797fa5ff90e2926d7e06215910d20",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvVelJ_RequestSize(Ros2Dobot_msgs_v4SrvVelJ_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvVelJ_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvVelJ_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvVelJ_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvVelJ_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvVelJ_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvVelJ_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvVelJ_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvVelJ_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/VelJ_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dcc12c83a5d42e331800f324ceaa6b735ee11afd77aa9640b0dbfa266115f307",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvVelJ_ResponseSize(Ros2Dobot_msgs_v4SrvVelJ_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvVelJ_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvVelJ_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvVelJ_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvVelJ_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvVelJ_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvVelJ_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvVelJ_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvVelJ_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/VelL_Request codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvVelL_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d8df3c4f5e50fa98822b9312633ff6c6f6cb4350170c1f1660c46f11ed3bd2de",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvVelL_RequestSize(Ros2Dobot_msgs_v4SrvVelL_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvVelL_RequestCapture(value), n = Ros2Dobot_msgs_v4SrvVelL_RequestSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvVelL_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvVelL_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvVelL_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvVelL_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvVelL_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvVelL_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["r"];
        out["r"] = field;
    }
    return out;
}

/** Complete ROS2 dobot_msgs_v4/srv/VelL_Response codec; maxima are not actual lengths. */
export const Ros2Dobot_msgs_v4SrvVelL_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64b1dedfcc17f0f5c81ea98751eaf8fcc8670ec6d4d488c89e64043763802072",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros2Dobot_msgs_v4SrvVelL_ResponseSize(Ros2Dobot_msgs_v4SrvVelL_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Dobot_msgs_v4SrvVelL_ResponseCapture(value), n = Ros2Dobot_msgs_v4SrvVelL_ResponseSize(owned), w = new Writer(n);
        Ros2Dobot_msgs_v4SrvVelL_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Dobot_msgs_v4SrvVelL_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Dobot_msgs_v4SrvVelL_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Dobot_msgs_v4SrvVelL_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros2Dobot_msgs_v4SrvVelL_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros2Dobot_msgs_v4SrvVelL_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}
