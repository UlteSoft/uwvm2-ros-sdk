/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original dobot/ros1_v3 canonical value domain.
 * @details The selected domain contains 198 complete record/components and 362 original fields. Declared
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

/** Complete ROS1 dobot_bringup/RobotStatus codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRobotStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e0f4d360201791cc42ab0240d4497e5398d4f308db124d56a8fbf718a553d69",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"is_enable" : false, "is_connected" : false};
    },
    validateValue(value) {
        Ros1Dobot_bringupRobotStatusSize(Ros1Dobot_bringupRobotStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRobotStatusCapture(value), n = Ros1Dobot_bringupRobotStatusSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRobotStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRobotStatusRead(r);
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

function Ros1Dobot_bringupRobotStatusSize(value)
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

function Ros1Dobot_bringupRobotStatusWrite(value, w)
{
    w.v.setUint8(w.at, value["is_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_connected"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dobot_bringupRobotStatusRead(r)
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

function Ros1Dobot_bringupRobotStatusCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolVectorActual codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolVectorActualCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ed32143752c7d1cda739d6ab711f5b08bae8794a4de17f0dee7868a005513d0",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolVectorActualSize(Ros1Dobot_bringupToolVectorActualCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolVectorActualCapture(value), n = Ros1Dobot_bringupToolVectorActualSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolVectorActualWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolVectorActualRead(r);
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

function Ros1Dobot_bringupToolVectorActualSize(value)
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

function Ros1Dobot_bringupToolVectorActualWrite(value, w)
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

function Ros1Dobot_bringupToolVectorActualRead(r)
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

function Ros1Dobot_bringupToolVectorActualCapture(value)
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

/** Complete ROS1 dobot_bringup/AIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1572d590f41a0d6f05aa68153b045f434e6aef1033150732686784dbe21262c9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAIRequestSize(Ros1Dobot_bringupAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAIRequestCapture(value), n = Ros1Dobot_bringupAIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAIRequestRead(r);
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

function Ros1Dobot_bringupAIRequestSize(value)
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

function Ros1Dobot_bringupAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAIRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/AIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_486fdd9a49d80f9f4ba0b3db7f95c2bb68937f38f9426abe22c4bffe8db0db46",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAIResponseSize(Ros1Dobot_bringupAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAIResponseCapture(value), n = Ros1Dobot_bringupAIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAIResponseRead(r);
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

function Ros1Dobot_bringupAIResponseSize(value)
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

function Ros1Dobot_bringupAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAIResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/AORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6797d5a3adbbe8a6ac7e5152fd73d67219e6615f75e18fd5db7fce9e8358aa22",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAORequestSize(Ros1Dobot_bringupAORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAORequestCapture(value), n = Ros1Dobot_bringupAORequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAORequestRead(r);
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

function Ros1Dobot_bringupAORequestSize(value)
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

function Ros1Dobot_bringupAORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAORequestRead(r)
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

function Ros1Dobot_bringupAORequestCapture(value)
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

/** Complete ROS1 dobot_bringup/AOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3122150c18388d4b289f59639023bb27212e2948f9535118695a25f0b79000f6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAOResponseSize(Ros1Dobot_bringupAOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAOResponseCapture(value), n = Ros1Dobot_bringupAOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAOResponseRead(r);
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

function Ros1Dobot_bringupAOResponseSize(value)
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

function Ros1Dobot_bringupAOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAOResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/AOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f70fe08e6be672788635df44d01ed0077112940783eca2a4a78969713c285e67",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAOExecuteRequestSize(Ros1Dobot_bringupAOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAOExecuteRequestCapture(value), n = Ros1Dobot_bringupAOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAOExecuteRequestRead(r);
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

function Ros1Dobot_bringupAOExecuteRequestSize(value)
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

function Ros1Dobot_bringupAOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAOExecuteRequestRead(r)
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

function Ros1Dobot_bringupAOExecuteRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/AOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8bf60f323e29bc412c07a6ba39cde403b25036ee7d64585ea3d2af45adcad2dc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAOExecuteResponseSize(Ros1Dobot_bringupAOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAOExecuteResponseCapture(value), n = Ros1Dobot_bringupAOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAOExecuteResponseRead(r);
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

function Ros1Dobot_bringupAOExecuteResponseSize(value)
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

function Ros1Dobot_bringupAOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAOExecuteResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/AccJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAccJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c89fb7653b967e0f03330123af09fd160c66fda96e68a581d1c6a3c53eeac8d7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAccJRequestSize(Ros1Dobot_bringupAccJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAccJRequestCapture(value), n = Ros1Dobot_bringupAccJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAccJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAccJRequestRead(r);
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

function Ros1Dobot_bringupAccJRequestSize(value)
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

function Ros1Dobot_bringupAccJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAccJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAccJRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/AccJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAccJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a90b5404c41ec9fc34a48af18f892bfc0ad74d63cbc74f4c80c25d53be89d045",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAccJResponseSize(Ros1Dobot_bringupAccJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAccJResponseCapture(value), n = Ros1Dobot_bringupAccJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAccJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAccJResponseRead(r);
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

function Ros1Dobot_bringupAccJResponseSize(value)
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

function Ros1Dobot_bringupAccJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAccJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAccJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/AccLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAccLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e668d205c847dc78c096f98e55cf1be3672561cc801810bc3041a5cedaeb1202",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAccLRequestSize(Ros1Dobot_bringupAccLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAccLRequestCapture(value), n = Ros1Dobot_bringupAccLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAccLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAccLRequestRead(r);
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

function Ros1Dobot_bringupAccLRequestSize(value)
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

function Ros1Dobot_bringupAccLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAccLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAccLRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/AccLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupAccLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_26854da8e7179bab20860844f9a6940853a0086d7585787662be01ab180adeec",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupAccLResponseSize(Ros1Dobot_bringupAccLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupAccLResponseCapture(value), n = Ros1Dobot_bringupAccLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupAccLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupAccLResponseRead(r);
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

function Ros1Dobot_bringupAccLResponseSize(value)
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

function Ros1Dobot_bringupAccLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupAccLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupAccLResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ArcRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupArcRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_de7367afbd65fe217782827576fe0c7b4ac23eb23a366c9a91b0274d62edf738",
    maxWireBytes : 4260,
    minWireBytes : 100,
    cartesianMaxWireBytes : 4260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x1" : 0, "y1" : 0, "z1" : 0, "a1" : 0, "b1" : 0, "c1" : 0, "x2" : 0, "y2" : 0, "z2" : 0, "a2" : 0, "b2" : 0, "c2" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupArcRequestSize(Ros1Dobot_bringupArcRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupArcRequestCapture(value), n = Ros1Dobot_bringupArcRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupArcRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4260, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupArcRequestRead(r);
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

function Ros1Dobot_bringupArcRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x1"] !== "number" || !Number.isFinite(value["x1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y1"] !== "number" || !Number.isFinite(value["y1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z1"] !== "number" || !Number.isFinite(value["z1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["a1"] !== "number" || !Number.isFinite(value["a1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b1"] !== "number" || !Number.isFinite(value["b1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c1"] !== "number" || !Number.isFinite(value["c1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["x2"] !== "number" || !Number.isFinite(value["x2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y2"] !== "number" || !Number.isFinite(value["y2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z2"] !== "number" || !Number.isFinite(value["z2"]))
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupArcRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["x2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c2"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupArcRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z1"] = decoded;
    }
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
        value["x2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z2"] = decoded;
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupArcRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x1"];
        out["x1"] = field;
    }
    {
        const field = value["y1"];
        out["y1"] = field;
    }
    {
        const field = value["z1"];
        out["z1"] = field;
    }
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
        const field = value["x2"];
        out["x2"] = field;
    }
    {
        const field = value["y2"];
        out["y2"] = field;
    }
    {
        const field = value["z2"];
        out["z2"] = field;
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ArcResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupArcResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e61e8ccdcf767e9ed9da3a659758d19272b01ba08f41e13cdd02b7f238365f79",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupArcResponseSize(Ros1Dobot_bringupArcResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupArcResponseCapture(value), n = Ros1Dobot_bringupArcResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupArcResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupArcResponseRead(r);
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

function Ros1Dobot_bringupArcResponseSize(value)
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

function Ros1Dobot_bringupArcResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupArcResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupArcResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ArchRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupArchRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41a296f5b8470085d39eade8d524d7caa94b030090a7ec2121c6ddff2aa1374e",
    maxWireBytes : 4168,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4168n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "cpValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupArchRequestSize(Ros1Dobot_bringupArchRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupArchRequestCapture(value), n = Ros1Dobot_bringupArchRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupArchRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4168, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupArchRequestRead(r);
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

function Ros1Dobot_bringupArchRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["cpValue"]) || value["cpValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["cpValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4168)
        bad(90);
    return n;
}

function Ros1Dobot_bringupArchRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["cpValue"].length, true);
    w.at += 4;
    for(const element of value["cpValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupArchRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["cpValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["cpValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupArchRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["cpValue"];
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
        out["cpValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ArchResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupArchResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99b4e526921fef5113b08649372a843d360fee84e87f3d8631af5c0d6e837977",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupArchResponseSize(Ros1Dobot_bringupArchResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupArchResponseCapture(value), n = Ros1Dobot_bringupArchResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupArchResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupArchResponseRead(r);
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

function Ros1Dobot_bringupArchResponseSize(value)
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

function Ros1Dobot_bringupArchResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupArchResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupArchResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/BrakeControlRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupBrakeControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f0c49bbfa1f5a1c418222444fce2cdcf0855c2b6f3a17fd71641cd9cec03590b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupBrakeControlRequestSize(Ros1Dobot_bringupBrakeControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupBrakeControlRequestCapture(value), n = Ros1Dobot_bringupBrakeControlRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupBrakeControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupBrakeControlRequestRead(r);
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

function Ros1Dobot_bringupBrakeControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axisID"], 4, true);
    n = addSize(n, 4);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupBrakeControlRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["axisID"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_bringupBrakeControlRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["axisID"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupBrakeControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axisID"];
        out["axisID"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/BrakeControlResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupBrakeControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6783d6553b1ccfc1581dbe55448dba21d8d0df6f0b91786d28e39d5a15635b0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupBrakeControlResponseSize(Ros1Dobot_bringupBrakeControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupBrakeControlResponseCapture(value), n = Ros1Dobot_bringupBrakeControlResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupBrakeControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupBrakeControlResponseRead(r);
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

function Ros1Dobot_bringupBrakeControlResponseSize(value)
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

function Ros1Dobot_bringupBrakeControlResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupBrakeControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupBrakeControlResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/CPRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupCPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6e8ebd37a19b8fdd242f684dfa008b80932ec3d760a3df958a108a6467e423e1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupCPRequestSize(Ros1Dobot_bringupCPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupCPRequestCapture(value), n = Ros1Dobot_bringupCPRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupCPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupCPRequestRead(r);
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

function Ros1Dobot_bringupCPRequestSize(value)
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

function Ros1Dobot_bringupCPRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_bringupCPRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupCPRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/CPResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupCPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05336cddc2a10a292d5950278941ad1642fb43d7689a6eb4ba60e0c2d9a23035",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupCPResponseSize(Ros1Dobot_bringupCPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupCPResponseCapture(value), n = Ros1Dobot_bringupCPResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupCPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupCPResponseRead(r);
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

function Ros1Dobot_bringupCPResponseSize(value)
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

function Ros1Dobot_bringupCPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupCPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupCPResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/CircleRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupCircleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_63de9534c40efc878aa4701ef01d7090ab3fd193b51b4d97fbd36e3c02d2ffea",
    maxWireBytes : 4264,
    minWireBytes : 104,
    cartesianMaxWireBytes : 4264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "count" : 0,
            "x1" : 0,
            "y1" : 0,
            "z1" : 0,
            "a1" : 0,
            "b1" : 0,
            "c1" : 0,
            "x2" : 0,
            "y2" : 0,
            "z2" : 0,
            "a2" : 0,
            "b2" : 0,
            "c2" : 0,
            "paramValue" : []
        };
    },
    validateValue(value) {
        Ros1Dobot_bringupCircleRequestSize(Ros1Dobot_bringupCircleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupCircleRequestCapture(value), n = Ros1Dobot_bringupCircleRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupCircleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4264, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupCircleRequestRead(r);
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

function Ros1Dobot_bringupCircleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["count"], 4, true);
    n = addSize(n, 4);
    if(typeof value["x1"] !== "number" || !Number.isFinite(value["x1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y1"] !== "number" || !Number.isFinite(value["y1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z1"] !== "number" || !Number.isFinite(value["z1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["a1"] !== "number" || !Number.isFinite(value["a1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b1"] !== "number" || !Number.isFinite(value["b1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c1"] !== "number" || !Number.isFinite(value["c1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["x2"] !== "number" || !Number.isFinite(value["x2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["y2"] !== "number" || !Number.isFinite(value["y2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["z2"] !== "number" || !Number.isFinite(value["z2"]))
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4264)
        bad(90);
    return n;
}

function Ros1Dobot_bringupCircleRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["x1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["x2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c2"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupCircleRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["count"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z1"] = decoded;
    }
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
        value["x2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z2"] = decoded;
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupCircleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["count"];
        out["count"] = field;
    }
    {
        const field = value["x1"];
        out["x1"] = field;
    }
    {
        const field = value["y1"];
        out["y1"] = field;
    }
    {
        const field = value["z1"];
        out["z1"] = field;
    }
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
        const field = value["x2"];
        out["x2"] = field;
    }
    {
        const field = value["y2"];
        out["y2"] = field;
    }
    {
        const field = value["z2"];
        out["z2"] = field;
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/CircleResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupCircleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dcc76a49a34c2355dcda26824e9e524ee8a2bc5ff96c5c13749706396327cddb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupCircleResponseSize(Ros1Dobot_bringupCircleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupCircleResponseCapture(value), n = Ros1Dobot_bringupCircleResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupCircleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupCircleResponseRead(r);
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

function Ros1Dobot_bringupCircleResponseSize(value)
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

function Ros1Dobot_bringupCircleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupCircleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupCircleResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ClearErrorRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupClearErrorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5efd3497aa76e5b6777543f78b89e5b5917fd173819936c6f93fb2ce7de6e5e9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupClearErrorRequestSize(Ros1Dobot_bringupClearErrorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupClearErrorRequestCapture(value), n = Ros1Dobot_bringupClearErrorRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupClearErrorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupClearErrorRequestRead(r);
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

function Ros1Dobot_bringupClearErrorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupClearErrorRequestWrite(value, w)
{
}

function Ros1Dobot_bringupClearErrorRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupClearErrorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/ClearErrorResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupClearErrorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9d316550be928ba7da159505e55046aba2cb3f7951b88727b0900564f1a3de89",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupClearErrorResponseSize(Ros1Dobot_bringupClearErrorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupClearErrorResponseCapture(value), n = Ros1Dobot_bringupClearErrorResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupClearErrorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupClearErrorResponseRead(r);
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

function Ros1Dobot_bringupClearErrorResponseSize(value)
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

function Ros1Dobot_bringupClearErrorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupClearErrorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupClearErrorResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ContinueScriptRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupContinueScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_94437c065c6198d333700a16b3bdaa1cfa1ad42043e579540ed8b9fb65be7132",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupContinueScriptRequestSize(Ros1Dobot_bringupContinueScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupContinueScriptRequestCapture(value), n = Ros1Dobot_bringupContinueScriptRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupContinueScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupContinueScriptRequestRead(r);
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

function Ros1Dobot_bringupContinueScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupContinueScriptRequestWrite(value, w)
{
}

function Ros1Dobot_bringupContinueScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupContinueScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/ContinueScriptResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupContinueScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e24a269f34aca468ea7b91d7320f79052928a9c129a64a2603aba21ed8e802b5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupContinueScriptResponseSize(Ros1Dobot_bringupContinueScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupContinueScriptResponseCapture(value), n = Ros1Dobot_bringupContinueScriptResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupContinueScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupContinueScriptResponseRead(r);
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

function Ros1Dobot_bringupContinueScriptResponseSize(value)
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

function Ros1Dobot_bringupContinueScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupContinueScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupContinueScriptResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ContinuesRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupContinuesRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_36b892c0c9d45b816ca840ed228040d79ccc391c28fb99f593643d9b50c3b2b0",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupContinuesRequestSize(Ros1Dobot_bringupContinuesRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupContinuesRequestCapture(value), n = Ros1Dobot_bringupContinuesRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupContinuesRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupContinuesRequestRead(r);
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

function Ros1Dobot_bringupContinuesRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupContinuesRequestWrite(value, w)
{
}

function Ros1Dobot_bringupContinuesRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupContinuesRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/ContinuesResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupContinuesResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04e387a52444077a9b0a96653934c64f0ff576cd374928c8246de4add006615a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupContinuesResponseSize(Ros1Dobot_bringupContinuesResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupContinuesResponseCapture(value), n = Ros1Dobot_bringupContinuesResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupContinuesResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupContinuesResponseRead(r);
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

function Ros1Dobot_bringupContinuesResponseSize(value)
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

function Ros1Dobot_bringupContinuesResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupContinuesResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupContinuesResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cf02229580f51ef51f0feb0a773e01691235810dabfc93d07ca52e83a2fbf894",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDIRequestSize(Ros1Dobot_bringupDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDIRequestCapture(value), n = Ros1Dobot_bringupDIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDIRequestRead(r);
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

function Ros1Dobot_bringupDIRequestSize(value)
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

function Ros1Dobot_bringupDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDIRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2015cdb56d2e1cd584ceb18b79925109e77e3483cb07403339805605bac24eca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDIResponseSize(Ros1Dobot_bringupDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDIResponseCapture(value), n = Ros1Dobot_bringupDIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDIResponseRead(r);
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

function Ros1Dobot_bringupDIResponseSize(value)
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

function Ros1Dobot_bringupDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDIResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DIGroupRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDIGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1eb7407b550066a63a3bb7f53e2b1dffaa20e587e62b926f06648224aa8836e",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupDIGroupRequestSize(Ros1Dobot_bringupDIGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDIGroupRequestCapture(value), n = Ros1Dobot_bringupDIGroupRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDIGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDIGroupRequestRead(r);
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

function Ros1Dobot_bringupDIGroupRequestSize(value)
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

function Ros1Dobot_bringupDIGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_bringupDIGroupRequestRead(r)
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

function Ros1Dobot_bringupDIGroupRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DIGroupResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDIGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0a12d3d2a105be4a1fafe9698974f03731d3bc14f77b390e124da5c8cc747b1f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDIGroupResponseSize(Ros1Dobot_bringupDIGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDIGroupResponseCapture(value), n = Ros1Dobot_bringupDIGroupResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDIGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDIGroupResponseRead(r);
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

function Ros1Dobot_bringupDIGroupResponseSize(value)
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

function Ros1Dobot_bringupDIGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDIGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDIGroupResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ef488f375efc4acf7521f80910b3714cfecd30f3c111a12bf2d1e4d2e0aed7c",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDORequestSize(Ros1Dobot_bringupDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDORequestCapture(value), n = Ros1Dobot_bringupDORequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDORequestRead(r);
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

function Ros1Dobot_bringupDORequestSize(value)
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

function Ros1Dobot_bringupDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDORequestRead(r)
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

function Ros1Dobot_bringupDORequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05a1b8731cea3139845450022d18a75b530a876b60523005433a8136cc2bef34",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDOResponseSize(Ros1Dobot_bringupDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDOResponseCapture(value), n = Ros1Dobot_bringupDOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDOResponseRead(r);
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

function Ros1Dobot_bringupDOResponseSize(value)
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

function Ros1Dobot_bringupDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDOResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_57da630cf5f390ee9d68d57c7a8767e3762f5814ab659706063872a1e220d606",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDOExecuteRequestSize(Ros1Dobot_bringupDOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDOExecuteRequestCapture(value), n = Ros1Dobot_bringupDOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDOExecuteRequestRead(r);
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

function Ros1Dobot_bringupDOExecuteRequestSize(value)
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

function Ros1Dobot_bringupDOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDOExecuteRequestRead(r)
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

function Ros1Dobot_bringupDOExecuteRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90acf95e87ddb0797525c1726315fd10447e42b36710497f9f4642f84c166fe6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDOExecuteResponseSize(Ros1Dobot_bringupDOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDOExecuteResponseCapture(value), n = Ros1Dobot_bringupDOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDOExecuteResponseRead(r);
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

function Ros1Dobot_bringupDOExecuteResponseSize(value)
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

function Ros1Dobot_bringupDOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDOExecuteResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05604172b0bd8330bee9236bf629815b1a6cc9ac39b1a3374fcd753b6686b8f0",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupDOGroupRequestSize(Ros1Dobot_bringupDOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDOGroupRequestCapture(value), n = Ros1Dobot_bringupDOGroupRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDOGroupRequestRead(r);
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

function Ros1Dobot_bringupDOGroupRequestSize(value)
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

function Ros1Dobot_bringupDOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_bringupDOGroupRequestRead(r)
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

function Ros1Dobot_bringupDOGroupRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99217a3263538d28cc5d7335906bdfaec128df8b3cfde6c3dbf1962320bcb00a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDOGroupResponseSize(Ros1Dobot_bringupDOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDOGroupResponseCapture(value), n = Ros1Dobot_bringupDOGroupResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDOGroupResponseRead(r);
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

function Ros1Dobot_bringupDOGroupResponseSize(value)
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

function Ros1Dobot_bringupDOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDOGroupResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DigitalOutputsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDigitalOutputsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_940ad8d824ad890e4f33a9acf1871d26266dc65e5ae0263e761990a55507d97f",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : false};
    },
    validateValue(value) {
        Ros1Dobot_bringupDigitalOutputsRequestSize(Ros1Dobot_bringupDigitalOutputsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDigitalOutputsRequestCapture(value), n = Ros1Dobot_bringupDigitalOutputsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDigitalOutputsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDigitalOutputsRequestRead(r);
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

function Ros1Dobot_bringupDigitalOutputsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(typeof value["status"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Dobot_bringupDigitalOutputsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["status"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dobot_bringupDigitalOutputsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["status"] = decoded !== 0;
    }
    return value;
}

function Ros1Dobot_bringupDigitalOutputsRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/DigitalOutputsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDigitalOutputsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99e07211731bb0811c9a9c53fc18593839a0d413180d37ffbf33fd4c25cb1cf8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDigitalOutputsResponseSize(Ros1Dobot_bringupDigitalOutputsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDigitalOutputsResponseCapture(value), n = Ros1Dobot_bringupDigitalOutputsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDigitalOutputsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDigitalOutputsResponseRead(r);
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

function Ros1Dobot_bringupDigitalOutputsResponseSize(value)
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

function Ros1Dobot_bringupDigitalOutputsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDigitalOutputsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDigitalOutputsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/DisableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDisableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f4ac3135f9e5b6c9a38ffc8fab4a747e4cb77fb47d4a8c35c08fb9dd1622add4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupDisableRobotRequestSize(Ros1Dobot_bringupDisableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDisableRobotRequestCapture(value), n = Ros1Dobot_bringupDisableRobotRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDisableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDisableRobotRequestRead(r);
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

function Ros1Dobot_bringupDisableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupDisableRobotRequestWrite(value, w)
{
}

function Ros1Dobot_bringupDisableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupDisableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/DisableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupDisableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f21d2305cee15f4a09dddbb1224defc53541b14df7a81b8be011b9b8dd581c3d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupDisableRobotResponseSize(Ros1Dobot_bringupDisableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupDisableRobotResponseCapture(value), n = Ros1Dobot_bringupDisableRobotResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupDisableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupDisableRobotResponseRead(r);
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

function Ros1Dobot_bringupDisableRobotResponseSize(value)
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

function Ros1Dobot_bringupDisableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupDisableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupDisableRobotResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/EmergencyStopRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupEmergencyStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0f6de6358491a4d2651d2c3965faea793c2ab4fb09a237b31b22cd0b904ac6b",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupEmergencyStopRequestSize(Ros1Dobot_bringupEmergencyStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupEmergencyStopRequestCapture(value), n = Ros1Dobot_bringupEmergencyStopRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupEmergencyStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupEmergencyStopRequestRead(r);
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

function Ros1Dobot_bringupEmergencyStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupEmergencyStopRequestWrite(value, w)
{
}

function Ros1Dobot_bringupEmergencyStopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupEmergencyStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/EmergencyStopResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupEmergencyStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_734c45ffac6db73610807063dc89a50da8f35b061819e82e77fb51ee079ec929",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupEmergencyStopResponseSize(Ros1Dobot_bringupEmergencyStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupEmergencyStopResponseCapture(value), n = Ros1Dobot_bringupEmergencyStopResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupEmergencyStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupEmergencyStopResponseRead(r);
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

function Ros1Dobot_bringupEmergencyStopResponseSize(value)
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

function Ros1Dobot_bringupEmergencyStopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupEmergencyStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupEmergencyStopResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/EnableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupEnableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_25d27ffd5d67239f85e389e4e0af813b25e69508542d83f6cf218f09010050d4",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupEnableRobotRequestSize(Ros1Dobot_bringupEnableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupEnableRobotRequestCapture(value), n = Ros1Dobot_bringupEnableRobotRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupEnableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupEnableRobotRequestRead(r);
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

function Ros1Dobot_bringupEnableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["args"]) || value["args"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["args"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Dobot_bringupEnableRobotRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dobot_bringupEnableRobotRequestRead(r)
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
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["args"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupEnableRobotRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/EnableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupEnableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c8f6c4992040b09f377700199904fabb54072d64f267e0ba3084328aa7e5de27",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupEnableRobotResponseSize(Ros1Dobot_bringupEnableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupEnableRobotResponseCapture(value), n = Ros1Dobot_bringupEnableRobotResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupEnableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupEnableRobotResponseRead(r);
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

function Ros1Dobot_bringupEnableRobotResponseSize(value)
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

function Ros1Dobot_bringupEnableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupEnableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupEnableRobotResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetAngleRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetAngleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2546617abf6527da804ece97d489c1d2b15f3f804076f0978ca035000cb36f85",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetAngleRequestSize(Ros1Dobot_bringupGetAngleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetAngleRequestCapture(value), n = Ros1Dobot_bringupGetAngleRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetAngleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetAngleRequestRead(r);
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

function Ros1Dobot_bringupGetAngleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetAngleRequestWrite(value, w)
{
}

function Ros1Dobot_bringupGetAngleRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupGetAngleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/GetAngleResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetAngleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_84a2bdf2c23770ca10b62372141a6000b73ae8a2d644b576a06fd7e77293035c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetAngleResponseSize(Ros1Dobot_bringupGetAngleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetAngleResponseCapture(value), n = Ros1Dobot_bringupGetAngleResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetAngleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetAngleResponseRead(r);
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

function Ros1Dobot_bringupGetAngleResponseSize(value)
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

function Ros1Dobot_bringupGetAngleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetAngleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetAngleResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_35b261250758e2990bfff2b3a4a3e96c320f77db155b94ea4ea8042b0682ff2e",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetCoilsRequestSize(Ros1Dobot_bringupGetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetCoilsRequestCapture(value), n = Ros1Dobot_bringupGetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetCoilsRequestRead(r);
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

function Ros1Dobot_bringupGetCoilsRequestSize(value)
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

function Ros1Dobot_bringupGetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetCoilsRequestRead(r)
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

function Ros1Dobot_bringupGetCoilsRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/GetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc0be6ab7b46ca1fbd08ca5d4fd75ee37a5b388b5aada2c9f6d2f15c8df13b79",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetCoilsResponseSize(Ros1Dobot_bringupGetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetCoilsResponseCapture(value), n = Ros1Dobot_bringupGetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetCoilsResponseRead(r);
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

function Ros1Dobot_bringupGetCoilsResponseSize(value)
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

function Ros1Dobot_bringupGetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetCoilsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetErrorIDRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetErrorIDRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d447f9b359f6546396b350d993222aeea1f928b390f7fcdf2c9d0f627d520976",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetErrorIDRequestSize(Ros1Dobot_bringupGetErrorIDRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetErrorIDRequestCapture(value), n = Ros1Dobot_bringupGetErrorIDRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetErrorIDRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetErrorIDRequestRead(r);
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

function Ros1Dobot_bringupGetErrorIDRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetErrorIDRequestWrite(value, w)
{
}

function Ros1Dobot_bringupGetErrorIDRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupGetErrorIDRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/GetErrorIDResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetErrorIDResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e6069235acae11eadfabed5fd9c9466c5ef27c0f174be883e842493d8c98f15",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "errorID" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetErrorIDResponseSize(Ros1Dobot_bringupGetErrorIDResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetErrorIDResponseCapture(value), n = Ros1Dobot_bringupGetErrorIDResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetErrorIDResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetErrorIDResponseRead(r);
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

function Ros1Dobot_bringupGetErrorIDResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["errorID"]) || value["errorID"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["errorID"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 72)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetErrorIDResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["errorID"].length, true);
    w.at += 4;
    for(const element of value["errorID"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_bringupGetErrorIDResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["errorID"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["errorID"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupGetErrorIDResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["errorID"];
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
        out["errorID"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_800fdfa6b1489a629db168b04df13fd96bd3d8168f53b0810e0ef6f8d4e5e364",
    maxWireBytes : 4176,
    minWireBytes : 16,
    cartesianMaxWireBytes : 4176n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valtype" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetHoldRegsRequestSize(Ros1Dobot_bringupGetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetHoldRegsRequestCapture(value), n = Ros1Dobot_bringupGetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4176, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetHoldRegsRequestRead(r);
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

function Ros1Dobot_bringupGetHoldRegsRequestSize(value)
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
    if(!Array.isArray(value["valtype"]) || value["valtype"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["valtype"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4176)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetHoldRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["valtype"].length, true);
    w.at += 4;
    for(const element of value["valtype"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupGetHoldRegsRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["valtype"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["valtype"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupGetHoldRegsRequestCapture(value)
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
        const field = value["valtype"];
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
        out["valtype"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41d34618b03ef7e49ee5519d20050c667cf64e204ec8e4c4116b065f5b388301",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetHoldRegsResponseSize(Ros1Dobot_bringupGetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetHoldRegsResponseCapture(value), n = Ros1Dobot_bringupGetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetHoldRegsResponseRead(r);
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

function Ros1Dobot_bringupGetHoldRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetHoldRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetInBitsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetInBitsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3bb7becca72d44ad566098fc6a76ff5fdef3f3c52ef278b38faf37c3be4d3ed2",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetInBitsRequestSize(Ros1Dobot_bringupGetInBitsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetInBitsRequestCapture(value), n = Ros1Dobot_bringupGetInBitsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetInBitsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetInBitsRequestRead(r);
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

function Ros1Dobot_bringupGetInBitsRequestSize(value)
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

function Ros1Dobot_bringupGetInBitsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetInBitsRequestRead(r)
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

function Ros1Dobot_bringupGetInBitsRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/GetInBitsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetInBitsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_acd9a1d0238985a87fac498e3f83535c64d6eff4b6e923896c9105d9d0c37bae",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetInBitsResponseSize(Ros1Dobot_bringupGetInBitsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetInBitsResponseCapture(value), n = Ros1Dobot_bringupGetInBitsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetInBitsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetInBitsResponseRead(r);
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

function Ros1Dobot_bringupGetInBitsResponseSize(value)
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

function Ros1Dobot_bringupGetInBitsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetInBitsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetInBitsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetInRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetInRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9bed4567aa6cdf6d02f1b4ed46378bceaa2ccc0c6699dee552de39ab6a6d924b",
    maxWireBytes : 4176,
    minWireBytes : 16,
    cartesianMaxWireBytes : 4176n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetInRegsRequestSize(Ros1Dobot_bringupGetInRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetInRegsRequestCapture(value), n = Ros1Dobot_bringupGetInRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetInRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4176, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetInRegsRequestRead(r);
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

function Ros1Dobot_bringupGetInRegsRequestSize(value)
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
    if(!Array.isArray(value["valType"]) || value["valType"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["valType"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4176)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetInRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["valType"].length, true);
    w.at += 4;
    for(const element of value["valType"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupGetInRegsRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["valType"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["valType"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupGetInRegsRequestCapture(value)
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
        const field = value["valType"];
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
        out["valType"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetInRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetInRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f7f69e7d7eef206ab1318296f737a3294aefb82a72078d6b45326171260e4bc2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetInRegsResponseSize(Ros1Dobot_bringupGetInRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetInRegsResponseCapture(value), n = Ros1Dobot_bringupGetInRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetInRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetInRegsResponseRead(r);
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

function Ros1Dobot_bringupGetInRegsResponseSize(value)
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

function Ros1Dobot_bringupGetInRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetInRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetInRegsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetPathStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetPathStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eeac1255138e30057687e050b574b0817d70b68d350bfe12b45d77cbff506363",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetPathStartPoseRequestSize(Ros1Dobot_bringupGetPathStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetPathStartPoseRequestCapture(value), n = Ros1Dobot_bringupGetPathStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetPathStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetPathStartPoseRequestRead(r);
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

function Ros1Dobot_bringupGetPathStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetPathStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Dobot_bringupGetPathStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetPathStartPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["traceName"];
        out["traceName"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetPathStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetPathStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b7d7f5af83e211f271d5ba502e38a6d8bd46fad22f8e8f130da274981a1a069",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetPathStartPoseResponseSize(Ros1Dobot_bringupGetPathStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetPathStartPoseResponseCapture(value), n = Ros1Dobot_bringupGetPathStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetPathStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetPathStartPoseResponseRead(r);
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

function Ros1Dobot_bringupGetPathStartPoseResponseSize(value)
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

function Ros1Dobot_bringupGetPathStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetPathStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetPathStartPoseResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_025bce42be53ba183254bc0dc65439297c87f2a4fdc2fd861f3e2d642d1ec541",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"user" : [], "tool" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetPoseRequestSize(Ros1Dobot_bringupGetPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetPoseRequestCapture(value), n = Ros1Dobot_bringupGetPoseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetPoseRequestRead(r);
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

function Ros1Dobot_bringupGetPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["user"]) || value["user"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["user"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tool"]) || value["tool"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tool"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetPoseRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["user"].length, true);
    w.at += 4;
    for(const element of value["user"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["tool"].length, true);
    w.at += 4;
    for(const element of value["tool"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_bringupGetPoseRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["user"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["user"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["tool"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["tool"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupGetPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["user"];
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
        out["user"] = values;
    }
    {
        const field = value["tool"];
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
        out["tool"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ddb44853f1e3b6f37e90c4d06d78c289c47188e9612f60226878ef38b55e2696",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetPoseResponseSize(Ros1Dobot_bringupGetPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetPoseResponseCapture(value), n = Ros1Dobot_bringupGetPoseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetPoseResponseRead(r);
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

function Ros1Dobot_bringupGetPoseResponseSize(value)
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

function Ros1Dobot_bringupGetPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetPoseResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetSixForceDataRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetSixForceDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a1cb669ffeccea55f3d0d2598b166e3ac4317c4268b81c27a1e829b96f244298",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetSixForceDataRequestSize(Ros1Dobot_bringupGetSixForceDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetSixForceDataRequestCapture(value), n = Ros1Dobot_bringupGetSixForceDataRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetSixForceDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetSixForceDataRequestRead(r);
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

function Ros1Dobot_bringupGetSixForceDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetSixForceDataRequestWrite(value, w)
{
}

function Ros1Dobot_bringupGetSixForceDataRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupGetSixForceDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/GetSixForceDataResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetSixForceDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_184411501d79e153e2634bbf7328f3fff02180078203d8b5bd5bd77d0fcb3b1d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetSixForceDataResponseSize(Ros1Dobot_bringupGetSixForceDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetSixForceDataResponseCapture(value), n = Ros1Dobot_bringupGetSixForceDataResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetSixForceDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetSixForceDataResponseRead(r);
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

function Ros1Dobot_bringupGetSixForceDataResponseSize(value)
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

function Ros1Dobot_bringupGetSixForceDataResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetSixForceDataResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetSixForceDataResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetTerminal485Request codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetTerminal485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_298f03b6d54aa27f605bf41a2dc9a7a8229fd0b692688da54eeec227afb712fd",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetTerminal485RequestSize(Ros1Dobot_bringupGetTerminal485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetTerminal485RequestCapture(value), n = Ros1Dobot_bringupGetTerminal485RequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetTerminal485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetTerminal485RequestRead(r);
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

function Ros1Dobot_bringupGetTerminal485RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetTerminal485RequestWrite(value, w)
{
}

function Ros1Dobot_bringupGetTerminal485RequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupGetTerminal485RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/GetTerminal485Response codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetTerminal485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4813a10a2f80aa614e4cda21b81002cbb8721804e07109ed209969945b702779",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetTerminal485ResponseSize(Ros1Dobot_bringupGetTerminal485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetTerminal485ResponseCapture(value), n = Ros1Dobot_bringupGetTerminal485ResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetTerminal485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetTerminal485ResponseRead(r);
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

function Ros1Dobot_bringupGetTerminal485ResponseSize(value)
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

function Ros1Dobot_bringupGetTerminal485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetTerminal485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetTerminal485ResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/GetTraceStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetTraceStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a3e89eb5ade3cb2e2ea39e9f91b4e4e0ccf07405fdc3e2d59e7d57c2d9e7cb9",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetTraceStartPoseRequestSize(Ros1Dobot_bringupGetTraceStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetTraceStartPoseRequestCapture(value), n = Ros1Dobot_bringupGetTraceStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetTraceStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetTraceStartPoseRequestRead(r);
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

function Ros1Dobot_bringupGetTraceStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupGetTraceStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Dobot_bringupGetTraceStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetTraceStartPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["traceName"];
        out["traceName"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/GetTraceStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupGetTraceStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ced9e3f9fccc6fc35ee90f70c4a3a40544136feefe21a513a244d8dc0aa04fcf",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupGetTraceStartPoseResponseSize(Ros1Dobot_bringupGetTraceStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupGetTraceStartPoseResponseCapture(value), n = Ros1Dobot_bringupGetTraceStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupGetTraceStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupGetTraceStartPoseResponseRead(r);
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

function Ros1Dobot_bringupGetTraceStartPoseResponseSize(value)
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

function Ros1Dobot_bringupGetTraceStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupGetTraceStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupGetTraceStartPoseResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/HandleTrajPointsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupHandleTrajPointsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2848aee3496e82c75a18c7c9dead4754d9bcfe5beb29311a1a09a3d9d83cf578",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupHandleTrajPointsRequestSize(Ros1Dobot_bringupHandleTrajPointsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupHandleTrajPointsRequestCapture(value), n = Ros1Dobot_bringupHandleTrajPointsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupHandleTrajPointsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupHandleTrajPointsRequestRead(r);
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

function Ros1Dobot_bringupHandleTrajPointsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupHandleTrajPointsRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Dobot_bringupHandleTrajPointsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupHandleTrajPointsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["traceName"];
        out["traceName"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/HandleTrajPointsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupHandleTrajPointsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45f7bf8391e5b54fce96fc80f93cf3aed773115cc14bb013fa5e3b8d43e7d05c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupHandleTrajPointsResponseSize(Ros1Dobot_bringupHandleTrajPointsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupHandleTrajPointsResponseCapture(value), n = Ros1Dobot_bringupHandleTrajPointsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupHandleTrajPointsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupHandleTrajPointsResponseRead(r);
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

function Ros1Dobot_bringupHandleTrajPointsResponseSize(value)
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

function Ros1Dobot_bringupHandleTrajPointsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupHandleTrajPointsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupHandleTrajPointsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/InverseSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupInverseSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e8ec17af46a8beb1b8d825ce350560a00a2455ecbc7605917d62edcb51c5ed18",
    maxWireBytes : 320,
    minWireBytes : 64,
    cartesianMaxWireBytes : 320n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "offset1" : 0,
            "offset2" : 0,
            "offset3" : 0,
            "offset4" : 0,
            "offset5" : 0,
            "offset6" : 0,
            "user" : 0,
            "tool" : 0,
            "isJointNear" : 0,
            "JointNear" : ""
        };
    },
    validateValue(value) {
        Ros1Dobot_bringupInverseSolutionRequestSize(Ros1Dobot_bringupInverseSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupInverseSolutionRequestCapture(value), n = Ros1Dobot_bringupInverseSolutionRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupInverseSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 320, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupInverseSolutionRequestRead(r);
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

function Ros1Dobot_bringupInverseSolutionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    integer(value["isJointNear"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["JointNear"], 256).length);
    if(n > 320)
        bad(90);
    return n;
}

function Ros1Dobot_bringupInverseSolutionRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["isJointNear"], true);
    w.at += 4;
    w.text(value["JointNear"], 256);
}

function Ros1Dobot_bringupInverseSolutionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
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
        value["isJointNear"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["JointNear"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupInverseSolutionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
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
        const field = value["isJointNear"];
        out["isJointNear"] = field;
    }
    {
        const field = value["JointNear"];
        out["JointNear"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/InverseSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupInverseSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_10c5f17f9346659de18bbabbadbe455cfa729d74264004f0ebe6edc4dc30658f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupInverseSolutionResponseSize(Ros1Dobot_bringupInverseSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupInverseSolutionResponseCapture(value), n = Ros1Dobot_bringupInverseSolutionResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupInverseSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupInverseSolutionResponseRead(r);
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

function Ros1Dobot_bringupInverseSolutionResponseSize(value)
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

function Ros1Dobot_bringupInverseSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupInverseSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupInverseSolutionResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/JointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupJointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2aada30efe661e8b57ecc0dedea12e5b30703530ad505b223bf9ab9c0763412c",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"j1" : 0, "j2" : 0, "j3" : 0, "j4" : 0, "j5" : 0, "j6" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupJointMovJRequestSize(Ros1Dobot_bringupJointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupJointMovJRequestCapture(value), n = Ros1Dobot_bringupJointMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupJointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupJointMovJRequestRead(r);
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

function Ros1Dobot_bringupJointMovJRequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupJointMovJRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupJointMovJRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupJointMovJRequestCapture(value)
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/JointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupJointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51b50f481a2eb220df2c3e04755fdc6bf5443d31b1225557747ca4f82d70166c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupJointMovJResponseSize(Ros1Dobot_bringupJointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupJointMovJResponseCapture(value), n = Ros1Dobot_bringupJointMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupJointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupJointMovJResponseRead(r);
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

function Ros1Dobot_bringupJointMovJResponseSize(value)
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

function Ros1Dobot_bringupJointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupJointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupJointMovJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/JumpRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupJumpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7c4f0702492f900e97e5aee203e294b9de7750846ecaf7973e1e86d494cec2b",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupJumpRequestSize(Ros1Dobot_bringupJumpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupJumpRequestCapture(value), n = Ros1Dobot_bringupJumpRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupJumpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupJumpRequestRead(r);
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

function Ros1Dobot_bringupJumpRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dobot_bringupJumpRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
}

function Ros1Dobot_bringupJumpRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupJumpRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/JumpResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupJumpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e8b42ba83c27ba738767c6a3aff68636a8508efa21db63f32922bb50023f549",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupJumpResponseSize(Ros1Dobot_bringupJumpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupJumpResponseCapture(value), n = Ros1Dobot_bringupJumpResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupJumpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupJumpResponseRead(r);
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

function Ros1Dobot_bringupJumpResponseSize(value)
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

function Ros1Dobot_bringupJumpResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupJumpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupJumpResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/LimZRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupLimZRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_760f331cb5a4d17e32310035606466e7b04b628152017d57fc9f6dc77b38447f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupLimZRequestSize(Ros1Dobot_bringupLimZRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupLimZRequestCapture(value), n = Ros1Dobot_bringupLimZRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupLimZRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupLimZRequestRead(r);
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

function Ros1Dobot_bringupLimZRequestSize(value)
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

function Ros1Dobot_bringupLimZRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_bringupLimZRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupLimZRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/LimZResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupLimZResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_14a2dff05f9dca0f0933e9358cf155e71a5c2454d1e60f9ade481f784f9f126b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupLimZResponseSize(Ros1Dobot_bringupLimZResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupLimZResponseCapture(value), n = Ros1Dobot_bringupLimZResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupLimZResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupLimZResponseRead(r);
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

function Ros1Dobot_bringupLimZResponseSize(value)
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

function Ros1Dobot_bringupLimZResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupLimZResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupLimZResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/LoadSwitchRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupLoadSwitchRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e28aad033d188565799b9b8cc00b2047d3e040e85d86b9d5bb8cfa44fb7d95ac",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupLoadSwitchRequestSize(Ros1Dobot_bringupLoadSwitchRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupLoadSwitchRequestCapture(value), n = Ros1Dobot_bringupLoadSwitchRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupLoadSwitchRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupLoadSwitchRequestRead(r);
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

function Ros1Dobot_bringupLoadSwitchRequestSize(value)
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

function Ros1Dobot_bringupLoadSwitchRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupLoadSwitchRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupLoadSwitchRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/LoadSwitchResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupLoadSwitchResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ee2761100a9f6763a906aaae51a6343c7f098d1f05c5b2afa32c6237c7e8cbe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupLoadSwitchResponseSize(Ros1Dobot_bringupLoadSwitchResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupLoadSwitchResponseCapture(value), n = Ros1Dobot_bringupLoadSwitchResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupLoadSwitchResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupLoadSwitchResponseRead(r);
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

function Ros1Dobot_bringupLoadSwitchResponseSize(value)
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

function Ros1Dobot_bringupLoadSwitchResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupLoadSwitchResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupLoadSwitchResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ModbusCloseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupModbusCloseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e54128af606780d1408abafad70bb37fec4bf75313413b9d35098ecf32ead7fa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupModbusCloseRequestSize(Ros1Dobot_bringupModbusCloseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupModbusCloseRequestCapture(value), n = Ros1Dobot_bringupModbusCloseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupModbusCloseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupModbusCloseRequestRead(r);
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

function Ros1Dobot_bringupModbusCloseRequestSize(value)
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

function Ros1Dobot_bringupModbusCloseRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupModbusCloseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupModbusCloseRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ModbusCloseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupModbusCloseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_37372c64022657c99622a2e15fb8d05dbcf4b5d4d3def0b170842343c728b5c3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupModbusCloseResponseSize(Ros1Dobot_bringupModbusCloseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupModbusCloseResponseCapture(value), n = Ros1Dobot_bringupModbusCloseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupModbusCloseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupModbusCloseResponseRead(r);
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

function Ros1Dobot_bringupModbusCloseResponseSize(value)
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

function Ros1Dobot_bringupModbusCloseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupModbusCloseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupModbusCloseResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ModbusCreateRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupModbusCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fdbd5da898506935d31be593a4e3549a3c528c3d68ff29875d6f06b589790b2d",
    maxWireBytes : 336,
    minWireBytes : 16,
    cartesianMaxWireBytes : 336n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : "", "port" : 0, "slave_id" : 0, "is_rtu" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupModbusCreateRequestSize(Ros1Dobot_bringupModbusCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupModbusCreateRequestCapture(value), n = Ros1Dobot_bringupModbusCreateRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupModbusCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 336, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupModbusCreateRequestRead(r);
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

function Ros1Dobot_bringupModbusCreateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["slave_id"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["is_rtu"]) || value["is_rtu"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["is_rtu"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 336)
        bad(90);
    return n;
}

function Ros1Dobot_bringupModbusCreateRequestWrite(value, w)
{
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["is_rtu"].length, true);
    w.at += 4;
    for(const element of value["is_rtu"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_bringupModbusCreateRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["is_rtu"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["is_rtu"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupModbusCreateRequestCapture(value)
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
        out["is_rtu"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ModbusCreateResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupModbusCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91ce4a52e69ed27977f8edc3d2bab68ded6fae45074906e9232e042481ba417f",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupModbusCreateResponseSize(Ros1Dobot_bringupModbusCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupModbusCreateResponseCapture(value), n = Ros1Dobot_bringupModbusCreateResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupModbusCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupModbusCreateResponseRead(r);
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

function Ros1Dobot_bringupModbusCreateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupModbusCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupModbusCreateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupModbusCreateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["index"];
        out["index"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5eb13b367f355ac8368e61572da8b80eba62e5361f739a99ed62a4cd4a79f4e",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJRequestSize(Ros1Dobot_bringupMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJRequestCapture(value), n = Ros1Dobot_bringupMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJRequestRead(r);
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

function Ros1Dobot_bringupMovJRequestSize(value)
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
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMovJRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMovJRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMovJRequestCapture(value)
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48c51c39fce08dcb92b28b150f546a488bbb228dcc3bced709dffe67155a5bdf",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJResponseSize(Ros1Dobot_bringupMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJResponseCapture(value), n = Ros1Dobot_bringupMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJResponseRead(r);
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

function Ros1Dobot_bringupMovJResponseSize(value)
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

function Ros1Dobot_bringupMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMovJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/MovJExtRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJExtRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91fca59f884c1c4db96c4b39260de4b6655c1a506422dd42c6955c2bdf8dcca1",
    maxWireBytes : 4172,
    minWireBytes : 12,
    cartesianMaxWireBytes : 4172n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJExtRequestSize(Ros1Dobot_bringupMovJExtRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJExtRequestCapture(value), n = Ros1Dobot_bringupMovJExtRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJExtRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4172, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJExtRequestRead(r);
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

function Ros1Dobot_bringupMovJExtRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset"] !== "number" || !Number.isFinite(value["offset"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4172)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMovJExtRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMovJExtRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMovJExtRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset"];
        out["offset"] = field;
    }
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovJExtResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJExtResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e7863d2a76b91a515043a4c44d34753a25ed9f14e8d9e49ba223908dccf9f77",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJExtResponseSize(Ros1Dobot_bringupMovJExtResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJExtResponseCapture(value), n = Ros1Dobot_bringupMovJExtResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJExtResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJExtResponseRead(r);
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

function Ros1Dobot_bringupMovJExtResponseSize(value)
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

function Ros1Dobot_bringupMovJExtResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMovJExtResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMovJExtResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/MovJIORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1095eb0d3a8e2e3d8e75c13d00f96114e372ed87449772b1560b50015b6984dc",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJIORequestSize(Ros1Dobot_bringupMovJIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJIORequestCapture(value), n = Ros1Dobot_bringupMovJIORequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJIORequestRead(r);
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

function Ros1Dobot_bringupMovJIORequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMovJIORequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMovJIORequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMovJIORequestCapture(value)
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovJIOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovJIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a004faa73bc67c133087e14e11003d8fdb56f48c025c196986be3939719a5fca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovJIOResponseSize(Ros1Dobot_bringupMovJIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovJIOResponseCapture(value), n = Ros1Dobot_bringupMovJIOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovJIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovJIOResponseRead(r);
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

function Ros1Dobot_bringupMovJIOResponseSize(value)
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

function Ros1Dobot_bringupMovJIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMovJIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMovJIOResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/MovLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fd3a6a1c387cdde2f2da8eb8cce8bf5ef7ac60b8a45cc4fa3a1e64f01ed52c2d",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovLRequestSize(Ros1Dobot_bringupMovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovLRequestCapture(value), n = Ros1Dobot_bringupMovLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovLRequestRead(r);
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

function Ros1Dobot_bringupMovLRequestSize(value)
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
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMovLRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMovLRequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMovLRequestCapture(value)
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_362cd26155c97a3dad48da79b105272e3a54f22b1f50978ee4883f427986aad3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovLResponseSize(Ros1Dobot_bringupMovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovLResponseCapture(value), n = Ros1Dobot_bringupMovLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovLResponseRead(r);
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

function Ros1Dobot_bringupMovLResponseSize(value)
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

function Ros1Dobot_bringupMovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMovLResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/MovLIORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovLIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f9dc72d4456c6c4febd922b41d8ed68b7d402741911abef356ee2de12e43e0bb",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovLIORequestSize(Ros1Dobot_bringupMovLIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovLIORequestCapture(value), n = Ros1Dobot_bringupMovLIORequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovLIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovLIORequestRead(r);
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

function Ros1Dobot_bringupMovLIORequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMovLIORequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMovLIORequestRead(r)
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
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMovLIORequestCapture(value)
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
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MovLIOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMovLIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_433c70d71f2a6df46140ba0937a8de9d9e382cc86ca2db6a85ebed4d4476fc54",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMovLIOResponseSize(Ros1Dobot_bringupMovLIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMovLIOResponseCapture(value), n = Ros1Dobot_bringupMovLIOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMovLIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMovLIOResponseRead(r);
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

function Ros1Dobot_bringupMovLIOResponseSize(value)
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

function Ros1Dobot_bringupMovLIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMovLIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMovLIOResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/MoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f6b61799b2b1a2925f9b3581c69acea68ab5bf8e7cb34040bbe899249571ecf6",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupMoveJogRequestSize(Ros1Dobot_bringupMoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMoveJogRequestCapture(value), n = Ros1Dobot_bringupMoveJogRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMoveJogRequestRead(r);
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

function Ros1Dobot_bringupMoveJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["axisID"], 256).length);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4424)
        bad(90);
    return n;
}

function Ros1Dobot_bringupMoveJogRequestWrite(value, w)
{
    w.text(value["axisID"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupMoveJogRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["axisID"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupMoveJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axisID"];
        out["axisID"] = field;
    }
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/MoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupMoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b920c29d6e337fdf0c464c76e1d6a65d367f2ed89d20159c54a06b28721652c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupMoveJogResponseSize(Ros1Dobot_bringupMoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupMoveJogResponseCapture(value), n = Ros1Dobot_bringupMoveJogResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupMoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupMoveJogResponseRead(r);
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

function Ros1Dobot_bringupMoveJogResponseSize(value)
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

function Ros1Dobot_bringupMoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupMoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupMoveJogResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/PauseScriptRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPauseScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0515897101fed91dc0d0be12c7e792478604c83e54e377568542944fa66d23b7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupPauseScriptRequestSize(Ros1Dobot_bringupPauseScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPauseScriptRequestCapture(value), n = Ros1Dobot_bringupPauseScriptRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPauseScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPauseScriptRequestRead(r);
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

function Ros1Dobot_bringupPauseScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupPauseScriptRequestWrite(value, w)
{
}

function Ros1Dobot_bringupPauseScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupPauseScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/PauseScriptResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPauseScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2bee6a114025d88d91f794c68478a44bc2a20a3e65e9456eae75d39640cf32c0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPauseScriptResponseSize(Ros1Dobot_bringupPauseScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPauseScriptResponseCapture(value), n = Ros1Dobot_bringupPauseScriptResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPauseScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPauseScriptResponseRead(r);
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

function Ros1Dobot_bringupPauseScriptResponseSize(value)
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

function Ros1Dobot_bringupPauseScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPauseScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPauseScriptResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/PayLoadRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPayLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_535f1e2c2c83a98b3572649905c96964c7ebc4ac7458292c4209f974188f29fd",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"weight" : 0, "inertia" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPayLoadRequestSize(Ros1Dobot_bringupPayLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPayLoadRequestCapture(value), n = Ros1Dobot_bringupPayLoadRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPayLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPayLoadRequestRead(r);
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

function Ros1Dobot_bringupPayLoadRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["weight"] !== "number" || !Number.isFinite(value["weight"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["inertia"] !== "number" || !Number.isFinite(value["inertia"]))
        bad();
    n = addSize(n, 8);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Dobot_bringupPayLoadRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["weight"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["inertia"], true);
    w.at += 8;
}

function Ros1Dobot_bringupPayLoadRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["weight"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["inertia"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPayLoadRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["weight"];
        out["weight"] = field;
    }
    {
        const field = value["inertia"];
        out["inertia"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/PayLoadResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPayLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1d1b56d5b9d2191cf344b2b7cf721fff6a4303ad3aa4901f5c091111ad63b71",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPayLoadResponseSize(Ros1Dobot_bringupPayLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPayLoadResponseCapture(value), n = Ros1Dobot_bringupPayLoadResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPayLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPayLoadResponseRead(r);
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

function Ros1Dobot_bringupPayLoadResponseSize(value)
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

function Ros1Dobot_bringupPayLoadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPayLoadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPayLoadResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/PositiveSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPositiveSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c7f95fe8314cf60c3b9d9b3066c80a8da6070a7df2f31184d524344e8a9ac466",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "user" : 0, "tool" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPositiveSolutionRequestSize(Ros1Dobot_bringupPositiveSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPositiveSolutionRequestCapture(value), n = Ros1Dobot_bringupPositiveSolutionRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPositiveSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPositiveSolutionRequestRead(r);
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

function Ros1Dobot_bringupPositiveSolutionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Dobot_bringupPositiveSolutionRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPositiveSolutionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
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

function Ros1Dobot_bringupPositiveSolutionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
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

/** Complete ROS1 dobot_bringup/PositiveSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPositiveSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eec24219ce537eb24bd619942dd63c5f53a1afcf3aabeb10e508852aaf0ee535",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPositiveSolutionResponseSize(Ros1Dobot_bringupPositiveSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPositiveSolutionResponseCapture(value), n = Ros1Dobot_bringupPositiveSolutionResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPositiveSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPositiveSolutionResponseRead(r);
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

function Ros1Dobot_bringupPositiveSolutionResponseSize(value)
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

function Ros1Dobot_bringupPositiveSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPositiveSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPositiveSolutionResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/PowerOnRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPowerOnRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1b1a3b4bd2a39d5e4ae58a1b4327af7ea8033facbd728fdf967406396b1f0b7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupPowerOnRequestSize(Ros1Dobot_bringupPowerOnRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPowerOnRequestCapture(value), n = Ros1Dobot_bringupPowerOnRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPowerOnRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPowerOnRequestRead(r);
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

function Ros1Dobot_bringupPowerOnRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupPowerOnRequestWrite(value, w)
{
}

function Ros1Dobot_bringupPowerOnRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupPowerOnRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/PowerOnResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPowerOnResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fbb473d54d04cc853b531daa9657018737874bff18de8b13637794fe178a9c88",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPowerOnResponseSize(Ros1Dobot_bringupPowerOnResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPowerOnResponseCapture(value), n = Ros1Dobot_bringupPowerOnResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPowerOnResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPowerOnResponseRead(r);
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

function Ros1Dobot_bringupPowerOnResponseSize(value)
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

function Ros1Dobot_bringupPowerOnResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPowerOnResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPowerOnResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelJointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelJointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99e2b4e1af44dfc16cd689b144ed6a49de27164cc9b00c0da3d73e9908d0e9e6",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelJointMovJRequestSize(Ros1Dobot_bringupRelJointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelJointMovJRequestCapture(value), n = Ros1Dobot_bringupRelJointMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelJointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelJointMovJRequestRead(r);
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

function Ros1Dobot_bringupRelJointMovJRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4212)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelJointMovJRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupRelJointMovJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupRelJointMovJRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
    }
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelJointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelJointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_744c38052c9d8d6027746967dcf8f1924344eeddd3287320237476ad27fd930d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelJointMovJResponseSize(Ros1Dobot_bringupRelJointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelJointMovJResponseCapture(value), n = Ros1Dobot_bringupRelJointMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelJointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelJointMovJResponseRead(r);
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

function Ros1Dobot_bringupRelJointMovJResponseSize(value)
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

function Ros1Dobot_bringupRelJointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelJointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelJointMovJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1947325988ffb928f24fa3a714e1becd9f1fbc5f66e7110179bda067b3ca4776",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJRequestSize(Ros1Dobot_bringupRelMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJRequestCapture(value), n = Ros1Dobot_bringupRelMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJRequestRead(r);
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

function Ros1Dobot_bringupRelMovJRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovJRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
}

function Ros1Dobot_bringupRelMovJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovJRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaa103b9f4c61702145d348c8763329deb4be9d0f010bf5cca0431d1d97ffea2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJResponseSize(Ros1Dobot_bringupRelMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJResponseCapture(value), n = Ros1Dobot_bringupRelMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJResponseRead(r);
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

function Ros1Dobot_bringupRelMovJResponseSize(value)
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

function Ros1Dobot_bringupRelMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovJToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ea1454d38ebe4cb9d30d018079ce142bbaa1010d2ea321763b37dc47db5d783",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "tool" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJToolRequestSize(Ros1Dobot_bringupRelMovJToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJToolRequestCapture(value), n = Ros1Dobot_bringupRelMovJToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJToolRequestRead(r);
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

function Ros1Dobot_bringupRelMovJToolRequestSize(value)
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
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4216)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovJToolRequestWrite(value, w)
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
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupRelMovJToolRequestRead(r)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupRelMovJToolRequestCapture(value)
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
        const field = value["tool"];
        out["tool"] = field;
    }
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovJToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9b9aa05571fab18d37f0fca3adef2497ee315e3a9c146878aaa7746eacf770d0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJToolResponseSize(Ros1Dobot_bringupRelMovJToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJToolResponseCapture(value), n = Ros1Dobot_bringupRelMovJToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJToolResponseRead(r);
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

function Ros1Dobot_bringupRelMovJToolResponseSize(value)
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

function Ros1Dobot_bringupRelMovJToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovJToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovJToolResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovJUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e6780787473801ef6ae69c160e9df61c9bf10941a47dd9c102e2c7003ca14f63",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "user" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJUserRequestSize(Ros1Dobot_bringupRelMovJUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJUserRequestCapture(value), n = Ros1Dobot_bringupRelMovJUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJUserRequestRead(r);
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

function Ros1Dobot_bringupRelMovJUserRequestSize(value)
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
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4216)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovJUserRequestWrite(value, w)
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
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupRelMovJUserRequestRead(r)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupRelMovJUserRequestCapture(value)
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
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovJUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovJUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_20448df974bf51cd04f80e2ed5c819f4f2f9740b6d919e656fe3a18c2a87efc1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovJUserResponseSize(Ros1Dobot_bringupRelMovJUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovJUserResponseCapture(value), n = Ros1Dobot_bringupRelMovJUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovJUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovJUserResponseRead(r);
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

function Ros1Dobot_bringupRelMovJUserResponseSize(value)
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

function Ros1Dobot_bringupRelMovJUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovJUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovJUserResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ebf192c073879d1900d884545f9c91fc54ece1c42220f77493217f02b00cadf6",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLRequestSize(Ros1Dobot_bringupRelMovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLRequestCapture(value), n = Ros1Dobot_bringupRelMovLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLRequestRead(r);
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

function Ros1Dobot_bringupRelMovLRequestSize(value)
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
    if(n > 24)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovLRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Dobot_bringupRelMovLRequestRead(r)
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
    return value;
}

function Ros1Dobot_bringupRelMovLRequestCapture(value)
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
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67d62b01e54f7df98e5209f948d3d45610e3bf3853a4fc04ca458cb30ea42e88",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLResponseSize(Ros1Dobot_bringupRelMovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLResponseCapture(value), n = Ros1Dobot_bringupRelMovLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLResponseRead(r);
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

function Ros1Dobot_bringupRelMovLResponseSize(value)
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

function Ros1Dobot_bringupRelMovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovLResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovLToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9318cd6154f2cc90d20d188cb1aa38ac2f160b75bb3b0d13f1a78326ac40ad9d",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "tool" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLToolRequestSize(Ros1Dobot_bringupRelMovLToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLToolRequestCapture(value), n = Ros1Dobot_bringupRelMovLToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLToolRequestRead(r);
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

function Ros1Dobot_bringupRelMovLToolRequestSize(value)
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
    integer(value["tool"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4216)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovLToolRequestWrite(value, w)
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
    w.v.setInt32(w.at, value["tool"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupRelMovLToolRequestRead(r)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["tool"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupRelMovLToolRequestCapture(value)
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
        const field = value["tool"];
        out["tool"] = field;
    }
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovLToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e5837f832c42d29b74a9a2536ab80b94f1087972685da74e021edd315bf5bec",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLToolResponseSize(Ros1Dobot_bringupRelMovLToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLToolResponseCapture(value), n = Ros1Dobot_bringupRelMovLToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLToolResponseRead(r);
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

function Ros1Dobot_bringupRelMovLToolResponseSize(value)
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

function Ros1Dobot_bringupRelMovLToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovLToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovLToolResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RelMovLUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03e9b9ec0fb14fcdb1b52404a78d29c4f952d296aa1ccf209ee257abed479b61",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "user" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLUserRequestSize(Ros1Dobot_bringupRelMovLUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLUserRequestCapture(value), n = Ros1Dobot_bringupRelMovLUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLUserRequestRead(r);
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

function Ros1Dobot_bringupRelMovLUserRequestSize(value)
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
    integer(value["user"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4216)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRelMovLUserRequestWrite(value, w)
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
    w.v.setInt32(w.at, value["user"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupRelMovLUserRequestRead(r)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["user"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["paramValue"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["paramValue"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupRelMovLUserRequestCapture(value)
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
    {
        const field = value["paramValue"];
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
        out["paramValue"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RelMovLUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRelMovLUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0e9fcdd28f7e8fb3f4cd2c6398d9b2cde483028f5c24c43336ae032f9fad24d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRelMovLUserResponseSize(Ros1Dobot_bringupRelMovLUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRelMovLUserResponseCapture(value), n = Ros1Dobot_bringupRelMovLUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRelMovLUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRelMovLUserResponseRead(r);
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

function Ros1Dobot_bringupRelMovLUserResponseSize(value)
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

function Ros1Dobot_bringupRelMovLUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRelMovLUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRelMovLUserResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ResetRobotRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupResetRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64b2cfe8bd1c6b646e7bb126f681f6ba917466a1403ed0d04f0c900c1066e46c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupResetRobotRequestSize(Ros1Dobot_bringupResetRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupResetRobotRequestCapture(value), n = Ros1Dobot_bringupResetRobotRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupResetRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupResetRobotRequestRead(r);
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

function Ros1Dobot_bringupResetRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupResetRobotRequestWrite(value, w)
{
}

function Ros1Dobot_bringupResetRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupResetRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/ResetRobotResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupResetRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0982186f56a3d0956566915e33ce268845367d7dadeaea8a07acbd737e63181a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupResetRobotResponseSize(Ros1Dobot_bringupResetRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupResetRobotResponseCapture(value), n = Ros1Dobot_bringupResetRobotResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupResetRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupResetRobotResponseRead(r);
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

function Ros1Dobot_bringupResetRobotResponseSize(value)
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

function Ros1Dobot_bringupResetRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupResetRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupResetRobotResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/RobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a53406f3fb93ae98bd17673cd8215d0112537faff604d49c74bc4f517e16c5d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupRobotModeRequestSize(Ros1Dobot_bringupRobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRobotModeRequestCapture(value), n = Ros1Dobot_bringupRobotModeRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRobotModeRequestRead(r);
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

function Ros1Dobot_bringupRobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRobotModeRequestWrite(value, w)
{
}

function Ros1Dobot_bringupRobotModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupRobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/RobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68b34eb2c4fe7e7cacb6055a4259fcf5776ad4a28013281a3e9cf19521908d5c",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRobotModeResponseSize(Ros1Dobot_bringupRobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRobotModeResponseCapture(value), n = Ros1Dobot_bringupRobotModeResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRobotModeResponseRead(r);
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

function Ros1Dobot_bringupRobotModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 4, true);
    n = addSize(n, 4);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRobotModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRobotModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRobotModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RunScriptRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRunScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_616fc1d43590d9935733cd8de381585d170a01cf3a9e7972136a31783d49a29f",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"projectName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupRunScriptRequestSize(Ros1Dobot_bringupRunScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRunScriptRequestCapture(value), n = Ros1Dobot_bringupRunScriptRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRunScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRunScriptRequestRead(r);
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

function Ros1Dobot_bringupRunScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["projectName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupRunScriptRequestWrite(value, w)
{
    w.text(value["projectName"], 256);
}

function Ros1Dobot_bringupRunScriptRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["projectName"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRunScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["projectName"];
        out["projectName"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/RunScriptResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupRunScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3940b9344c72e35651072e75ca4c3839c0bd420fb741938402e95ad627cbf45c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupRunScriptResponseSize(Ros1Dobot_bringupRunScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupRunScriptResponseCapture(value), n = Ros1Dobot_bringupRunScriptResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupRunScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupRunScriptResponseRead(r);
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

function Ros1Dobot_bringupRunScriptResponseSize(value)
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

function Ros1Dobot_bringupRunScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupRunScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupRunScriptResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ServoJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89edbee19c86acd41f4cac814ac40e09262a17bd96ad1b697c0ffdecc69f20e2",
    maxWireBytes : 444,
    minWireBytes : 60,
    cartesianMaxWireBytes : 444n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "t" : [], "lookahead_time" : [], "gain" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoJRequestSize(Ros1Dobot_bringupServoJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoJRequestCapture(value), n = Ros1Dobot_bringupServoJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 444, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoJRequestRead(r);
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

function Ros1Dobot_bringupServoJRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["offset1"] !== "number" || !Number.isFinite(value["offset1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset2"] !== "number" || !Number.isFinite(value["offset2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset3"] !== "number" || !Number.isFinite(value["offset3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset4"] !== "number" || !Number.isFinite(value["offset4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset5"] !== "number" || !Number.isFinite(value["offset5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["offset6"] !== "number" || !Number.isFinite(value["offset6"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["t"]) || value["t"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["t"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["lookahead_time"]) || value["lookahead_time"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["lookahead_time"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["gain"]) || value["gain"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["gain"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 444)
        bad(90);
    return n;
}

function Ros1Dobot_bringupServoJRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["offset1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["offset6"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["t"].length, true);
    w.at += 4;
    for(const element of value["t"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["lookahead_time"].length, true);
    w.at += 4;
    for(const element of value["lookahead_time"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["gain"].length, true);
    w.at += 4;
    for(const element of value["gain"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dobot_bringupServoJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["offset6"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["t"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["t"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["lookahead_time"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["lookahead_time"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["gain"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["gain"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupServoJRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset1"];
        out["offset1"] = field;
    }
    {
        const field = value["offset2"];
        out["offset2"] = field;
    }
    {
        const field = value["offset3"];
        out["offset3"] = field;
    }
    {
        const field = value["offset4"];
        out["offset4"] = field;
    }
    {
        const field = value["offset5"];
        out["offset5"] = field;
    }
    {
        const field = value["offset6"];
        out["offset6"] = field;
    }
    {
        const field = value["t"];
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
        out["t"] = values;
    }
    {
        const field = value["lookahead_time"];
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
        out["lookahead_time"] = values;
    }
    {
        const field = value["gain"];
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
        out["gain"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ServoJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ec56aaaeec2ef71903513b001fd2a11d183cfa6eca330256d3adc5df58da301",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoJResponseSize(Ros1Dobot_bringupServoJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoJResponseCapture(value), n = Ros1Dobot_bringupServoJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoJResponseRead(r);
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

function Ros1Dobot_bringupServoJResponseSize(value)
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

function Ros1Dobot_bringupServoJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupServoJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupServoJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ServoJParamRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoJParamRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b2ef76c800c3d483dca43cbe981ed2dd10a7c8a6806051e08b72c83209bc98f",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trajectory_duration" : 0, "t" : 0, "lookahead_time" : 0, "gain" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoJParamRequestSize(Ros1Dobot_bringupServoJParamRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoJParamRequestCapture(value), n = Ros1Dobot_bringupServoJParamRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoJParamRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoJParamRequestRead(r);
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

function Ros1Dobot_bringupServoJParamRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["trajectory_duration"] !== "number" || !Number.isFinite(value["trajectory_duration"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["t"] !== "number" || !Number.isFinite(value["t"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["lookahead_time"] !== "number" || !Number.isFinite(value["lookahead_time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["gain"] !== "number" || !Number.isFinite(value["gain"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Dobot_bringupServoJParamRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["trajectory_duration"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["t"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["lookahead_time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["gain"], true);
    w.at += 8;
}

function Ros1Dobot_bringupServoJParamRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["trajectory_duration"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["t"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["lookahead_time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["gain"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupServoJParamRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trajectory_duration"];
        out["trajectory_duration"] = field;
    }
    {
        const field = value["t"];
        out["t"] = field;
    }
    {
        const field = value["lookahead_time"];
        out["lookahead_time"] = field;
    }
    {
        const field = value["gain"];
        out["gain"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ServoJParamResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoJParamResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_06226db8595d10cc98203d618d19f9f21a647c198f30c80247f996a17da5c466",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoJParamResponseSize(Ros1Dobot_bringupServoJParamResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoJParamResponseCapture(value), n = Ros1Dobot_bringupServoJParamResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoJParamResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoJParamResponseRead(r);
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

function Ros1Dobot_bringupServoJParamResponseSize(value)
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

function Ros1Dobot_bringupServoJParamResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupServoJParamResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupServoJParamResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ServoPRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03eca79138b155d8fbef7d31479f1db91d3044efd354cbb2220f8158453df94e",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoPRequestSize(Ros1Dobot_bringupServoPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoPRequestCapture(value), n = Ros1Dobot_bringupServoPRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoPRequestRead(r);
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

function Ros1Dobot_bringupServoPRequestSize(value)
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
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["c"] !== "number" || !Number.isFinite(value["c"]))
        bad();
    n = addSize(n, 8);
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dobot_bringupServoPRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["a"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["b"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["c"], true);
    w.at += 8;
}

function Ros1Dobot_bringupServoPRequestRead(r)
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
    return value;
}

function Ros1Dobot_bringupServoPRequestCapture(value)
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
    return out;
}

/** Complete ROS1 dobot_bringup/ServoPResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupServoPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3878a67e350ae73e7c02104a8fc010d8837c1f0b99cb5ca121d5fea37dea0d6b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupServoPResponseSize(Ros1Dobot_bringupServoPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupServoPResponseCapture(value), n = Ros1Dobot_bringupServoPResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupServoPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupServoPResponseRead(r);
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

function Ros1Dobot_bringupServoPResponseSize(value)
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

function Ros1Dobot_bringupServoPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupServoPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupServoPResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetArmOrientationRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetArmOrientationRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_411ea8eea1cb7f7bb5693a95b8657a3e60eafb3dcf82838c36232f72ae886e7b",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"LorR" : 0, "UorD" : 0, "ForN" : 0, "Config6" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetArmOrientationRequestSize(Ros1Dobot_bringupSetArmOrientationRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetArmOrientationRequestCapture(value), n = Ros1Dobot_bringupSetArmOrientationRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetArmOrientationRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetArmOrientationRequestRead(r);
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

function Ros1Dobot_bringupSetArmOrientationRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["LorR"], 4, true);
    n = addSize(n, 4);
    integer(value["UorD"], 4, true);
    n = addSize(n, 4);
    integer(value["ForN"], 4, true);
    n = addSize(n, 4);
    integer(value["Config6"], 4, true);
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSetArmOrientationRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["LorR"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["UorD"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["ForN"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["Config6"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetArmOrientationRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["LorR"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["UorD"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ForN"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["Config6"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetArmOrientationRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["LorR"];
        out["LorR"] = field;
    }
    {
        const field = value["UorD"];
        out["UorD"] = field;
    }
    {
        const field = value["ForN"];
        out["ForN"] = field;
    }
    {
        const field = value["Config6"];
        out["Config6"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/SetArmOrientationResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetArmOrientationResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c9af233c61c52e029c51a6d59d53d2d37d8fa6fdfd009b08bee5e51f605a159",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetArmOrientationResponseSize(Ros1Dobot_bringupSetArmOrientationResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetArmOrientationResponseCapture(value), n = Ros1Dobot_bringupSetArmOrientationResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetArmOrientationResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetArmOrientationResponseRead(r);
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

function Ros1Dobot_bringupSetArmOrientationResponseSize(value)
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

function Ros1Dobot_bringupSetArmOrientationResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetArmOrientationResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetArmOrientationResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45771482b61ce634858abc167e63a421d7533ff9650b09d2ba6d58cb01ce8c82",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCoilsRequestSize(Ros1Dobot_bringupSetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCoilsRequestCapture(value), n = Ros1Dobot_bringupSetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCoilsRequestRead(r);
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

function Ros1Dobot_bringupSetCoilsRequestSize(value)
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
    n = addSize(n, 4 + textBytes(value["valTab"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
}

function Ros1Dobot_bringupSetCoilsRequestRead(r)
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
        value["valTab"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCoilsRequestCapture(value)
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
        const field = value["valTab"];
        out["valTab"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/SetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_65a61c2bcb39a67ae79dc7552f2c383db8561d8e6fbd585c50b048beabd4537d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCoilsResponseSize(Ros1Dobot_bringupSetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCoilsResponseCapture(value), n = Ros1Dobot_bringupSetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCoilsResponseRead(r);
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

function Ros1Dobot_bringupSetCoilsResponseSize(value)
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

function Ros1Dobot_bringupSetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCoilsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetCollideDragRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCollideDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6bbf174fa78c4e6706fe6ebdcfc77d6d80dfb153c91d3b8a815446bcae0fce31",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCollideDragRequestSize(Ros1Dobot_bringupSetCollideDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCollideDragRequestCapture(value), n = Ros1Dobot_bringupSetCollideDragRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCollideDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCollideDragRequestRead(r);
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

function Ros1Dobot_bringupSetCollideDragRequestSize(value)
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

function Ros1Dobot_bringupSetCollideDragRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetCollideDragRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCollideDragRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SetCollideDragResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCollideDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d78a1536cb221635491e59985011f879de22151bca4a40dcfdfad42e80465904",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCollideDragResponseSize(Ros1Dobot_bringupSetCollideDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCollideDragResponseCapture(value), n = Ros1Dobot_bringupSetCollideDragResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCollideDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCollideDragResponseRead(r);
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

function Ros1Dobot_bringupSetCollideDragResponseSize(value)
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

function Ros1Dobot_bringupSetCollideDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetCollideDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCollideDragResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetCollisionLevelRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCollisionLevelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d356e0e035b01033a24c4ce155acb2e1edf1197f3efcf868defa4ee8eb6a1d85",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCollisionLevelRequestSize(Ros1Dobot_bringupSetCollisionLevelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCollisionLevelRequestCapture(value), n = Ros1Dobot_bringupSetCollisionLevelRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCollisionLevelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCollisionLevelRequestRead(r);
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

function Ros1Dobot_bringupSetCollisionLevelRequestSize(value)
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

function Ros1Dobot_bringupSetCollisionLevelRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetCollisionLevelRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCollisionLevelRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SetCollisionLevelResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetCollisionLevelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c1014bc49ba25fa4a922a84009a746d6e5f1462bd91ad457e27c5779f7c711d7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetCollisionLevelResponseSize(Ros1Dobot_bringupSetCollisionLevelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetCollisionLevelResponseCapture(value), n = Ros1Dobot_bringupSetCollisionLevelResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetCollisionLevelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetCollisionLevelResponseRead(r);
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

function Ros1Dobot_bringupSetCollisionLevelResponseSize(value)
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

function Ros1Dobot_bringupSetCollisionLevelResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetCollisionLevelResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetCollisionLevelResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a62adf80d85c268ded993bcf79fb5e36a4010373b82122b20bfa7dedd7ba9d4a",
    maxWireBytes : 4436,
    minWireBytes : 20,
    cartesianMaxWireBytes : 4436n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : "", "valtype" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetHoldRegsRequestSize(Ros1Dobot_bringupSetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetHoldRegsRequestCapture(value), n = Ros1Dobot_bringupSetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4436, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetHoldRegsRequestRead(r);
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

function Ros1Dobot_bringupSetHoldRegsRequestSize(value)
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
    n = addSize(n, 4 + textBytes(value["valTab"], 256).length);
    if(!Array.isArray(value["valtype"]) || value["valtype"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["valtype"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4436)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSetHoldRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
    w.v.setUint32(w.at, value["valtype"].length, true);
    w.at += 4;
    for(const element of value["valtype"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_bringupSetHoldRegsRequestRead(r)
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
        value["valTab"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["valtype"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["valtype"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupSetHoldRegsRequestCapture(value)
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
        const field = value["valTab"];
        out["valTab"] = field;
    }
    {
        const field = value["valtype"];
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
        out["valtype"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/SetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c7bc9280585f3f48d94492a977a043154d9f7014d40c75c3423e6920c185006",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetHoldRegsResponseSize(Ros1Dobot_bringupSetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetHoldRegsResponseCapture(value), n = Ros1Dobot_bringupSetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetHoldRegsResponseRead(r);
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

function Ros1Dobot_bringupSetHoldRegsResponseSize(value)
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

function Ros1Dobot_bringupSetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetHoldRegsResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetObstacleAvoidRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetObstacleAvoidRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fdabddcd2e3aedae53795c3f88db4af1e8b088276bacde73d2f743bc85abb2b7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetObstacleAvoidRequestSize(Ros1Dobot_bringupSetObstacleAvoidRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetObstacleAvoidRequestCapture(value), n = Ros1Dobot_bringupSetObstacleAvoidRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetObstacleAvoidRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetObstacleAvoidRequestRead(r);
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

function Ros1Dobot_bringupSetObstacleAvoidRequestSize(value)
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

function Ros1Dobot_bringupSetObstacleAvoidRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetObstacleAvoidRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetObstacleAvoidRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SetObstacleAvoidResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetObstacleAvoidResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6326eb040ce327709390b27c7cdcdcdc5e4b482078083d8e9211b85a0b516765",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetObstacleAvoidResponseSize(Ros1Dobot_bringupSetObstacleAvoidResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetObstacleAvoidResponseCapture(value), n = Ros1Dobot_bringupSetObstacleAvoidResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetObstacleAvoidResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetObstacleAvoidResponseRead(r);
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

function Ros1Dobot_bringupSetObstacleAvoidResponseSize(value)
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

function Ros1Dobot_bringupSetObstacleAvoidResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetObstacleAvoidResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetObstacleAvoidResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetPayloadRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetPayloadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b78f4ea1c2dba35204ce4a4c707f47e1203525613c0f8e2b6bde4d4ebe31fd0a",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"load" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetPayloadRequestSize(Ros1Dobot_bringupSetPayloadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetPayloadRequestCapture(value), n = Ros1Dobot_bringupSetPayloadRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetPayloadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetPayloadRequestRead(r);
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

function Ros1Dobot_bringupSetPayloadRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["load"] !== "number" || !Number.isFinite(value["load"]))
        bad();
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSetPayloadRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["load"], true);
    w.at += 8;
}

function Ros1Dobot_bringupSetPayloadRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["load"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetPayloadRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["load"];
        out["load"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/SetPayloadResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetPayloadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef8118977e3535e707b28e87413af7b5d87aefe192cb904e76388f26a0e48451",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetPayloadResponseSize(Ros1Dobot_bringupSetPayloadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetPayloadResponseCapture(value), n = Ros1Dobot_bringupSetPayloadResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetPayloadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetPayloadResponseRead(r);
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

function Ros1Dobot_bringupSetPayloadResponseSize(value)
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

function Ros1Dobot_bringupSetPayloadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetPayloadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetPayloadResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_757fbe6b10abe9fab751c9a26e653dfb88aa9863f8aa02574a4853596dea0b1f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetSafeSkinRequestSize(Ros1Dobot_bringupSetSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetSafeSkinRequestCapture(value), n = Ros1Dobot_bringupSetSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetSafeSkinRequestRead(r);
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

function Ros1Dobot_bringupSetSafeSkinRequestSize(value)
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

function Ros1Dobot_bringupSetSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetSafeSkinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetSafeSkinRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SetSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6faa7971380cc42c37cb8e465e04bc61565a0d13afc4e13a3dae14538bdcc7ef",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetSafeSkinResponseSize(Ros1Dobot_bringupSetSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetSafeSkinResponseCapture(value), n = Ros1Dobot_bringupSetSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetSafeSkinResponseRead(r);
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

function Ros1Dobot_bringupSetSafeSkinResponseSize(value)
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

function Ros1Dobot_bringupSetSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetSafeSkinResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetTerminal485Request codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetTerminal485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68f16c3a44c421922cc0200bb6d08ad44b475feae3d9b35b075749b31c84b7b0",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baudRate" : 0, "dataLen" : 0, "parityBit" : "", "stopBit" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetTerminal485RequestSize(Ros1Dobot_bringupSetTerminal485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetTerminal485RequestCapture(value), n = Ros1Dobot_bringupSetTerminal485RequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetTerminal485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetTerminal485RequestRead(r);
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

function Ros1Dobot_bringupSetTerminal485RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["baudRate"], 4, true);
    n = addSize(n, 4);
    integer(value["dataLen"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["parityBit"], 256).length);
    integer(value["stopBit"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSetTerminal485RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baudRate"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["dataLen"], true);
    w.at += 4;
    w.text(value["parityBit"], 256);
    w.v.setInt32(w.at, value["stopBit"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetTerminal485RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baudRate"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["dataLen"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["parityBit"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["stopBit"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetTerminal485RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["baudRate"];
        out["baudRate"] = field;
    }
    {
        const field = value["dataLen"];
        out["dataLen"] = field;
    }
    {
        const field = value["parityBit"];
        out["parityBit"] = field;
    }
    {
        const field = value["stopBit"];
        out["stopBit"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/SetTerminal485Response codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetTerminal485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8d9147b63b5a0a8fe5a55cf1539cdccac2db65f169edd15f7de6961b7c69f987",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetTerminal485ResponseSize(Ros1Dobot_bringupSetTerminal485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetTerminal485ResponseCapture(value), n = Ros1Dobot_bringupSetTerminal485ResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetTerminal485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetTerminal485ResponseRead(r);
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

function Ros1Dobot_bringupSetTerminal485ResponseSize(value)
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

function Ros1Dobot_bringupSetTerminal485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetTerminal485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetTerminal485ResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SetTerminalKeysRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetTerminalKeysRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5ccdea027664fa4de7f7eede24f55c1be9e48bcc69c304f6ed20364bdf2316c8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetTerminalKeysRequestSize(Ros1Dobot_bringupSetTerminalKeysRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetTerminalKeysRequestCapture(value), n = Ros1Dobot_bringupSetTerminalKeysRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetTerminalKeysRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetTerminalKeysRequestRead(r);
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

function Ros1Dobot_bringupSetTerminalKeysRequestSize(value)
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

function Ros1Dobot_bringupSetTerminalKeysRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetTerminalKeysRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetTerminalKeysRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SetTerminalKeysResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSetTerminalKeysResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_59413ce06c871427dc5bfe441c8486cee8a580c75a4b1b979e90f5002f405ca8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSetTerminalKeysResponseSize(Ros1Dobot_bringupSetTerminalKeysResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSetTerminalKeysResponseCapture(value), n = Ros1Dobot_bringupSetTerminalKeysResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSetTerminalKeysResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSetTerminalKeysResponseRead(r);
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

function Ros1Dobot_bringupSetTerminalKeysResponseSize(value)
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

function Ros1Dobot_bringupSetTerminalKeysResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSetTerminalKeysResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSetTerminalKeysResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedFactorRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedFactorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc9b2b41a6825b0b62591195bdfe8c496a9330b769077ba68fa6955fee05bac3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ratio" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedFactorRequestSize(Ros1Dobot_bringupSpeedFactorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedFactorRequestCapture(value), n = Ros1Dobot_bringupSpeedFactorRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedFactorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedFactorRequestRead(r);
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

function Ros1Dobot_bringupSpeedFactorRequestSize(value)
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

function Ros1Dobot_bringupSpeedFactorRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["ratio"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedFactorRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ratio"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedFactorRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedFactorResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedFactorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f3dccd2d89672165a8a3f322921c526503ceea62853596deff249b8db9561f4d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedFactorResponseSize(Ros1Dobot_bringupSpeedFactorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedFactorResponseCapture(value), n = Ros1Dobot_bringupSpeedFactorResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedFactorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedFactorResponseRead(r);
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

function Ros1Dobot_bringupSpeedFactorResponseSize(value)
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

function Ros1Dobot_bringupSpeedFactorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedFactorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedFactorResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_530734a5d3c9d4ad506868f4037248b87a3ecb910a9a326bd3bd887b8a55710d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedJRequestSize(Ros1Dobot_bringupSpeedJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedJRequestCapture(value), n = Ros1Dobot_bringupSpeedJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedJRequestRead(r);
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

function Ros1Dobot_bringupSpeedJRequestSize(value)
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

function Ros1Dobot_bringupSpeedJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedJRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17695b04e91ceb9ea10c863908d474e587160eac3132a560bc06a15c18a2e447",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedJResponseSize(Ros1Dobot_bringupSpeedJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedJResponseCapture(value), n = Ros1Dobot_bringupSpeedJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedJResponseRead(r);
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

function Ros1Dobot_bringupSpeedJResponseSize(value)
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

function Ros1Dobot_bringupSpeedJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedJResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_92cfdf1adae35ed62eb8a92f9bcf4ffd01e8db8c57989e008e2073e3e07b9c51",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedLRequestSize(Ros1Dobot_bringupSpeedLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedLRequestCapture(value), n = Ros1Dobot_bringupSpeedLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedLRequestRead(r);
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

function Ros1Dobot_bringupSpeedLRequestSize(value)
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

function Ros1Dobot_bringupSpeedLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedLRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/SpeedLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSpeedLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_413b189f4830e3bff05be7c2f80251242e6c07ca696fd78dd91ae326f703e5b2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSpeedLResponseSize(Ros1Dobot_bringupSpeedLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSpeedLResponseCapture(value), n = Ros1Dobot_bringupSpeedLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSpeedLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSpeedLResponseRead(r);
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

function Ros1Dobot_bringupSpeedLResponseSize(value)
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

function Ros1Dobot_bringupSpeedLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSpeedLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSpeedLResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StartDragRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5edde2ed92d68be374f7a234ae31d5e939747fda13dd2abd093c98b9bbefd0b2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartDragRequestSize(Ros1Dobot_bringupStartDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartDragRequestCapture(value), n = Ros1Dobot_bringupStartDragRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartDragRequestRead(r);
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

function Ros1Dobot_bringupStartDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStartDragRequestWrite(value, w)
{
}

function Ros1Dobot_bringupStartDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupStartDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/StartDragResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3f845cd661102409cc5077d245b89fca9250f265f783478473a86e92528b7cb9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartDragResponseSize(Ros1Dobot_bringupStartDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartDragResponseCapture(value), n = Ros1Dobot_bringupStartDragResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartDragResponseRead(r);
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

function Ros1Dobot_bringupStartDragResponseSize(value)
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

function Ros1Dobot_bringupStartDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStartDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartDragResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StartFCTraceRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartFCTraceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1f215de662fd0408919e61128d88b5e36ef8caf22a3d60a00722c9dc7828d01e",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartFCTraceRequestSize(Ros1Dobot_bringupStartFCTraceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartFCTraceRequestCapture(value), n = Ros1Dobot_bringupStartFCTraceRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartFCTraceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartFCTraceRequestRead(r);
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

function Ros1Dobot_bringupStartFCTraceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStartFCTraceRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
}

function Ros1Dobot_bringupStartFCTraceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartFCTraceRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/StartFCTraceResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartFCTraceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_943645444330cdd8076254071d311237eee917c45c30d6038458a3b3122ab67c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartFCTraceResponseSize(Ros1Dobot_bringupStartFCTraceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartFCTraceResponseCapture(value), n = Ros1Dobot_bringupStartFCTraceResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartFCTraceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartFCTraceResponseRead(r);
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

function Ros1Dobot_bringupStartFCTraceResponseSize(value)
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

function Ros1Dobot_bringupStartFCTraceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStartFCTraceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartFCTraceResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StartPathRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartPathRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c2bda8488e715407a73897eaf8a63da4d77e1371d257ebeebf7d4d855aa6eb89",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : "", "const_val" : 0, "cart" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartPathRequestSize(Ros1Dobot_bringupStartPathRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartPathRequestCapture(value), n = Ros1Dobot_bringupStartPathRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartPathRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartPathRequestRead(r);
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

function Ros1Dobot_bringupStartPathRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    integer(value["const_val"], 4, true);
    n = addSize(n, 4);
    integer(value["cart"], 4, true);
    n = addSize(n, 4);
    if(n > 268)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStartPathRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
    w.v.setInt32(w.at, value["const_val"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["cart"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStartPathRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["const_val"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["cart"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartPathRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trace_name"];
        out["trace_name"] = field;
    }
    {
        const field = value["const_val"];
        out["const_val"] = field;
    }
    {
        const field = value["cart"];
        out["cart"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/StartPathResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartPathResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e0c7e7594e78bca3183f6e68170dcf40e3341f9f7a63c3b00f8e0ec51ae46a0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartPathResponseSize(Ros1Dobot_bringupStartPathResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartPathResponseCapture(value), n = Ros1Dobot_bringupStartPathResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartPathResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartPathResponseRead(r);
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

function Ros1Dobot_bringupStartPathResponseSize(value)
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

function Ros1Dobot_bringupStartPathResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStartPathResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartPathResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StartTraceRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartTraceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2cb708228939aa747aded7cd96aa8a01855a09a27ae9bd855d6d3f0c42a6ff45",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartTraceRequestSize(Ros1Dobot_bringupStartTraceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartTraceRequestCapture(value), n = Ros1Dobot_bringupStartTraceRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartTraceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartTraceRequestRead(r);
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

function Ros1Dobot_bringupStartTraceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStartTraceRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
}

function Ros1Dobot_bringupStartTraceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartTraceRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/StartTraceResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStartTraceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c7ae42d0c2057dbdf32d5bf0bc6199d3a5b45f452f58cd58aec217ac5161bdd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStartTraceResponseSize(Ros1Dobot_bringupStartTraceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStartTraceResponseCapture(value), n = Ros1Dobot_bringupStartTraceResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStartTraceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStartTraceResponseRead(r);
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

function Ros1Dobot_bringupStartTraceResponseSize(value)
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

function Ros1Dobot_bringupStartTraceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStartTraceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStartTraceResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StopDragRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0cc9836f6159cd14e2fbe1d17946df1195933b6185c58e92a9ccfe2110ab3c9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopDragRequestSize(Ros1Dobot_bringupStopDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopDragRequestCapture(value), n = Ros1Dobot_bringupStopDragRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopDragRequestRead(r);
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

function Ros1Dobot_bringupStopDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStopDragRequestWrite(value, w)
{
}

function Ros1Dobot_bringupStopDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupStopDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/StopDragResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c799d7ef2592c59d6765107cb18ae3a8e811da39fd3c4f53000ed1f0ce73ce64",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopDragResponseSize(Ros1Dobot_bringupStopDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopDragResponseCapture(value), n = Ros1Dobot_bringupStopDragResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopDragResponseRead(r);
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

function Ros1Dobot_bringupStopDragResponseSize(value)
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

function Ros1Dobot_bringupStopDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStopDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStopDragResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StopScriptRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e9a2e0200b130410e48357bf3bebe80084239ba05f75effbf2b96e6d5fa6230",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopScriptRequestSize(Ros1Dobot_bringupStopScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopScriptRequestCapture(value), n = Ros1Dobot_bringupStopScriptRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopScriptRequestRead(r);
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

function Ros1Dobot_bringupStopScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStopScriptRequestWrite(value, w)
{
}

function Ros1Dobot_bringupStopScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupStopScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/StopScriptResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fdc976b5bb7a6270a362a8ec31184d2034068a1806f501517c472efceda804b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopScriptResponseSize(Ros1Dobot_bringupStopScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopScriptResponseCapture(value), n = Ros1Dobot_bringupStopScriptResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopScriptResponseRead(r);
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

function Ros1Dobot_bringupStopScriptResponseSize(value)
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

function Ros1Dobot_bringupStopScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStopScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStopScriptResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/StopmoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopmoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0f938c260d9371e39e84a1a01447c7992ad15b5c6c322def739d0919e5af3176",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopmoveJogRequestSize(Ros1Dobot_bringupStopmoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopmoveJogRequestCapture(value), n = Ros1Dobot_bringupStopmoveJogRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopmoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopmoveJogRequestRead(r);
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

function Ros1Dobot_bringupStopmoveJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupStopmoveJogRequestWrite(value, w)
{
}

function Ros1Dobot_bringupStopmoveJogRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupStopmoveJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/StopmoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupStopmoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8af5a7425dcbbed499016ce18bf9f721da5ee806e9e4360368267f925e169940",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupStopmoveJogResponseSize(Ros1Dobot_bringupStopmoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupStopmoveJogResponseCapture(value), n = Ros1Dobot_bringupStopmoveJogResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupStopmoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupStopmoveJogResponseRead(r);
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

function Ros1Dobot_bringupStopmoveJogResponseSize(value)
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

function Ros1Dobot_bringupStopmoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupStopmoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupStopmoveJogResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SyncRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSyncRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6335c57c7c8e3d52e8c5bb288f87946d11228777e2277aec29560d5f7bebb327",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupSyncRequestSize(Ros1Dobot_bringupSyncRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSyncRequestCapture(value), n = Ros1Dobot_bringupSyncRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSyncRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSyncRequestRead(r);
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

function Ros1Dobot_bringupSyncRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSyncRequestWrite(value, w)
{
}

function Ros1Dobot_bringupSyncRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupSyncRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/SyncResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSyncResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bccb43d699c8000b02cd2f97349bf7d16df2409ba0ab02fcc1889acb8827fb24",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSyncResponseSize(Ros1Dobot_bringupSyncResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSyncResponseCapture(value), n = Ros1Dobot_bringupSyncResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSyncResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSyncResponseRead(r);
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

function Ros1Dobot_bringupSyncResponseSize(value)
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

function Ros1Dobot_bringupSyncResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSyncResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSyncResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/SyncAllRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSyncAllRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4e09d99b799b37456dd01b35b7c5c6f83b34899bd8942c6c324018087bd5a76",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupSyncAllRequestSize(Ros1Dobot_bringupSyncAllRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSyncAllRequestCapture(value), n = Ros1Dobot_bringupSyncAllRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSyncAllRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSyncAllRequestRead(r);
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

function Ros1Dobot_bringupSyncAllRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupSyncAllRequestWrite(value, w)
{
}

function Ros1Dobot_bringupSyncAllRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupSyncAllRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/SyncAllResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupSyncAllResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1431a93a4eb81a5180888dcbef05bb55aca2ba282e51b07df6a1578ebb38b69b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupSyncAllResponseSize(Ros1Dobot_bringupSyncAllResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupSyncAllResponseCapture(value), n = Ros1Dobot_bringupSyncAllResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupSyncAllResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupSyncAllResponseRead(r);
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

function Ros1Dobot_bringupSyncAllResponseSize(value)
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

function Ros1Dobot_bringupSyncAllResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupSyncAllResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupSyncAllResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/TCPSpeedRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTCPSpeedRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a49b5d50c6b624f0fa07e22f80248b5199a2158c6211b1e6c0eca4a975ab7463",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vt" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupTCPSpeedRequestSize(Ros1Dobot_bringupTCPSpeedRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTCPSpeedRequestCapture(value), n = Ros1Dobot_bringupTCPSpeedRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTCPSpeedRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTCPSpeedRequestRead(r);
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

function Ros1Dobot_bringupTCPSpeedRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["vt"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTCPSpeedRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["vt"], true);
    w.at += 4;
}

function Ros1Dobot_bringupTCPSpeedRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["vt"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTCPSpeedRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vt"];
        out["vt"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/TCPSpeedResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTCPSpeedResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8fda9d4671efacc4b7831694bd9e2cf16c90efbb3b790f17879896a48fb78d40",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupTCPSpeedResponseSize(Ros1Dobot_bringupTCPSpeedResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTCPSpeedResponseCapture(value), n = Ros1Dobot_bringupTCPSpeedResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTCPSpeedResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTCPSpeedResponseRead(r);
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

function Ros1Dobot_bringupTCPSpeedResponseSize(value)
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

function Ros1Dobot_bringupTCPSpeedResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupTCPSpeedResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTCPSpeedResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/TCPSpeedEndRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTCPSpeedEndRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11b32554e05b4dd64f7965fb8909226ee845f6fe236bf44c3cee6e1b58dc56ab",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupTCPSpeedEndRequestSize(Ros1Dobot_bringupTCPSpeedEndRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTCPSpeedEndRequestCapture(value), n = Ros1Dobot_bringupTCPSpeedEndRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTCPSpeedEndRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTCPSpeedEndRequestRead(r);
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

function Ros1Dobot_bringupTCPSpeedEndRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTCPSpeedEndRequestWrite(value, w)
{
}

function Ros1Dobot_bringupTCPSpeedEndRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupTCPSpeedEndRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/TCPSpeedEndResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTCPSpeedEndResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_209df9451cdd6aa01da6297a3dd200a7d48e7775c37e0f29210b6662f6025106",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupTCPSpeedEndResponseSize(Ros1Dobot_bringupTCPSpeedEndResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTCPSpeedEndResponseCapture(value), n = Ros1Dobot_bringupTCPSpeedEndResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTCPSpeedEndResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTCPSpeedEndResponseRead(r);
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

function Ros1Dobot_bringupTCPSpeedEndResponseSize(value)
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

function Ros1Dobot_bringupTCPSpeedEndResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupTCPSpeedEndResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTCPSpeedEndResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/TcpDashboardRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTcpDashboardRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d3db7b6a90c40d75214e005ed14a4556f064853544f887b22b37d475eaaaac4b",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupTcpDashboardRequestSize(Ros1Dobot_bringupTcpDashboardRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTcpDashboardRequestCapture(value), n = Ros1Dobot_bringupTcpDashboardRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTcpDashboardRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTcpDashboardRequestRead(r);
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

function Ros1Dobot_bringupTcpDashboardRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTcpDashboardRequestWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros1Dobot_bringupTcpDashboardRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTcpDashboardRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/TcpDashboardResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTcpDashboardResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eef5e6ea6b43d898ab0af1d6162c3d1738e437313aae7998802ec80e26345ae1",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : ""};
    },
    validateValue(value) {
        Ros1Dobot_bringupTcpDashboardResponseSize(Ros1Dobot_bringupTcpDashboardResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTcpDashboardResponseCapture(value), n = Ros1Dobot_bringupTcpDashboardResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTcpDashboardResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTcpDashboardResponseRead(r);
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

function Ros1Dobot_bringupTcpDashboardResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["result"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTcpDashboardResponseWrite(value, w)
{
    w.text(value["result"], 256);
}

function Ros1Dobot_bringupTcpDashboardResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["result"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTcpDashboardResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/TcpRealDataRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTcpRealDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0da7b4edbd97640aa057410bfb4d67e0ab554f0a8776421def225798d99b5aba",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "size" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupTcpRealDataRequestSize(Ros1Dobot_bringupTcpRealDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTcpRealDataRequestCapture(value), n = Ros1Dobot_bringupTcpRealDataRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTcpRealDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTcpRealDataRequestRead(r);
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

function Ros1Dobot_bringupTcpRealDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 4, false);
    n = addSize(n, 4);
    integer(value["size"], 4, false);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTcpRealDataRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["index"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["size"], true);
    w.at += 4;
}

function Ros1Dobot_bringupTcpRealDataRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["size"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupTcpRealDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["size"];
        out["size"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/TcpRealDataResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupTcpRealDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed7ac4b91bfae3d1c2fdcf3ffe1efcbec473a5138c204115f6ec17adf3bf1d91",
    maxWireBytes : 20,
    minWireBytes : 4,
    cartesianMaxWireBytes : 20n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"real_data" : []};
    },
    validateValue(value) {
        Ros1Dobot_bringupTcpRealDataResponseSize(Ros1Dobot_bringupTcpRealDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupTcpRealDataResponseCapture(value), n = Ros1Dobot_bringupTcpRealDataResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupTcpRealDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 20, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupTcpRealDataResponseRead(r);
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

function Ros1Dobot_bringupTcpRealDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["real_data"]) || value["real_data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["real_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 20)
        bad(90);
    return n;
}

function Ros1Dobot_bringupTcpRealDataResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["real_data"].length, true);
    w.at += 4;
    for(const element of value["real_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Dobot_bringupTcpRealDataResponseRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["real_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["real_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dobot_bringupTcpRealDataResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["real_data"];
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
        out["real_data"] = values;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/ToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0bd7f266c2fad2e0b91d423ed4c7ea0fd1e5af5b600f13406d1d777466a0fd16",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolRequestSize(Ros1Dobot_bringupToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolRequestCapture(value), n = Ros1Dobot_bringupToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolRequestRead(r);
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

function Ros1Dobot_bringupToolRequestSize(value)
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

function Ros1Dobot_bringupToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_56b265050ea32f5b7ae269f92cfc71218d5c5ba05646909ea59069e33510466e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolResponseSize(Ros1Dobot_bringupToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolResponseCapture(value), n = Ros1Dobot_bringupToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolResponseRead(r);
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

function Ros1Dobot_bringupToolResponseSize(value)
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

function Ros1Dobot_bringupToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolAIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5268a08cb93da6f4c38764aa0236abde3f8c57e232a1dbc6f53134111ce2fd8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolAIRequestSize(Ros1Dobot_bringupToolAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolAIRequestCapture(value), n = Ros1Dobot_bringupToolAIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolAIRequestRead(r);
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

function Ros1Dobot_bringupToolAIRequestSize(value)
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

function Ros1Dobot_bringupToolAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolAIRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolAIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_92c55f5b614847d1f3be252d07dcd9a30598232d3b4e8f522f8ec83994b56397",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolAIResponseSize(Ros1Dobot_bringupToolAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolAIResponseCapture(value), n = Ros1Dobot_bringupToolAIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolAIResponseRead(r);
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

function Ros1Dobot_bringupToolAIResponseSize(value)
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

function Ros1Dobot_bringupToolAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolAIResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ca6c66e74e3487aa95f47be019816e7186fc78866d0de3d8bf0387cd3df0076",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDIRequestSize(Ros1Dobot_bringupToolDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDIRequestCapture(value), n = Ros1Dobot_bringupToolDIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDIRequestRead(r);
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

function Ros1Dobot_bringupToolDIRequestSize(value)
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

function Ros1Dobot_bringupToolDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolDIRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b82c8b78569e743f5ed6820f51a94e4df7a7123263480abe95d98c9d4eaaea6e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDIResponseSize(Ros1Dobot_bringupToolDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDIResponseCapture(value), n = Ros1Dobot_bringupToolDIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDIResponseRead(r);
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

function Ros1Dobot_bringupToolDIResponseSize(value)
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

function Ros1Dobot_bringupToolDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolDIResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc39c212586e15229136735c829a895bad7fc6a98ffc0bdce7ff979f922d23ab",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDORequestSize(Ros1Dobot_bringupToolDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDORequestCapture(value), n = Ros1Dobot_bringupToolDORequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDORequestRead(r);
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

function Ros1Dobot_bringupToolDORequestSize(value)
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

function Ros1Dobot_bringupToolDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDORequestRead(r)
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

function Ros1Dobot_bringupToolDORequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9e7bf45f71e429e87a8b13e65ddef93703613393c6919c1533515c654e6c8bee",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDOResponseSize(Ros1Dobot_bringupToolDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDOResponseCapture(value), n = Ros1Dobot_bringupToolDOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDOResponseRead(r);
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

function Ros1Dobot_bringupToolDOResponseSize(value)
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

function Ros1Dobot_bringupToolDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolDOResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_22cb71605a1372615814017f66f61ce144cbf3c8b7d8494afbed7738eb29903b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDOExecuteRequestSize(Ros1Dobot_bringupToolDOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDOExecuteRequestCapture(value), n = Ros1Dobot_bringupToolDOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDOExecuteRequestRead(r);
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

function Ros1Dobot_bringupToolDOExecuteRequestSize(value)
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

function Ros1Dobot_bringupToolDOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDOExecuteRequestRead(r)
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

function Ros1Dobot_bringupToolDOExecuteRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/ToolDOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupToolDOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4cb0bead175157db1ca3856044e06fde9cd2cd8775a973a50bba2829d3170cdd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupToolDOExecuteResponseSize(Ros1Dobot_bringupToolDOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupToolDOExecuteResponseCapture(value), n = Ros1Dobot_bringupToolDOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupToolDOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupToolDOExecuteResponseRead(r);
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

function Ros1Dobot_bringupToolDOExecuteResponseSize(value)
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

function Ros1Dobot_bringupToolDOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupToolDOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupToolDOExecuteResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/UserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76f5181e8f7f06636dbaf1f1cdac40cf5551f4b3c09894eb7fc0089f71e81e73",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupUserRequestSize(Ros1Dobot_bringupUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupUserRequestCapture(value), n = Ros1Dobot_bringupUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupUserRequestRead(r);
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

function Ros1Dobot_bringupUserRequestSize(value)
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

function Ros1Dobot_bringupUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_bringupUserRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupUserRequestCapture(value)
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

/** Complete ROS1 dobot_bringup/UserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f5730d781123bc19cadcdf6e3777368db7b6ea770a2fa42116af9b247bbec07",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupUserResponseSize(Ros1Dobot_bringupUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupUserResponseCapture(value), n = Ros1Dobot_bringupUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupUserResponseRead(r);
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

function Ros1Dobot_bringupUserResponseSize(value)
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

function Ros1Dobot_bringupUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupUserResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/WaitRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupWaitRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e5591a43882cc95d007f376128e7db03376cae95e637f77fff14ed3c115ff85",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"time" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupWaitRequestSize(Ros1Dobot_bringupWaitRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupWaitRequestCapture(value), n = Ros1Dobot_bringupWaitRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupWaitRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupWaitRequestRead(r);
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

function Ros1Dobot_bringupWaitRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["time"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Dobot_bringupWaitRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["time"], true);
    w.at += 4;
}

function Ros1Dobot_bringupWaitRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupWaitRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_bringup/WaitResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupWaitResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f745fbd59f29bdca82788cb44ef5848836cd510328fd4dcec6ae2cbe1b57a07f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupWaitResponseSize(Ros1Dobot_bringupWaitResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupWaitResponseCapture(value), n = Ros1Dobot_bringupWaitResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupWaitResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupWaitResponseRead(r);
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

function Ros1Dobot_bringupWaitResponseSize(value)
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

function Ros1Dobot_bringupWaitResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupWaitResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupWaitResponseCapture(value)
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

/** Complete ROS1 dobot_bringup/pauseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_524834ff32e2a939481b311a79efe4e67183379ae04516e87d75e4449d219b89",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_bringupPauseRequestSize(Ros1Dobot_bringupPauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPauseRequestCapture(value), n = Ros1Dobot_bringupPauseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPauseRequestRead(r);
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

function Ros1Dobot_bringupPauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_bringupPauseRequestWrite(value, w)
{
}

function Ros1Dobot_bringupPauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_bringupPauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_bringup/pauseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_bringupPauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_791459101db2af7fdc04aa2e3778aeb684bc7f4b4fae16420c9b551383c2f545",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_bringupPauseResponseSize(Ros1Dobot_bringupPauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_bringupPauseResponseCapture(value), n = Ros1Dobot_bringupPauseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_bringupPauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_bringupPauseResponseRead(r);
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

function Ros1Dobot_bringupPauseResponseSize(value)
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

function Ros1Dobot_bringupPauseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_bringupPauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_bringupPauseResponseCapture(value)
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
