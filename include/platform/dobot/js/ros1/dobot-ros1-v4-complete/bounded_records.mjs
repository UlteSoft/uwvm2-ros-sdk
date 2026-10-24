/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original dobot/ros1_v4 canonical value domain.
 * @details The selected domain contains 190 complete record/components and 356 original fields. Declared
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

/** Complete ROS1 dobot_v4_bringup/RobotStatus codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRobotStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82bd02d6cae133bcc64f6bc44d1a99cf9d37557aab1c1d8fa3ba8db5ee624c4f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"is_enable" : false, "is_connected" : false};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRobotStatusSize(Ros1Dobot_v4_bringupRobotStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRobotStatusCapture(value), n = Ros1Dobot_v4_bringupRobotStatusSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRobotStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRobotStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRobotStatusSize(value)
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

function Ros1Dobot_v4_bringupRobotStatusWrite(value, w)
{
    w.v.setUint8(w.at, value["is_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_connected"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dobot_v4_bringupRobotStatusRead(r)
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

function Ros1Dobot_v4_bringupRobotStatusCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolVectorActual codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolVectorActualCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82ced795eaf8a686e3c4ef7b1d4385f2db2119990d10261086993e82049f0eb3",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolVectorActualSize(Ros1Dobot_v4_bringupToolVectorActualCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolVectorActualCapture(value), n = Ros1Dobot_v4_bringupToolVectorActualSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolVectorActualWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolVectorActualRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolVectorActualSize(value)
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

function Ros1Dobot_v4_bringupToolVectorActualWrite(value, w)
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

function Ros1Dobot_v4_bringupToolVectorActualRead(r)
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

function Ros1Dobot_v4_bringupToolVectorActualCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2214b217765bff4c163b4dc5d97631b8d69ff185f57d94fe05eb9de59aad3916",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAIRequestSize(Ros1Dobot_v4_bringupAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAIRequestCapture(value), n = Ros1Dobot_v4_bringupAIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAIRequestSize(value)
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

function Ros1Dobot_v4_bringupAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAIRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47792956dab8fdbe34409d3fbb171c596c10fa7d51f1794e23139a1d1896a723",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAIResponseSize(Ros1Dobot_v4_bringupAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAIResponseCapture(value), n = Ros1Dobot_v4_bringupAIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAIResponseSize(value)
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

function Ros1Dobot_v4_bringupAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAIResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67c96ce3587b6f894d311d80b9a25e5b23a25b6b3aa8b2e5ba1bfab0983064e5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAORequestSize(Ros1Dobot_v4_bringupAORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAORequestCapture(value), n = Ros1Dobot_v4_bringupAORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAORequestSize(value)
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

function Ros1Dobot_v4_bringupAORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAORequestRead(r)
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

function Ros1Dobot_v4_bringupAORequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38ebdda40649964474bb27ed9212950b8f43b0eac13b2dd79bf0a605bdb121dd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAOResponseSize(Ros1Dobot_v4_bringupAOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAOResponseCapture(value), n = Ros1Dobot_v4_bringupAOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAOResponseSize(value)
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

function Ros1Dobot_v4_bringupAOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAOResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_69e03a2eebb2a231b59d673abe15a742fce22ea06c8efd1d684c5e62391adb43",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAOInstantRequestSize(Ros1Dobot_v4_bringupAOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAOInstantRequestCapture(value), n = Ros1Dobot_v4_bringupAOInstantRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAOInstantRequestSize(value)
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

function Ros1Dobot_v4_bringupAOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAOInstantRequestRead(r)
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

function Ros1Dobot_v4_bringupAOInstantRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ff0bd24267296503bc726f5c56730b44883589410fe761ebb20610b5f69a4ca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAOInstantResponseSize(Ros1Dobot_v4_bringupAOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAOInstantResponseCapture(value), n = Ros1Dobot_v4_bringupAOInstantResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAOInstantResponseSize(value)
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

function Ros1Dobot_v4_bringupAOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAOInstantResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AccJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAccJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a6d27425ba463d6d990c5c62dde45ad47f89ae14fd2832df3387b6a19ab0fc05",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAccJRequestSize(Ros1Dobot_v4_bringupAccJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAccJRequestCapture(value), n = Ros1Dobot_v4_bringupAccJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAccJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAccJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAccJRequestSize(value)
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

function Ros1Dobot_v4_bringupAccJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAccJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAccJRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AccJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAccJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ff9508fd4b7dc283d453e43ca8637de582724fe7a5da37f7a7904e319215b5f1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAccJResponseSize(Ros1Dobot_v4_bringupAccJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAccJResponseCapture(value), n = Ros1Dobot_v4_bringupAccJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAccJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAccJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAccJResponseSize(value)
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

function Ros1Dobot_v4_bringupAccJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAccJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAccJResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AccLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAccLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_be3fa95380632fb2131388acdfabf9f98bed108ddf8290a001309cf8d870d8a8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAccLRequestSize(Ros1Dobot_v4_bringupAccLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAccLRequestCapture(value), n = Ros1Dobot_v4_bringupAccLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAccLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAccLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAccLRequestSize(value)
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

function Ros1Dobot_v4_bringupAccLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAccLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAccLRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/AccLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupAccLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8d93105e9d13cca877153ccef2879370ee21f0676ea0979a5829e5580c006ac3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupAccLResponseSize(Ros1Dobot_v4_bringupAccLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupAccLResponseCapture(value), n = Ros1Dobot_v4_bringupAccLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupAccLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupAccLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupAccLResponseSize(value)
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

function Ros1Dobot_v4_bringupAccLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupAccLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupAccLResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ArcRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupArcRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0058b89dc12f71d3464fbc58e14c2fbb9aca71bcc927efe3c3d991df5433cde2",
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
            "paramValue" : []
        };
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupArcRequestSize(Ros1Dobot_v4_bringupArcRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupArcRequestCapture(value), n = Ros1Dobot_v4_bringupArcRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupArcRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4261, 90);
        if(owned.length < 101)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupArcRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupArcRequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4261)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupArcRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupArcRequestRead(r)
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

function Ros1Dobot_v4_bringupArcRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ArcResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupArcResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7527828d6f107213576c2c1733b3978916baa255cf282df6ca77ac1d9364d263",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupArcResponseSize(Ros1Dobot_v4_bringupArcResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupArcResponseCapture(value), n = Ros1Dobot_v4_bringupArcResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupArcResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupArcResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupArcResponseSize(value)
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

function Ros1Dobot_v4_bringupArcResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupArcResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupArcResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/BrakeControlRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupBrakeControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b295b5b162337e56aa01d87fef42c7bf25568bb6dd3ce63c252831f5f934618",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupBrakeControlRequestSize(Ros1Dobot_v4_bringupBrakeControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupBrakeControlRequestCapture(value), n = Ros1Dobot_v4_bringupBrakeControlRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupBrakeControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupBrakeControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupBrakeControlRequestSize(value)
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

function Ros1Dobot_v4_bringupBrakeControlRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["axisID"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupBrakeControlRequestRead(r)
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

function Ros1Dobot_v4_bringupBrakeControlRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/BrakeControlResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupBrakeControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_984998184713f59986fc50b3d31a4f33211b1fd340cef600e2bb43e8955c38e2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupBrakeControlResponseSize(Ros1Dobot_v4_bringupBrakeControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupBrakeControlResponseCapture(value), n = Ros1Dobot_v4_bringupBrakeControlResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupBrakeControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupBrakeControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupBrakeControlResponseSize(value)
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

function Ros1Dobot_v4_bringupBrakeControlResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupBrakeControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupBrakeControlResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CPRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7bad993bf7a0a34147982828fe416072f9c03ecec034c66c47c0a12a94be7d76",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCPRequestSize(Ros1Dobot_v4_bringupCPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCPRequestCapture(value), n = Ros1Dobot_v4_bringupCPRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCPRequestSize(value)
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

function Ros1Dobot_v4_bringupCPRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupCPRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupCPRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CPResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68fd2bec24a6b67275838832909dbb0b8dc0e733c2366ad37ebe7a7e71693513",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCPResponseSize(Ros1Dobot_v4_bringupCPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCPResponseCapture(value), n = Ros1Dobot_v4_bringupCPResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCPResponseSize(value)
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

function Ros1Dobot_v4_bringupCPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupCPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupCPResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CalcToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCalcToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0df2645542e9b21986f200bc67313c82873f09b1ddaf09fcf0508d8db54a4424",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCalcToolRequestSize(Ros1Dobot_v4_bringupCalcToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCalcToolRequestCapture(value), n = Ros1Dobot_v4_bringupCalcToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCalcToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCalcToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCalcToolRequestSize(value)
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

function Ros1Dobot_v4_bringupCalcToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros1Dobot_v4_bringupCalcToolRequestRead(r)
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

function Ros1Dobot_v4_bringupCalcToolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CalcToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCalcToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7053f39e313c5cc7d9b7778a01c253dd6557a0909f287c916d1fc95b9495c9b0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCalcToolResponseSize(Ros1Dobot_v4_bringupCalcToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCalcToolResponseCapture(value), n = Ros1Dobot_v4_bringupCalcToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCalcToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCalcToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCalcToolResponseSize(value)
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

function Ros1Dobot_v4_bringupCalcToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupCalcToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupCalcToolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CalcUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCalcUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_50aba389bc763c0c8e652ea7bb6f1a270708ebc5225f2a1377d1089db4a79a45",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCalcUserRequestSize(Ros1Dobot_v4_bringupCalcUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCalcUserRequestCapture(value), n = Ros1Dobot_v4_bringupCalcUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCalcUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCalcUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCalcUserRequestSize(value)
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

function Ros1Dobot_v4_bringupCalcUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros1Dobot_v4_bringupCalcUserRequestRead(r)
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

function Ros1Dobot_v4_bringupCalcUserRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CalcUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCalcUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76e431bdd83d3eab9bbd5c729403625c35800cc54969db89f07ed123f6573516",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCalcUserResponseSize(Ros1Dobot_v4_bringupCalcUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCalcUserResponseCapture(value), n = Ros1Dobot_v4_bringupCalcUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCalcUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCalcUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCalcUserResponseSize(value)
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

function Ros1Dobot_v4_bringupCalcUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupCalcUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupCalcUserResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CircleRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCircleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c4cf7ae596c53bd499bb42c41e255bb11fa8502b8b7b755b4f93a90f935a1315",
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
            "paramValue" : []
        };
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCircleRequestSize(Ros1Dobot_v4_bringupCircleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCircleRequestCapture(value), n = Ros1Dobot_v4_bringupCircleRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCircleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4265, 90);
        if(owned.length < 105)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCircleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCircleRequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4265)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupCircleRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupCircleRequestRead(r)
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

function Ros1Dobot_v4_bringupCircleRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/CircleResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupCircleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2862bd2f86cf2bae6ecb3a4ad66028cbec380b50f1ad68e8d8e8eb5edbe07ee2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupCircleResponseSize(Ros1Dobot_v4_bringupCircleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupCircleResponseCapture(value), n = Ros1Dobot_v4_bringupCircleResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupCircleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupCircleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupCircleResponseSize(value)
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

function Ros1Dobot_v4_bringupCircleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupCircleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupCircleResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ClearErrorRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupClearErrorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e19d003e7788f8e7fab5248172d7a065af2810a88a170ff180c6b89a665efdbe",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupClearErrorRequestSize(Ros1Dobot_v4_bringupClearErrorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupClearErrorRequestCapture(value), n = Ros1Dobot_v4_bringupClearErrorRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupClearErrorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupClearErrorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupClearErrorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupClearErrorRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupClearErrorRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupClearErrorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/ClearErrorResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupClearErrorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d9ddcd9d69236ba1f0d8507d11e8c831fae9da929789911b2a861ae1902f8cd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupClearErrorResponseSize(Ros1Dobot_v4_bringupClearErrorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupClearErrorResponseCapture(value), n = Ros1Dobot_v4_bringupClearErrorResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupClearErrorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupClearErrorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupClearErrorResponseSize(value)
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

function Ros1Dobot_v4_bringupClearErrorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupClearErrorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupClearErrorResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ContinueRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupContinueRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a45b75caa5a568ad0a6e5c16860905ab09c2a235422b55c65eadde4bee1527bb",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupContinueRequestSize(Ros1Dobot_v4_bringupContinueRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupContinueRequestCapture(value), n = Ros1Dobot_v4_bringupContinueRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupContinueRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupContinueRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupContinueRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupContinueRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupContinueRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupContinueRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/ContinueResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupContinueResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cedb844bcaeeb932ba5cb519c2a9c1b53bbfac16187afd91122500199422f200",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupContinueResponseSize(Ros1Dobot_v4_bringupContinueResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupContinueResponseCapture(value), n = Ros1Dobot_v4_bringupContinueResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupContinueResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupContinueResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupContinueResponseSize(value)
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

function Ros1Dobot_v4_bringupContinueResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupContinueResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupContinueResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6a8bb81e4400e5877fa1e45ab7ca52d7489bec2d1e7962f68ae3746ce86f1d00",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDIRequestSize(Ros1Dobot_v4_bringupDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDIRequestCapture(value), n = Ros1Dobot_v4_bringupDIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDIRequestSize(value)
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

function Ros1Dobot_v4_bringupDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDIRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce95967f7dd2a0e517da80142d0ccc626dbbeee7e704a5a6fc2acec4a4c80127",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDIResponseSize(Ros1Dobot_v4_bringupDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDIResponseCapture(value), n = Ros1Dobot_v4_bringupDIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDIResponseSize(value)
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

function Ros1Dobot_v4_bringupDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDIResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DIGroupRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDIGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8743b807e224b75c331e7b45610542ec1bfbac56a3dce7a233036b81de6d98f3",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDIGroupRequestSize(Ros1Dobot_v4_bringupDIGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDIGroupRequestCapture(value), n = Ros1Dobot_v4_bringupDIGroupRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDIGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDIGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDIGroupRequestSize(value)
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

function Ros1Dobot_v4_bringupDIGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_v4_bringupDIGroupRequestRead(r)
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

function Ros1Dobot_v4_bringupDIGroupRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DIGroupResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDIGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2c8281e742dd72d2678aa27c9392fb28b894e171a76c5572f7e761d9943859b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDIGroupResponseSize(Ros1Dobot_v4_bringupDIGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDIGroupResponseCapture(value), n = Ros1Dobot_v4_bringupDIGroupResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDIGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDIGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDIGroupResponseSize(value)
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

function Ros1Dobot_v4_bringupDIGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDIGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDIGroupResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_217446154f7ccb7edfe8300a81eefa28b74ac62ed827815582d0fc94187fbce4",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0, "time" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDORequestSize(Ros1Dobot_v4_bringupDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDORequestCapture(value), n = Ros1Dobot_v4_bringupDORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDORequestSize(value)
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

function Ros1Dobot_v4_bringupDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["time"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDORequestRead(r)
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

function Ros1Dobot_v4_bringupDORequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4d6137412e39525097890303751e6c4b961617716513dc9f2b97a8cf63f09f68",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDOResponseSize(Ros1Dobot_v4_bringupDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDOResponseCapture(value), n = Ros1Dobot_v4_bringupDOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDOResponseSize(value)
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

function Ros1Dobot_v4_bringupDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDOResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6c5ae015279806913f33fa50fa9e9d52d89666db9a54e93b83838cce3bb836c7",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDOGroupRequestSize(Ros1Dobot_v4_bringupDOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDOGroupRequestCapture(value), n = Ros1Dobot_v4_bringupDOGroupRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDOGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDOGroupRequestSize(value)
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

function Ros1Dobot_v4_bringupDOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_v4_bringupDOGroupRequestRead(r)
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

function Ros1Dobot_v4_bringupDOGroupRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3c9906d6a26c050fc8cf0595fab79bb1c8477f17f2a0733bc0751d0c228f37e6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDOGroupResponseSize(Ros1Dobot_v4_bringupDOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDOGroupResponseCapture(value), n = Ros1Dobot_v4_bringupDOGroupResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDOGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDOGroupResponseSize(value)
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

function Ros1Dobot_v4_bringupDOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDOGroupResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f968dae5e7f68a2a1e1c32404558c63be2e8aec8ff023b0fbb3e026bb673aad4",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDOInstantRequestSize(Ros1Dobot_v4_bringupDOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDOInstantRequestCapture(value), n = Ros1Dobot_v4_bringupDOInstantRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDOInstantRequestSize(value)
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

function Ros1Dobot_v4_bringupDOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDOInstantRequestRead(r)
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

function Ros1Dobot_v4_bringupDOInstantRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5a5d9e8621454763bfba5d951fea0fbc812392c05480eb9e3c68467be0205b80",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDOInstantResponseSize(Ros1Dobot_v4_bringupDOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDOInstantResponseCapture(value), n = Ros1Dobot_v4_bringupDOInstantResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDOInstantResponseSize(value)
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

function Ros1Dobot_v4_bringupDOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDOInstantResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DisableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDisableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c6e708a921cafac92702f7ac2a4d4d8a99bdca411c6c62c668d86c6b1246af8d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDisableRobotRequestSize(Ros1Dobot_v4_bringupDisableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDisableRobotRequestCapture(value), n = Ros1Dobot_v4_bringupDisableRobotRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDisableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDisableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDisableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupDisableRobotRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupDisableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupDisableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/DisableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDisableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_57dcc628039c6319ae3d47d4bee25019b22a516da860f7561231c4a31b198ca9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDisableRobotResponseSize(Ros1Dobot_v4_bringupDisableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDisableRobotResponseCapture(value), n = Ros1Dobot_v4_bringupDisableRobotResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDisableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDisableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDisableRobotResponseSize(value)
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

function Ros1Dobot_v4_bringupDisableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDisableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDisableRobotResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DragSensivityRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDragSensivityRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e34dfb6c394f5fd6d364731a6edd4d7911c27984ae9c60ec20fb2e622bb65441",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDragSensivityRequestSize(Ros1Dobot_v4_bringupDragSensivityRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDragSensivityRequestCapture(value), n = Ros1Dobot_v4_bringupDragSensivityRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDragSensivityRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDragSensivityRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDragSensivityRequestSize(value)
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

function Ros1Dobot_v4_bringupDragSensivityRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDragSensivityRequestRead(r)
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

function Ros1Dobot_v4_bringupDragSensivityRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/DragSensivityResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupDragSensivityResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_519737a35d454c88bdae4aaeffc61034760b17b845b3b2266f6ad6098601cd76",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupDragSensivityResponseSize(Ros1Dobot_v4_bringupDragSensivityResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupDragSensivityResponseCapture(value), n = Ros1Dobot_v4_bringupDragSensivityResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupDragSensivityResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupDragSensivityResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupDragSensivityResponseSize(value)
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

function Ros1Dobot_v4_bringupDragSensivityResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupDragSensivityResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupDragSensivityResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/EmergencyStopRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEmergencyStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_751a963045462cb152b6149d95f78f18be48efd3c34cddd43920b6df82363499",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEmergencyStopRequestSize(Ros1Dobot_v4_bringupEmergencyStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEmergencyStopRequestCapture(value), n = Ros1Dobot_v4_bringupEmergencyStopRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEmergencyStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEmergencyStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEmergencyStopRequestSize(value)
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

function Ros1Dobot_v4_bringupEmergencyStopRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupEmergencyStopRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupEmergencyStopRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/EmergencyStopResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEmergencyStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5d4c00864d6e596dd996a12f3e13433bc25c75a21c7dd59c98aac974b42b5b8e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEmergencyStopResponseSize(Ros1Dobot_v4_bringupEmergencyStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEmergencyStopResponseCapture(value), n = Ros1Dobot_v4_bringupEmergencyStopResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEmergencyStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEmergencyStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEmergencyStopResponseSize(value)
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

function Ros1Dobot_v4_bringupEmergencyStopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupEmergencyStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupEmergencyStopResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/EnableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEnableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a90b41b0ae5a740685220749838870540605b68d6ed85f5cdf56e218890d53b",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEnableRobotRequestSize(Ros1Dobot_v4_bringupEnableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEnableRobotRequestCapture(value), n = Ros1Dobot_v4_bringupEnableRobotRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEnableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEnableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEnableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupEnableRobotRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupEnableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupEnableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/EnableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEnableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c645bec5758f33cc9dc330ca00591e042088ac27794c76f670e1d0a52a869c9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEnableRobotResponseSize(Ros1Dobot_v4_bringupEnableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEnableRobotResponseCapture(value), n = Ros1Dobot_v4_bringupEnableRobotResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEnableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEnableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEnableRobotResponseSize(value)
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

function Ros1Dobot_v4_bringupEnableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupEnableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupEnableRobotResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/EnableSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_808633a5f3d4d6957be1585bae876d0b40f46c7fdec3a5df0e8161473fe989cf",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEnableSafeSkinRequestSize(Ros1Dobot_v4_bringupEnableSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEnableSafeSkinRequestCapture(value), n = Ros1Dobot_v4_bringupEnableSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEnableSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEnableSafeSkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEnableSafeSkinRequestSize(value)
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

function Ros1Dobot_v4_bringupEnableSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupEnableSafeSkinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupEnableSafeSkinRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/EnableSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fb8254b1bc58adce25fcffb34d9bdcf5a4e07b6ab11ea4a91b449bf2917f3310",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupEnableSafeSkinResponseSize(Ros1Dobot_v4_bringupEnableSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupEnableSafeSkinResponseCapture(value), n = Ros1Dobot_v4_bringupEnableSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupEnableSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupEnableSafeSkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupEnableSafeSkinResponseSize(value)
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

function Ros1Dobot_v4_bringupEnableSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupEnableSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupEnableSafeSkinResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetAORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetAORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6edf6d9edc215d7cdc0d4c2027be30c4c6f4a62b08882e4a80a49bf714fe6766",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetAORequestSize(Ros1Dobot_v4_bringupGetAORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetAORequestCapture(value), n = Ros1Dobot_v4_bringupGetAORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetAORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetAORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetAORequestSize(value)
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

function Ros1Dobot_v4_bringupGetAORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetAORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetAORequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetAOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetAOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a2471d7551b75a07f5f567140cbfd17a9b6f7caf94d318188fc50d5e15dd2746",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "robot_return" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetAOResponseSize(Ros1Dobot_v4_bringupGetAOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetAOResponseCapture(value), n = Ros1Dobot_v4_bringupGetAOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetAOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetAOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetAOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetAOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.text(value["robot_return"], 256);
}

function Ros1Dobot_v4_bringupGetAOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetAOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetAngleRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetAngleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16c02d9ba6329342c29a8819abe4fd8f48e8267f8ff2dbec35ede12905a611d0",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetAngleRequestSize(Ros1Dobot_v4_bringupGetAngleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetAngleRequestCapture(value), n = Ros1Dobot_v4_bringupGetAngleRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetAngleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetAngleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetAngleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetAngleRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupGetAngleRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupGetAngleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetAngleResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetAngleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4fe5219badc2c657bd42c12ea64e9c5dab3365bb3c37246a29ed8bd3ae8e22f5",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "robot_return" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetAngleResponseSize(Ros1Dobot_v4_bringupGetAngleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetAngleResponseCapture(value), n = Ros1Dobot_v4_bringupGetAngleResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetAngleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetAngleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetAngleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetAngleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.text(value["robot_return"], 256);
}

function Ros1Dobot_v4_bringupGetAngleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetAngleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db257b1f763246d21165a2bc458ed7a46aa556d9a96d088c730e6372e3d2fb92",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetCoilsRequestSize(Ros1Dobot_v4_bringupGetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetCoilsRequestCapture(value), n = Ros1Dobot_v4_bringupGetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetCoilsRequestSize(value)
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

function Ros1Dobot_v4_bringupGetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetCoilsRequestRead(r)
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

function Ros1Dobot_v4_bringupGetCoilsRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a6d5b73423a5f0f8097d7ca7475d0843182b48110da4aace20a74f95f6dafc5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetCoilsResponseSize(Ros1Dobot_v4_bringupGetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetCoilsResponseCapture(value), n = Ros1Dobot_v4_bringupGetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetCoilsResponseSize(value)
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

function Ros1Dobot_v4_bringupGetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetCoilsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetCurrentCommandIdRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8b2749c6976e425cfc622010d79df2e9528097e1941c454d7f6f4f5f5fc54e8d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetCurrentCommandIdRequestSize(Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCapture(value), n = Ros1Dobot_v4_bringupGetCurrentCommandIdRequestSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupGetCurrentCommandIdRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetCurrentCommandIdRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetCurrentCommandIdRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetCurrentCommandIdRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupGetCurrentCommandIdRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetCurrentCommandIdResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_565405eaf7f5fcac5ae019988c00f2899cea6ff4c4250a67005b06887f1ae5ac",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetCurrentCommandIdResponseSize(Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCapture(value), n = Ros1Dobot_v4_bringupGetCurrentCommandIdResponseSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupGetCurrentCommandIdResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetCurrentCommandIdResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetCurrentCommandIdResponseSize(value)
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

function Ros1Dobot_v4_bringupGetCurrentCommandIdResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetCurrentCommandIdResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetDORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19195b8cf21c0a7cae4fe54c048b2503c2a9908cdf31e38bdabff62c70d961d2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetDORequestSize(Ros1Dobot_v4_bringupGetDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetDORequestCapture(value), n = Ros1Dobot_v4_bringupGetDORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetDORequestSize(value)
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

function Ros1Dobot_v4_bringupGetDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetDORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetDORequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetDOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a92d0f090fddd9ad8f59c65806847c6398245fa2bbd5b4b39fe37819710bdd11",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "robot_return" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetDOResponseSize(Ros1Dobot_v4_bringupGetDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetDOResponseCapture(value), n = Ros1Dobot_v4_bringupGetDOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetDOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.text(value["robot_return"], 256);
}

function Ros1Dobot_v4_bringupGetDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetDOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetDOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetDOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9beafb5ca7d5b030df02f8d5f31a84dd88cc1e517cd4a77452ebfab11f3da2e5",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index_group" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetDOGroupRequestSize(Ros1Dobot_v4_bringupGetDOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetDOGroupRequestCapture(value), n = Ros1Dobot_v4_bringupGetDOGroupRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetDOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetDOGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetDOGroupRequestSize(value)
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

function Ros1Dobot_v4_bringupGetDOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["index_group"].length, true);
    w.at += 4;
    for(const element of value["index_group"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Dobot_v4_bringupGetDOGroupRequestRead(r)
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

function Ros1Dobot_v4_bringupGetDOGroupRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetDOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetDOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1796d32cb1299efd973c1e4dececb02d8de2fc808f51301b9fc879074d5b8ff8",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "robot_return" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetDOGroupResponseSize(Ros1Dobot_v4_bringupGetDOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetDOGroupResponseCapture(value), n = Ros1Dobot_v4_bringupGetDOGroupResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetDOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetDOGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetDOGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetDOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.text(value["robot_return"], 256);
}

function Ros1Dobot_v4_bringupGetDOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetDOGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetErrorIDRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetErrorIDRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5ddee0cd0b4a7957f7383fba800ed224d777a10f4131f9c8e58f08cfa2725af",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetErrorIDRequestSize(Ros1Dobot_v4_bringupGetErrorIDRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetErrorIDRequestCapture(value), n = Ros1Dobot_v4_bringupGetErrorIDRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetErrorIDRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetErrorIDRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetErrorIDRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetErrorIDRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupGetErrorIDRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupGetErrorIDRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetErrorIDResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetErrorIDResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_441486082ce57caa45b1c8bcf59c8e030121ccf2c02a768bad75cf48251912ad",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"error_id" : [], "res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetErrorIDResponseSize(Ros1Dobot_v4_bringupGetErrorIDResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetErrorIDResponseCapture(value), n = Ros1Dobot_v4_bringupGetErrorIDResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetErrorIDResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetErrorIDResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetErrorIDResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["error_id"]) || value["error_id"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["error_id"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 72)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetErrorIDResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["error_id"].length, true);
    w.at += 4;
    for(const element of value["error_id"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetErrorIDResponseRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["error_id"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["error_id"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetErrorIDResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["error_id"];
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
        out["error_id"] = values;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3650c4e191a889cef5e991e5e0addd3ef179e1e2a97701c45ccc52983732665f",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetHoldRegsRequestSize(Ros1Dobot_v4_bringupGetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetHoldRegsRequestCapture(value), n = Ros1Dobot_v4_bringupGetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetHoldRegsRequestSize(value)
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
    n = addSize(n, 4 + textBytes(value["valType"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetHoldRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valType"], 256);
}

function Ros1Dobot_v4_bringupGetHoldRegsRequestRead(r)
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
        value["valType"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetHoldRegsRequestCapture(value)
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
        out["valType"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1cc22537d26e548a8e6af625e1834eb6e2b72583c8fcfd670fbfdc3f02af7c9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetHoldRegsResponseSize(Ros1Dobot_v4_bringupGetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetHoldRegsResponseCapture(value), n = Ros1Dobot_v4_bringupGetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetHoldRegsResponseSize(value)
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

function Ros1Dobot_v4_bringupGetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetHoldRegsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInBitsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInBitsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_211d7c410772f45147665b8006d620537cb9882f1458b913418b7366ea78b589",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInBitsRequestSize(Ros1Dobot_v4_bringupGetInBitsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInBitsRequestCapture(value), n = Ros1Dobot_v4_bringupGetInBitsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInBitsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInBitsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInBitsRequestSize(value)
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

function Ros1Dobot_v4_bringupGetInBitsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInBitsRequestRead(r)
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

function Ros1Dobot_v4_bringupGetInBitsRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInBitsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInBitsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc0a3d63f3ddd678b5a6e634bd08e2bf2bd4ef3da044e113ef7c6bc26a58c330",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInBitsResponseSize(Ros1Dobot_v4_bringupGetInBitsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInBitsResponseCapture(value), n = Ros1Dobot_v4_bringupGetInBitsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInBitsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInBitsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInBitsResponseSize(value)
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

function Ros1Dobot_v4_bringupGetInBitsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInBitsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInBitsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bbe0aa5f578101e5b6fb5fbec91d1709dc2300534dbcbd0477703ac031a83906",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInRegsRequestSize(Ros1Dobot_v4_bringupGetInRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInRegsRequestCapture(value), n = Ros1Dobot_v4_bringupGetInRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInRegsRequestSize(value)
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
    n = addSize(n, 4 + textBytes(value["valType"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetInRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valType"], 256);
}

function Ros1Dobot_v4_bringupGetInRegsRequestRead(r)
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
        value["valType"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInRegsRequestCapture(value)
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
        out["valType"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetInRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc6b6dddf948716f9aecdcf7c63a76e3ab7af2e9c1a1d89963a2b98f03072bc4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInRegsResponseSize(Ros1Dobot_v4_bringupGetInRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInRegsResponseCapture(value), n = Ros1Dobot_v4_bringupGetInRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInRegsResponseSize(value)
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

function Ros1Dobot_v4_bringupGetInRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInRegsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_af3ba33796db3f3ba7797d8f906d6dc05045046195f269e919476a20291a28cc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputBoolRequestSize(Ros1Dobot_v4_bringupGetInputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputBoolRequestCapture(value), n = Ros1Dobot_v4_bringupGetInputBoolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputBoolRequestSize(value)
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

function Ros1Dobot_v4_bringupGetInputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputBoolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputBoolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dfe96bdd3f71be06416875e14d869467b372eb527a771521819c8c175bc0b97d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputBoolResponseSize(Ros1Dobot_v4_bringupGetInputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputBoolResponseCapture(value), n = Ros1Dobot_v4_bringupGetInputBoolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputBoolResponseSize(value)
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

function Ros1Dobot_v4_bringupGetInputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputBoolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49735777bcc4877ea6258cbd7e78b7eff3e4bf755a06aff3349e8209717aa30f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputFloatRequestSize(Ros1Dobot_v4_bringupGetInputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputFloatRequestCapture(value), n = Ros1Dobot_v4_bringupGetInputFloatRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputFloatRequestSize(value)
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

function Ros1Dobot_v4_bringupGetInputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputFloatRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputFloatRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b416d69f80a62975bd44ed6ae96b661e3fefab6a6fa4e7502b95e8b58a34c9dc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputFloatResponseSize(Ros1Dobot_v4_bringupGetInputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputFloatResponseCapture(value), n = Ros1Dobot_v4_bringupGetInputFloatResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputFloatResponseSize(value)
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

function Ros1Dobot_v4_bringupGetInputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputFloatResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputIntRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2c8f2a7af769f2b7deb8424c85cabf8b2d20724123814db147d3e730db5c63be",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputIntRequestSize(Ros1Dobot_v4_bringupGetInputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputIntRequestCapture(value), n = Ros1Dobot_v4_bringupGetInputIntRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputIntRequestSize(value)
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

function Ros1Dobot_v4_bringupGetInputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputIntRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputIntRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetInputIntResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetInputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dd5128340e3165bbbede1cdda7ed5a9f2bd581cc784d7ae9574cc901ce75fa74",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetInputIntResponseSize(Ros1Dobot_v4_bringupGetInputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetInputIntResponseCapture(value), n = Ros1Dobot_v4_bringupGetInputIntResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetInputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetInputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetInputIntResponseSize(value)
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

function Ros1Dobot_v4_bringupGetInputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetInputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetInputIntResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e97f4a2a8f0ce7e0f0131882f8c8200362c0fe2566da4fcdd6306025acd33e82",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputBoolRequestSize(Ros1Dobot_v4_bringupGetOutputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputBoolRequestCapture(value), n = Ros1Dobot_v4_bringupGetOutputBoolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputBoolRequestSize(value)
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

function Ros1Dobot_v4_bringupGetOutputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputBoolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputBoolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_af8f6ede73968ba90408f39db9ad6efdfb1191cc09fabd2f9e9a4178ca30e575",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputBoolResponseSize(Ros1Dobot_v4_bringupGetOutputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputBoolResponseCapture(value), n = Ros1Dobot_v4_bringupGetOutputBoolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputBoolResponseSize(value)
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

function Ros1Dobot_v4_bringupGetOutputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputBoolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_990689595afde1ed64940238b7dd332e5f570e0242413c7cfe3ba0c5eebfa064",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputFloatRequestSize(Ros1Dobot_v4_bringupGetOutputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputFloatRequestCapture(value), n = Ros1Dobot_v4_bringupGetOutputFloatRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputFloatRequestSize(value)
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

function Ros1Dobot_v4_bringupGetOutputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputFloatRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputFloatRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d63bd12901980b0c11cc5ab5a9b189fb28607a009273cd3ebd24ecc7ec32f41e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputFloatResponseSize(Ros1Dobot_v4_bringupGetOutputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputFloatResponseCapture(value), n = Ros1Dobot_v4_bringupGetOutputFloatResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputFloatResponseSize(value)
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

function Ros1Dobot_v4_bringupGetOutputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputFloatResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputIntRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9ab878fc3c207c7e4a06ca94cfe2bb7884abaf00486178014cc4b0a6eeebb0a8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputIntRequestSize(Ros1Dobot_v4_bringupGetOutputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputIntRequestCapture(value), n = Ros1Dobot_v4_bringupGetOutputIntRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputIntRequestSize(value)
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

function Ros1Dobot_v4_bringupGetOutputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputIntRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputIntRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetOutputIntResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetOutputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea5487388ef99cbfed64ed989030505e48e86b129722e0316f2d31f8311417f9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetOutputIntResponseSize(Ros1Dobot_v4_bringupGetOutputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetOutputIntResponseCapture(value), n = Ros1Dobot_v4_bringupGetOutputIntResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetOutputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetOutputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetOutputIntResponseSize(value)
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

function Ros1Dobot_v4_bringupGetOutputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetOutputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetOutputIntResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b14d36ef472212b0064947960115f9227536b0c759748c9fb6c9fa6458d704bd",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetPoseRequestSize(Ros1Dobot_v4_bringupGetPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetPoseRequestCapture(value), n = Ros1Dobot_v4_bringupGetPoseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetPoseRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupGetPoseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupGetPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f19589706bd734833519083d4c8273fd8c2b570535b7617fea2384364b604f94",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "robot_return" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetPoseResponseSize(Ros1Dobot_v4_bringupGetPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetPoseResponseCapture(value), n = Ros1Dobot_v4_bringupGetPoseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_return"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.text(value["robot_return"], 256);
}

function Ros1Dobot_v4_bringupGetPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_return"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["robot_return"];
        out["robot_return"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/GetStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b85c88ac53f37bbcec66d8507f254a034f3b293b79f06c567c0bf56b35cf0982",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetStartPoseRequestSize(Ros1Dobot_v4_bringupGetStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetStartPoseRequestCapture(value), n = Ros1Dobot_v4_bringupGetStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetStartPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupGetStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Dobot_v4_bringupGetStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetStartPoseRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/GetStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupGetStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0c6ab6a86912de5662ac8a4b70b92f2814b6bf0bc60ae4b8a3e6aea7597f4d4e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupGetStartPoseResponseSize(Ros1Dobot_v4_bringupGetStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupGetStartPoseResponseCapture(value), n = Ros1Dobot_v4_bringupGetStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupGetStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupGetStartPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupGetStartPoseResponseSize(value)
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

function Ros1Dobot_v4_bringupGetStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupGetStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupGetStartPoseResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/InverseKinRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupInverseKinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1fc643085bcd0497163c216049ede91418cdae716192a40200946df7b78c1593",
    maxWireBytes : 1088,
    minWireBytes : 64,
    cartesianMaxWireBytes : 1088n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"X" : 0, "Y" : 0, "Z" : 0, "Rx" : 0, "Ry" : 0, "Rz" : 0, "useJointNear" : "", "jointNear" : "", "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupInverseKinRequestSize(Ros1Dobot_v4_bringupInverseKinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupInverseKinRequestCapture(value), n = Ros1Dobot_v4_bringupInverseKinRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupInverseKinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1088, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupInverseKinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupInverseKinRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["X"] !== "number" || !Number.isFinite(value["X"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["Y"] !== "number" || !Number.isFinite(value["Y"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["Z"] !== "number" || !Number.isFinite(value["Z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["Rx"] !== "number" || !Number.isFinite(value["Rx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["Ry"] !== "number" || !Number.isFinite(value["Ry"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["Rz"] !== "number" || !Number.isFinite(value["Rz"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["useJointNear"], 256).length);
    n = addSize(n, 4 + textBytes(value["jointNear"], 256).length);
    n = addSize(n, 4 + textBytes(value["user"], 256).length);
    n = addSize(n, 4 + textBytes(value["tool"], 256).length);
    if(n > 1088)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupInverseKinRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["X"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["Y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["Z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["Rx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["Ry"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["Rz"], true);
    w.at += 8;
    w.text(value["useJointNear"], 256);
    w.text(value["jointNear"], 256);
    w.text(value["user"], 256);
    w.text(value["tool"], 256);
}

function Ros1Dobot_v4_bringupInverseKinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["X"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["Y"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["Z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["Rx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["Ry"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["Rz"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["useJointNear"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["jointNear"] = decoded;
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

function Ros1Dobot_v4_bringupInverseKinRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["X"];
        out["X"] = field;
    }
    {
        const field = value["Y"];
        out["Y"] = field;
    }
    {
        const field = value["Z"];
        out["Z"] = field;
    }
    {
        const field = value["Rx"];
        out["Rx"] = field;
    }
    {
        const field = value["Ry"];
        out["Ry"] = field;
    }
    {
        const field = value["Rz"];
        out["Rz"] = field;
    }
    {
        const field = value["useJointNear"];
        out["useJointNear"] = field;
    }
    {
        const field = value["jointNear"];
        out["jointNear"] = field;
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

/** Complete ROS1 dobot_v4_bringup/InverseKinResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupInverseKinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5a69917a9c3130c4c46715c919ef1d8ed3de7008d99f1ac5008dd2d6ebc675c7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupInverseKinResponseSize(Ros1Dobot_v4_bringupInverseKinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupInverseKinResponseCapture(value), n = Ros1Dobot_v4_bringupInverseKinResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupInverseKinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupInverseKinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupInverseKinResponseSize(value)
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

function Ros1Dobot_v4_bringupInverseKinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupInverseKinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupInverseKinResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/InverseSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupInverseSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4150dfc83a8068093066ac2fe63a2f9b1f2cc3698da4c42fc8972c9a620bf896",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"parameter" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupInverseSolutionRequestSize(Ros1Dobot_v4_bringupInverseSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupInverseSolutionRequestCapture(value), n = Ros1Dobot_v4_bringupInverseSolutionRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupInverseSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupInverseSolutionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupInverseSolutionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["parameter"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupInverseSolutionRequestWrite(value, w)
{
    w.text(value["parameter"], 256);
}

function Ros1Dobot_v4_bringupInverseSolutionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["parameter"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupInverseSolutionRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/InverseSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupInverseSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1530a9f8f40c2a470d09f448daffaddbcdef69f38b1465d63fc1bc911eab961c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupInverseSolutionResponseSize(Ros1Dobot_v4_bringupInverseSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupInverseSolutionResponseCapture(value), n = Ros1Dobot_v4_bringupInverseSolutionResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupInverseSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupInverseSolutionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupInverseSolutionResponseSize(value)
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

function Ros1Dobot_v4_bringupInverseSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupInverseSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupInverseSolutionResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ModbusCloseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusCloseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c00f96f924c6dd2acada1843246631cfb2c93debb4016a05aac6acdee33635fa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusCloseRequestSize(Ros1Dobot_v4_bringupModbusCloseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusCloseRequestCapture(value), n = Ros1Dobot_v4_bringupModbusCloseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusCloseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusCloseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusCloseRequestSize(value)
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

function Ros1Dobot_v4_bringupModbusCloseRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupModbusCloseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupModbusCloseRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ModbusCloseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusCloseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f5c36f5e16f70b47d1931b5bbd568d0f315c8b1dc50f69340327f0e30c4909e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusCloseResponseSize(Ros1Dobot_v4_bringupModbusCloseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusCloseResponseCapture(value), n = Ros1Dobot_v4_bringupModbusCloseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusCloseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusCloseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusCloseResponseSize(value)
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

function Ros1Dobot_v4_bringupModbusCloseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupModbusCloseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupModbusCloseResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ModbusCreateRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64da2676ebcc30b9e29ec04e635f05386a3ff347fa6df3ff493aa25e4d78b26d",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : "", "port" : 0, "slave_id" : 0, "isRTU" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusCreateRequestSize(Ros1Dobot_v4_bringupModbusCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusCreateRequestCapture(value), n = Ros1Dobot_v4_bringupModbusCreateRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusCreateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusCreateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["slave_id"], 4, true);
    n = addSize(n, 4);
    integer(value["isRTU"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupModbusCreateRequestWrite(value, w)
{
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["isRTU"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupModbusCreateRequestRead(r)
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
        value["isRTU"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupModbusCreateRequestCapture(value)
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
        const field = value["isRTU"];
        out["isRTU"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/ModbusCreateResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_32376a5b5a7a278cd7bc728ea0ffda38c64a16c35f595ce6b13b83372cbb083b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusCreateResponseSize(Ros1Dobot_v4_bringupModbusCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusCreateResponseCapture(value), n = Ros1Dobot_v4_bringupModbusCreateResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusCreateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusCreateResponseSize(value)
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

function Ros1Dobot_v4_bringupModbusCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupModbusCreateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupModbusCreateResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ModbusRTUCreateRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_684c27217fe081396d625eb0809a3aa3eec48fda11e6ff0eebb315dddac6175d",
    maxWireBytes : 276,
    minWireBytes : 20,
    cartesianMaxWireBytes : 276n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"slave_id" : 0, "baud" : 0, "parity" : "", "data_bit" : 0, "stop_bit" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusRTUCreateRequestSize(Ros1Dobot_v4_bringupModbusRTUCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusRTUCreateRequestCapture(value), n = Ros1Dobot_v4_bringupModbusRTUCreateRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusRTUCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 276, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusRTUCreateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusRTUCreateRequestSize(value)
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

function Ros1Dobot_v4_bringupModbusRTUCreateRequestWrite(value, w)
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

function Ros1Dobot_v4_bringupModbusRTUCreateRequestRead(r)
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

function Ros1Dobot_v4_bringupModbusRTUCreateRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ModbusRTUCreateResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28a693e382f42f9edc460ef956a0b6108aebeaef33b8db6ae2625425963912df",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupModbusRTUCreateResponseSize(Ros1Dobot_v4_bringupModbusRTUCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupModbusRTUCreateResponseCapture(value), n = Ros1Dobot_v4_bringupModbusRTUCreateResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupModbusRTUCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupModbusRTUCreateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupModbusRTUCreateResponseSize(value)
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

function Ros1Dobot_v4_bringupModbusRTUCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupModbusRTUCreateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupModbusRTUCreateResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d2d053541befd5bcd9a058f7f50709ed7a1ddf0caa743cd567187e467f99ae0",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovJRequestSize(Ros1Dobot_v4_bringupMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovJRequestCapture(value), n = Ros1Dobot_v4_bringupMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovJRequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4213)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupMovJRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupMovJRequestRead(r)
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

function Ros1Dobot_v4_bringupMovJRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_921c511aec3f1fbf1fb965317b30be98aaeab757bb24052f27219083fe5012d0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovJResponseSize(Ros1Dobot_v4_bringupMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovJResponseCapture(value), n = Ros1Dobot_v4_bringupMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovJResponseSize(value)
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

function Ros1Dobot_v4_bringupMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupMovJResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovJIORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovJIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6639020680bee5c91a094deba0a308821d7ee51c255cee6952f6773a43484193",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "MDIS" : [], "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovJIORequestSize(Ros1Dobot_v4_bringupMovJIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovJIORequestCapture(value), n = Ros1Dobot_v4_bringupMovJIORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovJIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovJIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovJIORequestSize(value)
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
    if(!Array.isArray(value["MDIS"]) || value["MDIS"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["MDIS"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 8377)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupMovJIORequestWrite(value, w)
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
    w.v.setUint32(w.at, value["MDIS"].length, true);
    w.at += 4;
    for(const element of value["MDIS"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupMovJIORequestRead(r)
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
            value["MDIS"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["MDIS"].push(decoded);
            }
        }
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

function Ros1Dobot_v4_bringupMovJIORequestCapture(value)
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
        const field = value["MDIS"];
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
        out["MDIS"] = values;
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

/** Complete ROS1 dobot_v4_bringup/MovJIOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovJIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c410d54a6ab703948c0841151572e618741eb2441af100d68480eddf6cdb2e45",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovJIOResponseSize(Ros1Dobot_v4_bringupMovJIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovJIOResponseCapture(value), n = Ros1Dobot_v4_bringupMovJIOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovJIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovJIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovJIOResponseSize(value)
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

function Ros1Dobot_v4_bringupMovJIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupMovJIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupMovJIOResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_72589769e592fb4d1bded8fc453ee435d45b11d94e5179cdf19f7e4bab04173f",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovLRequestSize(Ros1Dobot_v4_bringupMovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovLRequestCapture(value), n = Ros1Dobot_v4_bringupMovLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovLRequestSize(value)
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
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 4213)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupMovLRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupMovLRequestRead(r)
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

function Ros1Dobot_v4_bringupMovLRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04c674d611a52c37184c4b8991acbb81d9edda1185f5210082e9a77ba9dfcd6d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovLResponseSize(Ros1Dobot_v4_bringupMovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovLResponseCapture(value), n = Ros1Dobot_v4_bringupMovLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovLResponseSize(value)
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

function Ros1Dobot_v4_bringupMovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupMovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupMovLResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MovLIORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovLIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_df87ae10d55cdb0566a7ba522ce4df0f53b1c291e647ab8f073448280fdcd43f",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "MDIS" : [], "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovLIORequestSize(Ros1Dobot_v4_bringupMovLIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovLIORequestCapture(value), n = Ros1Dobot_v4_bringupMovLIORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovLIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovLIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovLIORequestSize(value)
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
    if(!Array.isArray(value["MDIS"]) || value["MDIS"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["MDIS"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["paramValue"]) || value["paramValue"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["paramValue"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 8377)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupMovLIORequestWrite(value, w)
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
    w.v.setUint32(w.at, value["MDIS"].length, true);
    w.at += 4;
    for(const element of value["MDIS"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupMovLIORequestRead(r)
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
            value["MDIS"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["MDIS"].push(decoded);
            }
        }
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

function Ros1Dobot_v4_bringupMovLIORequestCapture(value)
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
        const field = value["MDIS"];
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
        out["MDIS"] = values;
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

/** Complete ROS1 dobot_v4_bringup/MovLIOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMovLIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c9cb157242bbaa12d30ff4010775c96c4596668e07f1fffa18700f7f0aeeec47",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMovLIOResponseSize(Ros1Dobot_v4_bringupMovLIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMovLIOResponseCapture(value), n = Ros1Dobot_v4_bringupMovLIOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMovLIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMovLIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMovLIOResponseSize(value)
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

function Ros1Dobot_v4_bringupMovLIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupMovLIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupMovLIOResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_450e321ee26aed642b7e5bfb7b7faec3ac86c3cce7d03e61bceea90ec0a195d4",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMoveJogRequestSize(Ros1Dobot_v4_bringupMoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMoveJogRequestCapture(value), n = Ros1Dobot_v4_bringupMoveJogRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMoveJogRequestSize(value)
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

function Ros1Dobot_v4_bringupMoveJogRequestWrite(value, w)
{
    w.text(value["axisID"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupMoveJogRequestRead(r)
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

function Ros1Dobot_v4_bringupMoveJogRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/MoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupMoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d7fcf1ce9c2d2ccc437ca0fc9abe4963bdf6ca6ce7f549e130286f14fe5f6781",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupMoveJogResponseSize(Ros1Dobot_v4_bringupMoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupMoveJogResponseCapture(value), n = Ros1Dobot_v4_bringupMoveJogResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupMoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupMoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupMoveJogResponseSize(value)
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

function Ros1Dobot_v4_bringupMoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupMoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupMoveJogResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/PauseRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a3cbf1728596a646540afd89a3de57662a65b53cd973098a97e604ea9e8c5f79",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPauseRequestSize(Ros1Dobot_v4_bringupPauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPauseRequestCapture(value), n = Ros1Dobot_v4_bringupPauseRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPauseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupPauseRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupPauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupPauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/PauseResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67fc61818824bc4608b94d2af853eee7835331d0d4b64cb62f98f08ec2050030",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPauseResponseSize(Ros1Dobot_v4_bringupPauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPauseResponseCapture(value), n = Ros1Dobot_v4_bringupPauseResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPauseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPauseResponseSize(value)
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

function Ros1Dobot_v4_bringupPauseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupPauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupPauseResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/PositiveKinRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPositiveKinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_591cc2000db7e9c1bd10f43c28ec13dc902d3f8ab5c37ff7a9f9ca080d26bccc",
    maxWireBytes : 568,
    minWireBytes : 56,
    cartesianMaxWireBytes : 568n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"J1" : 0, "J2" : 0, "J3" : 0, "J4" : 0, "J5" : 0, "J6" : 0, "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPositiveKinRequestSize(Ros1Dobot_v4_bringupPositiveKinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPositiveKinRequestCapture(value), n = Ros1Dobot_v4_bringupPositiveKinRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPositiveKinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 568, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPositiveKinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPositiveKinRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["J1"] !== "number" || !Number.isFinite(value["J1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["J2"] !== "number" || !Number.isFinite(value["J2"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["J3"] !== "number" || !Number.isFinite(value["J3"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["J4"] !== "number" || !Number.isFinite(value["J4"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["J5"] !== "number" || !Number.isFinite(value["J5"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["J6"] !== "number" || !Number.isFinite(value["J6"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["user"], 256).length);
    n = addSize(n, 4 + textBytes(value["tool"], 256).length);
    if(n > 568)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupPositiveKinRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["J1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["J2"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["J3"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["J4"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["J5"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["J6"], true);
    w.at += 8;
    w.text(value["user"], 256);
    w.text(value["tool"], 256);
}

function Ros1Dobot_v4_bringupPositiveKinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J2"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J3"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J4"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J5"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["J6"] = decoded;
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

function Ros1Dobot_v4_bringupPositiveKinRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["J1"];
        out["J1"] = field;
    }
    {
        const field = value["J2"];
        out["J2"] = field;
    }
    {
        const field = value["J3"];
        out["J3"] = field;
    }
    {
        const field = value["J4"];
        out["J4"] = field;
    }
    {
        const field = value["J5"];
        out["J5"] = field;
    }
    {
        const field = value["J6"];
        out["J6"] = field;
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

/** Complete ROS1 dobot_v4_bringup/PositiveKinResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPositiveKinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a06a04b9c67a9891835877ce46bdbc9a6d56cc9880798b4534154c0695b5606a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPositiveKinResponseSize(Ros1Dobot_v4_bringupPositiveKinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPositiveKinResponseCapture(value), n = Ros1Dobot_v4_bringupPositiveKinResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPositiveKinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPositiveKinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPositiveKinResponseSize(value)
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

function Ros1Dobot_v4_bringupPositiveKinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupPositiveKinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupPositiveKinResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/PowerOnRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPowerOnRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_febf93c0dc17185154a3ad45760e9aa3b22642fb5c7c86ac3269befcb9e2a27c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPowerOnRequestSize(Ros1Dobot_v4_bringupPowerOnRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPowerOnRequestCapture(value), n = Ros1Dobot_v4_bringupPowerOnRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPowerOnRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPowerOnRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPowerOnRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupPowerOnRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupPowerOnRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupPowerOnRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/PowerOnResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupPowerOnResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_083b811d381b30810ae8741b69bfc8c18634f4003f0216ce535dc2187c337622",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupPowerOnResponseSize(Ros1Dobot_v4_bringupPowerOnResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupPowerOnResponseCapture(value), n = Ros1Dobot_v4_bringupPowerOnResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupPowerOnResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupPowerOnResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupPowerOnResponseSize(value)
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

function Ros1Dobot_v4_bringupPowerOnResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupPowerOnResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupPowerOnResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelJointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelJointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03f3ee9c0715609f67b971e2588df919c7a23ea6bf3a520ba737e4d1e1c08141",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelJointMovJRequestSize(Ros1Dobot_v4_bringupRelJointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelJointMovJRequestCapture(value), n = Ros1Dobot_v4_bringupRelJointMovJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelJointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelJointMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelJointMovJRequestSize(value)
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

function Ros1Dobot_v4_bringupRelJointMovJRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupRelJointMovJRequestRead(r)
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

function Ros1Dobot_v4_bringupRelJointMovJRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelJointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelJointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3ba9eb45a9f54a9f705c20ec1cce417003d702415cf0fc1280694e226c54084f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelJointMovJResponseSize(Ros1Dobot_v4_bringupRelJointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelJointMovJResponseCapture(value), n = Ros1Dobot_v4_bringupRelJointMovJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelJointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelJointMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelJointMovJResponseSize(value)
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

function Ros1Dobot_v4_bringupRelJointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRelJointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRelJointMovJResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovJToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovJToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f7882c7e426f08ad98387385892480255a9824c5ca72c424f8424ceae14e621",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovJToolRequestSize(Ros1Dobot_v4_bringupRelMovJToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovJToolRequestCapture(value), n = Ros1Dobot_v4_bringupRelMovJToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovJToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovJToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovJToolRequestSize(value)
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

function Ros1Dobot_v4_bringupRelMovJToolRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupRelMovJToolRequestRead(r)
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

function Ros1Dobot_v4_bringupRelMovJToolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovJToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovJToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3173c722c2d008f6e7964d46324d691863810f1b98904fb8f56cf4a1f97b6fdc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovJToolResponseSize(Ros1Dobot_v4_bringupRelMovJToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovJToolResponseCapture(value), n = Ros1Dobot_v4_bringupRelMovJToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovJToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovJToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovJToolResponseSize(value)
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

function Ros1Dobot_v4_bringupRelMovJToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRelMovJToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRelMovJToolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovJUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovJUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_12612601f4b55c9c84b6822877d95821ac1aec746eac88e24b17dd352f2d63b8",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovJUserRequestSize(Ros1Dobot_v4_bringupRelMovJUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovJUserRequestCapture(value), n = Ros1Dobot_v4_bringupRelMovJUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovJUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovJUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovJUserRequestSize(value)
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

function Ros1Dobot_v4_bringupRelMovJUserRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupRelMovJUserRequestRead(r)
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

function Ros1Dobot_v4_bringupRelMovJUserRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovJUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovJUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c29d480624bcb6db26ed0b3e38f7183135f13be6412a93a6bcdd1efd46428489",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovJUserResponseSize(Ros1Dobot_v4_bringupRelMovJUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovJUserResponseCapture(value), n = Ros1Dobot_v4_bringupRelMovJUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovJUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovJUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovJUserResponseSize(value)
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

function Ros1Dobot_v4_bringupRelMovJUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRelMovJUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRelMovJUserResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovLToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovLToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11c9c4d6308ddc948238fce13e554bfba93ef74e6f6cb1086ee02bd2818709ce",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovLToolRequestSize(Ros1Dobot_v4_bringupRelMovLToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovLToolRequestCapture(value), n = Ros1Dobot_v4_bringupRelMovLToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovLToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovLToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovLToolRequestSize(value)
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

function Ros1Dobot_v4_bringupRelMovLToolRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupRelMovLToolRequestRead(r)
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

function Ros1Dobot_v4_bringupRelMovLToolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovLToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovLToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bfe57ec92c1f5cc5251706b273b15cae12d35ed49463b47008027272c5d51236",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovLToolResponseSize(Ros1Dobot_v4_bringupRelMovLToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovLToolResponseCapture(value), n = Ros1Dobot_v4_bringupRelMovLToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovLToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovLToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovLToolResponseSize(value)
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

function Ros1Dobot_v4_bringupRelMovLToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRelMovLToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRelMovLToolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovLUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovLUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7eec6fcd3cac592a1f516e25e58e3b5bd5da693c08fe5df4cadf294147d4e591",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovLUserRequestSize(Ros1Dobot_v4_bringupRelMovLUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovLUserRequestCapture(value), n = Ros1Dobot_v4_bringupRelMovLUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovLUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovLUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovLUserRequestSize(value)
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

function Ros1Dobot_v4_bringupRelMovLUserRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupRelMovLUserRequestRead(r)
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

function Ros1Dobot_v4_bringupRelMovLUserRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RelMovLUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRelMovLUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_054f03b4d48cded4e1712243f4d5eb8b989a16124b4202ab42b0e634997b472c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRelMovLUserResponseSize(Ros1Dobot_v4_bringupRelMovLUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRelMovLUserResponseCapture(value), n = Ros1Dobot_v4_bringupRelMovLUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRelMovLUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRelMovLUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRelMovLUserResponseSize(value)
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

function Ros1Dobot_v4_bringupRelMovLUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRelMovLUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRelMovLUserResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db094c3c5c75ecc89ac3be728e54b84fb5354509cf7632263f6797df9db109c7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRobotModeRequestSize(Ros1Dobot_v4_bringupRobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRobotModeRequestCapture(value), n = Ros1Dobot_v4_bringupRobotModeRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRobotModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupRobotModeRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupRobotModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupRobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/RobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f501109846c455fc295cd94a65059561dfee05fc6755573801460fe140bf6e40",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRobotModeResponseSize(Ros1Dobot_v4_bringupRobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRobotModeResponseCapture(value), n = Ros1Dobot_v4_bringupRobotModeResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRobotModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRobotModeResponseSize(value)
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

function Ros1Dobot_v4_bringupRobotModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRobotModeResponseRead(r)
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

function Ros1Dobot_v4_bringupRobotModeResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RunScriptRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRunScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45c7863ab78220099ce9ad559ac406d490317ac47ef35d662cdf9ef64774ec98",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"projectName" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRunScriptRequestSize(Ros1Dobot_v4_bringupRunScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRunScriptRequestCapture(value), n = Ros1Dobot_v4_bringupRunScriptRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRunScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRunScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRunScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["projectName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupRunScriptRequestWrite(value, w)
{
    w.text(value["projectName"], 256);
}

function Ros1Dobot_v4_bringupRunScriptRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["projectName"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRunScriptRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/RunScriptResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupRunScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bbe00f0e717c2efe2ff2f2b42985635e9813dbabb584d814a335e447a85d0209",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupRunScriptResponseSize(Ros1Dobot_v4_bringupRunScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupRunScriptResponseCapture(value), n = Ros1Dobot_v4_bringupRunScriptResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupRunScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupRunScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupRunScriptResponseSize(value)
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

function Ros1Dobot_v4_bringupRunScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupRunScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupRunScriptResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ServoJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupServoJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c9b347c879ceef3a11dfcfc0fc2ada53897da98b02d9dee443784e25471ed51",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupServoJRequestSize(Ros1Dobot_v4_bringupServoJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupServoJRequestCapture(value), n = Ros1Dobot_v4_bringupServoJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupServoJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupServoJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupServoJRequestSize(value)
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

function Ros1Dobot_v4_bringupServoJRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupServoJRequestRead(r)
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

function Ros1Dobot_v4_bringupServoJRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ServoJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupServoJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a0391d4e27035d998781aedc40c4098c8ff026cc8808a8888dd322ecb91446c1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupServoJResponseSize(Ros1Dobot_v4_bringupServoJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupServoJResponseCapture(value), n = Ros1Dobot_v4_bringupServoJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupServoJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupServoJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupServoJResponseSize(value)
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

function Ros1Dobot_v4_bringupServoJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupServoJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupServoJResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ServoPRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupServoPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ec8a39a2ec5e21509b6012a05ac9af8c71f4e268079bc611519fd397bd4ea8e",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupServoPRequestSize(Ros1Dobot_v4_bringupServoPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupServoPRequestCapture(value), n = Ros1Dobot_v4_bringupServoPRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupServoPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupServoPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupServoPRequestSize(value)
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

function Ros1Dobot_v4_bringupServoPRequestWrite(value, w)
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
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupServoPRequestRead(r)
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

function Ros1Dobot_v4_bringupServoPRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ServoPResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupServoPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_534495c7b3b9faed99ab16dd7c20ba75a0d603b146a4fdff3285109630915104",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupServoPResponseSize(Ros1Dobot_v4_bringupServoPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupServoPResponseCapture(value), n = Ros1Dobot_v4_bringupServoPResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupServoPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupServoPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupServoPResponseSize(value)
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

function Ros1Dobot_v4_bringupServoPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupServoPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupServoPResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetBackDistanceRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetBackDistanceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_adcf7f43e4a0bed230f8a1c884fed6fa9fc905f06f5b2a5d8e7423eba6b43678",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"distance" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetBackDistanceRequestSize(Ros1Dobot_v4_bringupSetBackDistanceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetBackDistanceRequestCapture(value), n = Ros1Dobot_v4_bringupSetBackDistanceRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetBackDistanceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetBackDistanceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetBackDistanceRequestSize(value)
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

function Ros1Dobot_v4_bringupSetBackDistanceRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["distance"], true);
    w.at += 8;
}

function Ros1Dobot_v4_bringupSetBackDistanceRequestRead(r)
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

function Ros1Dobot_v4_bringupSetBackDistanceRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetBackDistanceResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetBackDistanceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48b61c9636dd4d31c3913e6bb59786ddc18d32e376ff86b5dd05cd9899933afe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetBackDistanceResponseSize(Ros1Dobot_v4_bringupSetBackDistanceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetBackDistanceResponseCapture(value), n = Ros1Dobot_v4_bringupSetBackDistanceResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetBackDistanceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetBackDistanceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetBackDistanceResponseSize(value)
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

function Ros1Dobot_v4_bringupSetBackDistanceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetBackDistanceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetBackDistanceResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d2c663c0cd38d7aae9af549af9f152da09208ba3ce16fd573241b9f0b99d2073",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetCoilsRequestSize(Ros1Dobot_v4_bringupSetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetCoilsRequestCapture(value), n = Ros1Dobot_v4_bringupSetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetCoilsRequestSize(value)
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

function Ros1Dobot_v4_bringupSetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
}

function Ros1Dobot_v4_bringupSetCoilsRequestRead(r)
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

function Ros1Dobot_v4_bringupSetCoilsRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c3bea118bd8b50d72266258c8cbcaa8db4528cdcc85e4c7234f50c6429f1f4f7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetCoilsResponseSize(Ros1Dobot_v4_bringupSetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetCoilsResponseCapture(value), n = Ros1Dobot_v4_bringupSetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetCoilsResponseSize(value)
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

function Ros1Dobot_v4_bringupSetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetCoilsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetCollisionLevelRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95070390623bee07bf7b44485a93ab842dc625bd7f888fa2a396081d276cccfc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetCollisionLevelRequestSize(Ros1Dobot_v4_bringupSetCollisionLevelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetCollisionLevelRequestCapture(value), n = Ros1Dobot_v4_bringupSetCollisionLevelRequestSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetCollisionLevelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetCollisionLevelRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetCollisionLevelRequestSize(value)
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

function Ros1Dobot_v4_bringupSetCollisionLevelRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetCollisionLevelRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetCollisionLevelRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetCollisionLevelResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_324d9b64e48fa00ed7f6af2340626606c8dd0ba2600cda102795b035a57a5c9f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetCollisionLevelResponseSize(Ros1Dobot_v4_bringupSetCollisionLevelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetCollisionLevelResponseCapture(value), n = Ros1Dobot_v4_bringupSetCollisionLevelResponseSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetCollisionLevelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetCollisionLevelResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetCollisionLevelResponseSize(value)
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

function Ros1Dobot_v4_bringupSetCollisionLevelResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetCollisionLevelResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetCollisionLevelResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce0be97769833910877870774a7c09712b508d0d5e85f667bb035078cf5930c3",
    maxWireBytes : 532,
    minWireBytes : 20,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : "", "valType" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetHoldRegsRequestSize(Ros1Dobot_v4_bringupSetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetHoldRegsRequestCapture(value), n = Ros1Dobot_v4_bringupSetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetHoldRegsRequestSize(value)
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
    n = addSize(n, 4 + textBytes(value["valType"], 256).length);
    if(n > 532)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupSetHoldRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
    w.text(value["valType"], 256);
}

function Ros1Dobot_v4_bringupSetHoldRegsRequestRead(r)
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
        const decoded = r.text(256);
        value["valType"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetHoldRegsRequestCapture(value)
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
        const field = value["valType"];
        out["valType"] = field;
    }
    return out;
}

/** Complete ROS1 dobot_v4_bringup/SetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a229c428efede3153687496efa244e092b74a6c2005f1423c50a7a90e21f7e7b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetHoldRegsResponseSize(Ros1Dobot_v4_bringupSetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetHoldRegsResponseCapture(value), n = Ros1Dobot_v4_bringupSetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetHoldRegsResponseSize(value)
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

function Ros1Dobot_v4_bringupSetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetHoldRegsResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4dc10539aa485449c8f65b7ad655c5c717d0c76c41fa716701e9cf5d6e7d97e9",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputBoolRequestSize(Ros1Dobot_v4_bringupSetOutputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputBoolRequestCapture(value), n = Ros1Dobot_v4_bringupSetOutputBoolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputBoolRequestSize(value)
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

function Ros1Dobot_v4_bringupSetOutputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetOutputBoolRequestRead(r)
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

function Ros1Dobot_v4_bringupSetOutputBoolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b43783a0f3182850b9202524236865cc1bb5cb20ee6a89591254ca04be13569a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputBoolResponseSize(Ros1Dobot_v4_bringupSetOutputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputBoolResponseCapture(value), n = Ros1Dobot_v4_bringupSetOutputBoolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputBoolResponseSize(value)
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

function Ros1Dobot_v4_bringupSetOutputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetOutputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetOutputBoolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e11b4f70006a95e074cf18a7c890bf33e0d2f387e881a953bad162926fe05f50",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputFloatRequestSize(Ros1Dobot_v4_bringupSetOutputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputFloatRequestCapture(value), n = Ros1Dobot_v4_bringupSetOutputFloatRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputFloatRequestSize(value)
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

function Ros1Dobot_v4_bringupSetOutputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
}

function Ros1Dobot_v4_bringupSetOutputFloatRequestRead(r)
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

function Ros1Dobot_v4_bringupSetOutputFloatRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_653b5afbd26aab760b89953a1c3743bf0fa4b1b2380b9f38b6f3fcb53f0ddfba",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputFloatResponseSize(Ros1Dobot_v4_bringupSetOutputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputFloatResponseCapture(value), n = Ros1Dobot_v4_bringupSetOutputFloatResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputFloatResponseSize(value)
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

function Ros1Dobot_v4_bringupSetOutputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetOutputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetOutputFloatResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputIntRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_54cfb622d13838cc5e615d9defaccac8afeb3f4892af057eccf5a19a64d5f8ff",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputIntRequestSize(Ros1Dobot_v4_bringupSetOutputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputIntRequestCapture(value), n = Ros1Dobot_v4_bringupSetOutputIntRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputIntRequestSize(value)
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

function Ros1Dobot_v4_bringupSetOutputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetOutputIntRequestRead(r)
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

function Ros1Dobot_v4_bringupSetOutputIntRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetOutputIntResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetOutputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d7a10823e931d77cc176cd8546bbb4acbe9f785ff85f7b82c692022d963d9c8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetOutputIntResponseSize(Ros1Dobot_v4_bringupSetOutputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetOutputIntResponseCapture(value), n = Ros1Dobot_v4_bringupSetOutputIntResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetOutputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetOutputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetOutputIntResponseSize(value)
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

function Ros1Dobot_v4_bringupSetOutputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetOutputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetOutputIntResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetPayloadRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetPayloadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f595c502f4b08f1d2cffbd7f5a03e468f544acd0cfb4e3b8c162b9597baa6d00",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"load" : 0, "x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetPayloadRequestSize(Ros1Dobot_v4_bringupSetPayloadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetPayloadRequestCapture(value), n = Ros1Dobot_v4_bringupSetPayloadRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetPayloadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetPayloadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetPayloadRequestSize(value)
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

function Ros1Dobot_v4_bringupSetPayloadRequestWrite(value, w)
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

function Ros1Dobot_v4_bringupSetPayloadRequestRead(r)
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

function Ros1Dobot_v4_bringupSetPayloadRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetPayloadResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetPayloadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48b853fc66e97448549a9c89d644dac6be37cd5482ed23eb6a5e966bd9a3fc5a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetPayloadResponseSize(Ros1Dobot_v4_bringupSetPayloadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetPayloadResponseCapture(value), n = Ros1Dobot_v4_bringupSetPayloadResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetPayloadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetPayloadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetPayloadResponseSize(value)
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

function Ros1Dobot_v4_bringupSetPayloadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetPayloadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetPayloadResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetPostCollisionModeRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0545d1a4bb62c939cb3a555bb86c8d1451c0a94fb5f58161cce4a00a69317ca1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetPostCollisionModeRequestSize(Ros1Dobot_v4_bringupSetPostCollisionModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetPostCollisionModeRequestCapture(value), n = Ros1Dobot_v4_bringupSetPostCollisionModeRequestSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetPostCollisionModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetPostCollisionModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetPostCollisionModeRequestSize(value)
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

function Ros1Dobot_v4_bringupSetPostCollisionModeRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetPostCollisionModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetPostCollisionModeRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetPostCollisionModeResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2c4ded3d9403c49014bb1aaa918df2298e2b1ea0879de86dcdc7afa9c74a13ca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetPostCollisionModeResponseSize(Ros1Dobot_v4_bringupSetPostCollisionModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetPostCollisionModeResponseCapture(value), n = Ros1Dobot_v4_bringupSetPostCollisionModeResponseSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetPostCollisionModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetPostCollisionModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetPostCollisionModeResponseSize(value)
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

function Ros1Dobot_v4_bringupSetPostCollisionModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetPostCollisionModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetPostCollisionModeResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_286a323ff9b51342a23b7c9befae1957ee665b168085693211752f07100043a5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"part" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetSafeSkinRequestSize(Ros1Dobot_v4_bringupSetSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetSafeSkinRequestCapture(value), n = Ros1Dobot_v4_bringupSetSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetSafeSkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetSafeSkinRequestSize(value)
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

function Ros1Dobot_v4_bringupSetSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["part"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetSafeSkinRequestRead(r)
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

function Ros1Dobot_v4_bringupSetSafeSkinRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_428dd7f45382c6a5ebe42c6ddb9f17fc6b01c7ed776aecf2c9f9570448da3410",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetSafeSkinResponseSize(Ros1Dobot_v4_bringupSetSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetSafeSkinResponseCapture(value), n = Ros1Dobot_v4_bringupSetSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetSafeSkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetSafeSkinResponseSize(value)
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

function Ros1Dobot_v4_bringupSetSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetSafeSkinResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetSafeWallEnableRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e6bef1c1d7179067d1462e9e907c460de545291a2667edd848d98d315f3c3752",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetSafeWallEnableRequestSize(Ros1Dobot_v4_bringupSetSafeWallEnableRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetSafeWallEnableRequestCapture(value), n = Ros1Dobot_v4_bringupSetSafeWallEnableRequestSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetSafeWallEnableRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetSafeWallEnableRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetSafeWallEnableRequestSize(value)
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

function Ros1Dobot_v4_bringupSetSafeWallEnableRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetSafeWallEnableRequestRead(r)
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

function Ros1Dobot_v4_bringupSetSafeWallEnableRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetSafeWallEnableResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f0d58947a5f34736a3c5a9636d635bd491687c3f2c893f1518ea5541b762eb9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetSafeWallEnableResponseSize(Ros1Dobot_v4_bringupSetSafeWallEnableResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetSafeWallEnableResponseCapture(value), n = Ros1Dobot_v4_bringupSetSafeWallEnableResponseSize(owned),
              w = new Writer(n);
        Ros1Dobot_v4_bringupSetSafeWallEnableResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetSafeWallEnableResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetSafeWallEnableResponseSize(value)
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

function Ros1Dobot_v4_bringupSetSafeWallEnableResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetSafeWallEnableResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetSafeWallEnableResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_234d8c421ca776a041338014ac44f72771adaf6ff651ba106860f046a8c08be6",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolRequestSize(Ros1Dobot_v4_bringupSetToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolRequestCapture(value), n = Ros1Dobot_v4_bringupSetToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolRequestSize(value)
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

function Ros1Dobot_v4_bringupSetToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros1Dobot_v4_bringupSetToolRequestRead(r)
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

function Ros1Dobot_v4_bringupSetToolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_61868fe36fc4a8662d3a9f49fb85a4cb634ea4cf75aa605df90483f068f8b58b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolResponseSize(Ros1Dobot_v4_bringupSetToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolResponseCapture(value), n = Ros1Dobot_v4_bringupSetToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolResponseSize(value)
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

function Ros1Dobot_v4_bringupSetToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetToolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetTool485Request codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetTool485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e2ae0a5cf35e88a8a75cea89420a1ff2d98b105ba632b1e8e1f79243cad0f23",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baudrate" : 0, "parity" : "", "stop" : 0, "identify" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetTool485RequestSize(Ros1Dobot_v4_bringupSetTool485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetTool485RequestCapture(value), n = Ros1Dobot_v4_bringupSetTool485RequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetTool485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetTool485RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetTool485RequestSize(value)
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

function Ros1Dobot_v4_bringupSetTool485RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baudrate"], true);
    w.at += 4;
    w.text(value["parity"], 256);
    w.v.setInt32(w.at, value["stop"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["identify"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetTool485RequestRead(r)
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

function Ros1Dobot_v4_bringupSetTool485RequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetTool485Response codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetTool485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_480290ba112a8b97a9bb095b562a4785163ac5eef16456d7f0d71aecd261b106",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetTool485ResponseSize(Ros1Dobot_v4_bringupSetTool485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetTool485ResponseCapture(value), n = Ros1Dobot_v4_bringupSetTool485ResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetTool485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetTool485ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetTool485ResponseSize(value)
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

function Ros1Dobot_v4_bringupSetTool485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetTool485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetTool485ResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolModeRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4d5f4cc539ac40ca9e1a3391a8ecec08bd21a7cf6786e446f0d7a5715e6602c6",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "type" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolModeRequestSize(Ros1Dobot_v4_bringupSetToolModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolModeRequestCapture(value), n = Ros1Dobot_v4_bringupSetToolModeRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolModeRequestSize(value)
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

function Ros1Dobot_v4_bringupSetToolModeRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetToolModeRequestRead(r)
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

function Ros1Dobot_v4_bringupSetToolModeRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolModeResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_649722f4a14ae41877d63a3548e85d84c9a6806fea7d196e95edb36af1ef6e4c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolModeResponseSize(Ros1Dobot_v4_bringupSetToolModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolModeResponseCapture(value), n = Ros1Dobot_v4_bringupSetToolModeResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolModeResponseSize(value)
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

function Ros1Dobot_v4_bringupSetToolModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetToolModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetToolModeResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolPowerRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolPowerRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cea4d794f6180bafb35e19e2e71af5a5a42292cb73e766c158a004c6f345d23d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolPowerRequestSize(Ros1Dobot_v4_bringupSetToolPowerRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolPowerRequestCapture(value), n = Ros1Dobot_v4_bringupSetToolPowerRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolPowerRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolPowerRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolPowerRequestSize(value)
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

function Ros1Dobot_v4_bringupSetToolPowerRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetToolPowerRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetToolPowerRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetToolPowerResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetToolPowerResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eb775fbc240808c8ea01782321a17dbdeabbcf83fde9c216cd8e6f4cfec090fa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetToolPowerResponseSize(Ros1Dobot_v4_bringupSetToolPowerResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetToolPowerResponseCapture(value), n = Ros1Dobot_v4_bringupSetToolPowerResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetToolPowerResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetToolPowerResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetToolPowerResponseSize(value)
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

function Ros1Dobot_v4_bringupSetToolPowerResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetToolPowerResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetToolPowerResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetUserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eec1aad23f7d3246de4f87119f8290891020284f8bf3e4f8acef1e2bffb97e7f",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetUserRequestSize(Ros1Dobot_v4_bringupSetUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetUserRequestCapture(value), n = Ros1Dobot_v4_bringupSetUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetUserRequestSize(value)
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

function Ros1Dobot_v4_bringupSetUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros1Dobot_v4_bringupSetUserRequestRead(r)
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

function Ros1Dobot_v4_bringupSetUserRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SetUserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSetUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da1d0c25b01b85a2269be1ec836cb0da150f8832bdd06ffc53d9d4f5deae2d8f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSetUserResponseSize(Ros1Dobot_v4_bringupSetUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSetUserResponseCapture(value), n = Ros1Dobot_v4_bringupSetUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSetUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSetUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSetUserResponseSize(value)
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

function Ros1Dobot_v4_bringupSetUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSetUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSetUserResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SpeedFactorRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSpeedFactorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4eab746249dee5320f3bc0d731d85eeb8060c60b65f204e6e833508ff3faef57",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ratio" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSpeedFactorRequestSize(Ros1Dobot_v4_bringupSpeedFactorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSpeedFactorRequestCapture(value), n = Ros1Dobot_v4_bringupSpeedFactorRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSpeedFactorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSpeedFactorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSpeedFactorRequestSize(value)
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

function Ros1Dobot_v4_bringupSpeedFactorRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["ratio"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSpeedFactorRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ratio"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSpeedFactorRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/SpeedFactorResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupSpeedFactorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b448225f95253f9ce0a7012e38f01c908eef51a11a320849354ed7fc1f3b1f25",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupSpeedFactorResponseSize(Ros1Dobot_v4_bringupSpeedFactorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupSpeedFactorResponseCapture(value), n = Ros1Dobot_v4_bringupSpeedFactorResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupSpeedFactorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupSpeedFactorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupSpeedFactorResponseSize(value)
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

function Ros1Dobot_v4_bringupSpeedFactorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupSpeedFactorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupSpeedFactorResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/StartDragRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStartDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ede11b1e30e11d5ed503b7bc204770414f1bb33c9f2119c6b03b82969cafe13",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStartDragRequestSize(Ros1Dobot_v4_bringupStartDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStartDragRequestCapture(value), n = Ros1Dobot_v4_bringupStartDragRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStartDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStartDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStartDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupStartDragRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupStartDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupStartDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/StartDragResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStartDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89cee72ba144cb297405a8fdea43615365becf766786ee720d031650281e19fe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStartDragResponseSize(Ros1Dobot_v4_bringupStartDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStartDragResponseCapture(value), n = Ros1Dobot_v4_bringupStartDragResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStartDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStartDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStartDragResponseSize(value)
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

function Ros1Dobot_v4_bringupStartDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupStartDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupStartDragResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/StartPathRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStartPathRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b60e3b0507f96d0eb0b57d3505fb8ce1dcca24b7c2c4f085a6a4b112522b287",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStartPathRequestSize(Ros1Dobot_v4_bringupStartPathRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStartPathRequestCapture(value), n = Ros1Dobot_v4_bringupStartPathRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStartPathRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStartPathRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStartPathRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
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

function Ros1Dobot_v4_bringupStartPathRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Dobot_v4_bringupStartPathRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
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

function Ros1Dobot_v4_bringupStartPathRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["traceName"];
        out["traceName"] = field;
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

/** Complete ROS1 dobot_v4_bringup/StartPathResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStartPathResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_02f4dd92d34dc45a6af3ccc2b502a191a9a2fbb20cb9e2a06d2c8b01a3584f5b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStartPathResponseSize(Ros1Dobot_v4_bringupStartPathResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStartPathResponseCapture(value), n = Ros1Dobot_v4_bringupStartPathResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStartPathResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStartPathResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStartPathResponseSize(value)
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

function Ros1Dobot_v4_bringupStartPathResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupStartPathResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupStartPathResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/StopRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78ab4eea783ce8abe9194f8b2d616c24f964979810b362293fd98e91fc5f6944",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopRequestSize(Ros1Dobot_v4_bringupStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopRequestCapture(value), n = Ros1Dobot_v4_bringupStopRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupStopRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupStopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/StopResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ce859a03909196a0930210187ca68de91d59e4342ab4b14cce539ca47deb658",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopResponseSize(Ros1Dobot_v4_bringupStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopResponseCapture(value), n = Ros1Dobot_v4_bringupStopResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopResponseSize(value)
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

function Ros1Dobot_v4_bringupStopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupStopResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/StopDragRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6dc356f2c21a015b15bac869f7b5b09546d439cc565ca1e975747da4f10fe1fa",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopDragRequestSize(Ros1Dobot_v4_bringupStopDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopDragRequestCapture(value), n = Ros1Dobot_v4_bringupStopDragRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupStopDragRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupStopDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupStopDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/StopDragResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a31820a0cc661ee6a4a0353861278179d1eddd145559a15b8ae8a5ee0ca7b2b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopDragResponseSize(Ros1Dobot_v4_bringupStopDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopDragResponseCapture(value), n = Ros1Dobot_v4_bringupStopDragResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopDragResponseSize(value)
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

function Ros1Dobot_v4_bringupStopDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupStopDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupStopDragResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/StopMoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopMoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_765c4ab2ea63c07eb4e7ce4154299c807fdffe0753ecbf534abf6ea19585ece4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopMoveJogRequestSize(Ros1Dobot_v4_bringupStopMoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopMoveJogRequestCapture(value), n = Ros1Dobot_v4_bringupStopMoveJogRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopMoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopMoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopMoveJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupStopMoveJogRequestWrite(value, w)
{
}

function Ros1Dobot_v4_bringupStopMoveJogRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dobot_v4_bringupStopMoveJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dobot_v4_bringup/StopMoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupStopMoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f462238c13bd0c400ff2b12654522ca62cf977fab46d7fa005b3657569024388",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupStopMoveJogResponseSize(Ros1Dobot_v4_bringupStopMoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupStopMoveJogResponseCapture(value), n = Ros1Dobot_v4_bringupStopMoveJogResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupStopMoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupStopMoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupStopMoveJogResponseSize(value)
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

function Ros1Dobot_v4_bringupStopMoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupStopMoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupStopMoveJogResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/TcpDashboardRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupTcpDashboardRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_988e229bfb04a13951a62933389efbc38eddc8e05ce5fc70cad3b73d308c7563",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupTcpDashboardRequestSize(Ros1Dobot_v4_bringupTcpDashboardRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupTcpDashboardRequestCapture(value), n = Ros1Dobot_v4_bringupTcpDashboardRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupTcpDashboardRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupTcpDashboardRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupTcpDashboardRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupTcpDashboardRequestWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros1Dobot_v4_bringupTcpDashboardRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupTcpDashboardRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/TcpDashboardResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupTcpDashboardResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1a6ef1b972cedaae3ebd9715ceb6ee42e954452b041d5049eb884e0fa339706",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : ""};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupTcpDashboardResponseSize(Ros1Dobot_v4_bringupTcpDashboardResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupTcpDashboardResponseCapture(value), n = Ros1Dobot_v4_bringupTcpDashboardResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupTcpDashboardResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupTcpDashboardResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupTcpDashboardResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["result"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dobot_v4_bringupTcpDashboardResponseWrite(value, w)
{
    w.text(value["result"], 256);
}

function Ros1Dobot_v4_bringupTcpDashboardResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["result"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupTcpDashboardResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3669e9fcacdc173c5f21c23ec0e37660297060da2f7729463a3d0c47e970e622",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolRequestSize(Ros1Dobot_v4_bringupToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolRequestCapture(value), n = Ros1Dobot_v4_bringupToolRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolRequestSize(value)
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

function Ros1Dobot_v4_bringupToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc6e1fd014bfa55d4a20dad58f2f4a4c5affb997c20b9ba632fa95bb06bcfac5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolResponseSize(Ros1Dobot_v4_bringupToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolResponseCapture(value), n = Ros1Dobot_v4_bringupToolResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolResponseSize(value)
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

function Ros1Dobot_v4_bringupToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolAIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b06a075924f700c691dd0d1c82ab595a2143fc34c4c894ac04a380f42b00f2cc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolAIRequestSize(Ros1Dobot_v4_bringupToolAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolAIRequestCapture(value), n = Ros1Dobot_v4_bringupToolAIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolAIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolAIRequestSize(value)
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

function Ros1Dobot_v4_bringupToolAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolAIRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolAIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2daa4fde9a7192cd5443ef47bed4a4ada4f09dd3b061acb978749d6b33998ca9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolAIResponseSize(Ros1Dobot_v4_bringupToolAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolAIResponseCapture(value), n = Ros1Dobot_v4_bringupToolAIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolAIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolAIResponseSize(value)
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

function Ros1Dobot_v4_bringupToolAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolAIResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDIRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_75272c99d4d77f910dbfd19e61f61a8bb5706076c16668532f4cd7b4cf8bf949",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDIRequestSize(Ros1Dobot_v4_bringupToolDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDIRequestCapture(value), n = Ros1Dobot_v4_bringupToolDIRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDIRequestSize(value)
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

function Ros1Dobot_v4_bringupToolDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolDIRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDIResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_26e9c240222943e006e4c8194ea789db5719d2243183fa6caa86cf00cf5319cc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDIResponseSize(Ros1Dobot_v4_bringupToolDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDIResponseCapture(value), n = Ros1Dobot_v4_bringupToolDIResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDIResponseSize(value)
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

function Ros1Dobot_v4_bringupToolDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolDIResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDORequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b3db5babcb1f5473c73c012caed742d0694602036cd862ff7435c3952ff48c5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDORequestSize(Ros1Dobot_v4_bringupToolDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDORequestCapture(value), n = Ros1Dobot_v4_bringupToolDORequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDORequestSize(value)
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

function Ros1Dobot_v4_bringupToolDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDORequestRead(r)
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

function Ros1Dobot_v4_bringupToolDORequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDOResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a47635396fe974009f299a094aaf67c9d2bccdffa501698202db1509c8ff7f92",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDOResponseSize(Ros1Dobot_v4_bringupToolDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDOResponseCapture(value), n = Ros1Dobot_v4_bringupToolDOResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDOResponseSize(value)
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

function Ros1Dobot_v4_bringupToolDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolDOResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_991e0d49865375856a7bdacd55fabfa20def4e87ef5d66f021034115a14a3f60",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDOInstantRequestSize(Ros1Dobot_v4_bringupToolDOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDOInstantRequestCapture(value), n = Ros1Dobot_v4_bringupToolDOInstantRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDOInstantRequestSize(value)
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

function Ros1Dobot_v4_bringupToolDOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDOInstantRequestRead(r)
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

function Ros1Dobot_v4_bringupToolDOInstantRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/ToolDOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupToolDOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_adb900e79eb6414a18e06232d805412c1f7855f5fb2092649e8ec9727872bcef",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupToolDOInstantResponseSize(Ros1Dobot_v4_bringupToolDOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupToolDOInstantResponseCapture(value), n = Ros1Dobot_v4_bringupToolDOInstantResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupToolDOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupToolDOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupToolDOInstantResponseSize(value)
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

function Ros1Dobot_v4_bringupToolDOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupToolDOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupToolDOInstantResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/UserRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49eaa2afaa3d556502d532fc34ffe98ee4bf07a13efcaf087ef7cb95f5b1aefe",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupUserRequestSize(Ros1Dobot_v4_bringupUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupUserRequestCapture(value), n = Ros1Dobot_v4_bringupUserRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupUserRequestSize(value)
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

function Ros1Dobot_v4_bringupUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupUserRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupUserRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/UserResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6b295b759e0ff1df4853172d4aeb76a8fa9725088d4be7c5aefad507fba61212",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupUserResponseSize(Ros1Dobot_v4_bringupUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupUserResponseCapture(value), n = Ros1Dobot_v4_bringupUserResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupUserResponseSize(value)
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

function Ros1Dobot_v4_bringupUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupUserResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/VelJRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupVelJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_65a75a22e3bc63eb0285537c53d961d9914ad7bd726d43bae830b716e47c048b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupVelJRequestSize(Ros1Dobot_v4_bringupVelJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupVelJRequestCapture(value), n = Ros1Dobot_v4_bringupVelJRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupVelJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupVelJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupVelJRequestSize(value)
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

function Ros1Dobot_v4_bringupVelJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupVelJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupVelJRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/VelJResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupVelJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0026c3603218e7fce5110658e05c662cadb38bd7e1c2eb1d534a460f684dba0a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupVelJResponseSize(Ros1Dobot_v4_bringupVelJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupVelJResponseCapture(value), n = Ros1Dobot_v4_bringupVelJResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupVelJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupVelJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupVelJResponseSize(value)
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

function Ros1Dobot_v4_bringupVelJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupVelJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupVelJResponseCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/VelLRequest codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupVelLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43e94a364628f207a29aacfc0ae9f6d9e19b6ec3c908b82dcbb32213b81b9c7b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupVelLRequestSize(Ros1Dobot_v4_bringupVelLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupVelLRequestCapture(value), n = Ros1Dobot_v4_bringupVelLRequestSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupVelLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupVelLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupVelLRequestSize(value)
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

function Ros1Dobot_v4_bringupVelLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupVelLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupVelLRequestCapture(value)
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

/** Complete ROS1 dobot_v4_bringup/VelLResponse codec; maxima are not actual lengths. */
export const Ros1Dobot_v4_bringupVelLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_73b2cedcbfb536d3b706547f6f5f52f237e9c955674675dd686d857b3a4b2130",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Dobot_v4_bringupVelLResponseSize(Ros1Dobot_v4_bringupVelLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dobot_v4_bringupVelLResponseCapture(value), n = Ros1Dobot_v4_bringupVelLResponseSize(owned), w = new Writer(n);
        Ros1Dobot_v4_bringupVelLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dobot_v4_bringupVelLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dobot_v4_bringupVelLResponseSize(value)
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

function Ros1Dobot_v4_bringupVelLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Dobot_v4_bringupVelLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Dobot_v4_bringupVelLResponseCapture(value)
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
