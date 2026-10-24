/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original dobot/ros1_demo_v4 canonical value domain.
 * @details The selected domain contains 188 complete record/components and 346 original fields. Declared
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

/** Complete ROS1 rosdemo_v4/AIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a9e9cb237b8b84e16ed75126eb9cc9bbefa432d79761b6354b4793bef909e75",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AIRequestSize(Ros1Rosdemo_v4AIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AIRequestCapture(value), n = Ros1Rosdemo_v4AIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AIRequestSize(value)
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

function Ros1Rosdemo_v4AIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/AIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_272bd99c0de2e8a6a7147c6d23b4f87bb73a06f0d1cfc7e34ad746dceb14f24b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AIResponseSize(Ros1Rosdemo_v4AIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AIResponseCapture(value), n = Ros1Rosdemo_v4AIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4AIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/AORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_319c8b9779bf77eebe820eede387578c3ceec1ae877847f3060d2b4e35b0f184",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AORequestSize(Ros1Rosdemo_v4AORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AORequestCapture(value), n = Ros1Rosdemo_v4AORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AORequestSize(value)
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

function Ros1Rosdemo_v4AORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AORequestRead(r)
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

function Ros1Rosdemo_v4AORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/AOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed70f14a69e472eacb757bc92edd7cf77a5f33b247f053e93aef41bc0c453e7c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AOResponseSize(Ros1Rosdemo_v4AOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AOResponseCapture(value), n = Ros1Rosdemo_v4AOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4AOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/AOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1f33ddccebb7e459bbc61fc121b541fbf400713bec097869885f12fc6ec19f6",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AOInstantRequestSize(Ros1Rosdemo_v4AOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AOInstantRequestCapture(value), n = Ros1Rosdemo_v4AOInstantRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AOInstantRequestSize(value)
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

function Ros1Rosdemo_v4AOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AOInstantRequestRead(r)
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

function Ros1Rosdemo_v4AOInstantRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/AOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f025819db1b8e50ef5efd72ce5eb0ae17f37e6f886b447dfa9be45597a35447",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AOInstantResponseSize(Ros1Rosdemo_v4AOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AOInstantResponseCapture(value), n = Ros1Rosdemo_v4AOInstantResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AOInstantResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4AOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AOInstantResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/AccJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AccJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03980d6dad09b302198eed3e268f89cbdccb6262088e15d7aece03e55be7b149",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AccJRequestSize(Ros1Rosdemo_v4AccJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AccJRequestCapture(value), n = Ros1Rosdemo_v4AccJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AccJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AccJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AccJRequestSize(value)
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

function Ros1Rosdemo_v4AccJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AccJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AccJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/AccJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AccJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6beeb4d555efe01650e515850d237a0975bd5e857212f6f96f06fede9ac0af1a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AccJResponseSize(Ros1Rosdemo_v4AccJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AccJResponseCapture(value), n = Ros1Rosdemo_v4AccJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AccJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AccJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AccJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4AccJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AccJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AccJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/AccLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AccLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05217bf256897d7a7ce48b7118f778aa017365618ee91fccd4d6c7df688fc85b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AccLRequestSize(Ros1Rosdemo_v4AccLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AccLRequestCapture(value), n = Ros1Rosdemo_v4AccLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AccLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AccLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AccLRequestSize(value)
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

function Ros1Rosdemo_v4AccLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AccLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AccLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/AccLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4AccLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58bbf77d78566356a9daf130bd2e06845f78cd6760925d3304b79047e617eba1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4AccLResponseSize(Ros1Rosdemo_v4AccLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4AccLResponseCapture(value), n = Ros1Rosdemo_v4AccLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4AccLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4AccLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4AccLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4AccLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4AccLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4AccLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ArcRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ArcRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_951088f16f6ef708a44ed7b36f032af570830dae415d4c95a1657f2c0fe92d30",
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
        Ros1Rosdemo_v4ArcRequestSize(Ros1Rosdemo_v4ArcRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ArcRequestCapture(value), n = Ros1Rosdemo_v4ArcRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ArcRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4261, 90);
        if(owned.length < 101)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ArcRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ArcRequestSize(value)
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

function Ros1Rosdemo_v4ArcRequestWrite(value, w)
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

function Ros1Rosdemo_v4ArcRequestRead(r)
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

function Ros1Rosdemo_v4ArcRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ArcResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ArcResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0559f4edf675e06a604831aafc73e0642730205670614c44ac043491db9621c9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ArcResponseSize(Ros1Rosdemo_v4ArcResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ArcResponseCapture(value), n = Ros1Rosdemo_v4ArcResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ArcResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ArcResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ArcResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ArcResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ArcResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ArcResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/BrakeControlRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4BrakeControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a85af65d2b24e7c5ec3dc061dea6c36e984cc4583888d02df9047d209c572ca",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4BrakeControlRequestSize(Ros1Rosdemo_v4BrakeControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4BrakeControlRequestCapture(value), n = Ros1Rosdemo_v4BrakeControlRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4BrakeControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4BrakeControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4BrakeControlRequestSize(value)
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

function Ros1Rosdemo_v4BrakeControlRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["axisID"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4BrakeControlRequestRead(r)
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

function Ros1Rosdemo_v4BrakeControlRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/BrakeControlResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4BrakeControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cbb732b4d3b3abad69d3884f91e0044d4f3320eea779269871a262dcd2b66843",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4BrakeControlResponseSize(Ros1Rosdemo_v4BrakeControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4BrakeControlResponseCapture(value), n = Ros1Rosdemo_v4BrakeControlResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4BrakeControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4BrakeControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4BrakeControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4BrakeControlResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4BrakeControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4BrakeControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/CPRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9cdde37097235a464151f45e43c20af287ffd607a1192601ddad6e30ba9c652e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CPRequestSize(Ros1Rosdemo_v4CPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CPRequestCapture(value), n = Ros1Rosdemo_v4CPRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CPRequestSize(value)
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

function Ros1Rosdemo_v4CPRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4CPRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4CPRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/CPResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d16642a1f436105969397d24b57278e2e7f75af08af9ef7ec08dbc26abb631a9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CPResponseSize(Ros1Rosdemo_v4CPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CPResponseCapture(value), n = Ros1Rosdemo_v4CPResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CPResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4CPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4CPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4CPResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/CalcToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CalcToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cee057e98be4aad3812ca9dbd2bfc346f00d8c2ae2c58bf5ca6ecc80563ee2eb",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CalcToolRequestSize(Ros1Rosdemo_v4CalcToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CalcToolRequestCapture(value), n = Ros1Rosdemo_v4CalcToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CalcToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CalcToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CalcToolRequestSize(value)
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

function Ros1Rosdemo_v4CalcToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros1Rosdemo_v4CalcToolRequestRead(r)
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

function Ros1Rosdemo_v4CalcToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/CalcToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CalcToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fbe531e715f88a71f704013292ea6a48475b94634d28b04a9bbf65a023f76d0e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CalcToolResponseSize(Ros1Rosdemo_v4CalcToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CalcToolResponseCapture(value), n = Ros1Rosdemo_v4CalcToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CalcToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CalcToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CalcToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4CalcToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4CalcToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4CalcToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/CalcUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CalcUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_496ac7695efe9f049e8a2ddbed51f547cc1e2ccc268f630fcf52fd0081049392",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "matrix" : 0, "offset" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CalcUserRequestSize(Ros1Rosdemo_v4CalcUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CalcUserRequestCapture(value), n = Ros1Rosdemo_v4CalcUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CalcUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CalcUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CalcUserRequestSize(value)
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

function Ros1Rosdemo_v4CalcUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["matrix"], true);
    w.at += 4;
    w.text(value["offset"], 256);
}

function Ros1Rosdemo_v4CalcUserRequestRead(r)
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

function Ros1Rosdemo_v4CalcUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/CalcUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CalcUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47513b8698e1a9ef2b026200673cda50bc300c4946ddae7a6988a6c5faee78a9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CalcUserResponseSize(Ros1Rosdemo_v4CalcUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CalcUserResponseCapture(value), n = Ros1Rosdemo_v4CalcUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CalcUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CalcUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CalcUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4CalcUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4CalcUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4CalcUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/CircleRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CircleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fdcfb4d2426629c4719a7362ac4fd4c54c025e06f44fdade1925791937ddb417",
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
        Ros1Rosdemo_v4CircleRequestSize(Ros1Rosdemo_v4CircleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CircleRequestCapture(value), n = Ros1Rosdemo_v4CircleRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CircleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4265, 90);
        if(owned.length < 105)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CircleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CircleRequestSize(value)
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

function Ros1Rosdemo_v4CircleRequestWrite(value, w)
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

function Ros1Rosdemo_v4CircleRequestRead(r)
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

function Ros1Rosdemo_v4CircleRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/CircleResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4CircleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04e542491c8d2698099aa505719d90c46c4fb413aacf3fb34aa78d4c73548789",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4CircleResponseSize(Ros1Rosdemo_v4CircleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4CircleResponseCapture(value), n = Ros1Rosdemo_v4CircleResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4CircleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4CircleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4CircleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4CircleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4CircleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4CircleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ClearErrorRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ClearErrorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e7a728e3f4e78c12984902bd10fe1be54c380a6e7fb8c5f75afb27e36ac6120",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ClearErrorRequestSize(Ros1Rosdemo_v4ClearErrorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ClearErrorRequestCapture(value), n = Ros1Rosdemo_v4ClearErrorRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ClearErrorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ClearErrorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ClearErrorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ClearErrorRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4ClearErrorRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4ClearErrorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/ClearErrorResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ClearErrorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da3ce8d9a3ae2aa8ecf923831bef5424518e4c32c0fa38b38782806af2596d62",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ClearErrorResponseSize(Ros1Rosdemo_v4ClearErrorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ClearErrorResponseCapture(value), n = Ros1Rosdemo_v4ClearErrorResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ClearErrorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ClearErrorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ClearErrorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ClearErrorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ClearErrorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ClearErrorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ContinueRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ContinueRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_397f44d553c5c2fd64cc769a6c6143d3c13922f44fe84c4be809a91e65c47f72",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ContinueRequestSize(Ros1Rosdemo_v4ContinueRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ContinueRequestCapture(value), n = Ros1Rosdemo_v4ContinueRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ContinueRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ContinueRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ContinueRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ContinueRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4ContinueRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4ContinueRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/ContinueResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ContinueResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0851e7d86a155b8a92c08c033bf0f3c99427aaaeec807012259587624fb1b804",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ContinueResponseSize(Ros1Rosdemo_v4ContinueResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ContinueResponseCapture(value), n = Ros1Rosdemo_v4ContinueResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ContinueResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ContinueResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ContinueResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ContinueResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ContinueResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ContinueResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c87cdf10373272a55ac886bf1b0e21d3e7f9c54f0b3a4100d4562ea4c853e4b0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DIRequestSize(Ros1Rosdemo_v4DIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DIRequestCapture(value), n = Ros1Rosdemo_v4DIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DIRequestSize(value)
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

function Ros1Rosdemo_v4DIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b9d1df9f63e84d8f121925e064f96b42d573927b0002f41ca87607cf2f3db99f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DIResponseSize(Ros1Rosdemo_v4DIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DIResponseCapture(value), n = Ros1Rosdemo_v4DIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DIGroupRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DIGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5ff525bb19137564db6b5266d5b3465008dd4e3f823e0d8c7b03cce7741f0f9",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DIGroupRequestSize(Ros1Rosdemo_v4DIGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DIGroupRequestCapture(value), n = Ros1Rosdemo_v4DIGroupRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DIGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DIGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DIGroupRequestSize(value)
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

function Ros1Rosdemo_v4DIGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rosdemo_v4DIGroupRequestRead(r)
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

function Ros1Rosdemo_v4DIGroupRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DIGroupResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DIGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1877d17f23719422e09490e6d1e42cbe19bd736296c42e56be43e4c095886dc0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DIGroupResponseSize(Ros1Rosdemo_v4DIGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DIGroupResponseCapture(value), n = Ros1Rosdemo_v4DIGroupResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DIGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DIGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DIGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DIGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DIGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DIGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38f733bcf75506efdf78db21a9e021542b122315c16f6046cd1aca359a6270cd",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0, "time" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DORequestSize(Ros1Rosdemo_v4DORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DORequestCapture(value), n = Ros1Rosdemo_v4DORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DORequestSize(value)
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

function Ros1Rosdemo_v4DORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["time"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DORequestRead(r)
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

function Ros1Rosdemo_v4DORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f59e1fc82fb86b1fce1ba23107e26f88d04e040f846b0bcac7c2a3b4861c9c8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DOResponseSize(Ros1Rosdemo_v4DOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DOResponseCapture(value), n = Ros1Rosdemo_v4DOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c291ef8a18c357312306bec37932f42de195523bfa594e2978a69db021074cd2",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DOGroupRequestSize(Ros1Rosdemo_v4DOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DOGroupRequestCapture(value), n = Ros1Rosdemo_v4DOGroupRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DOGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DOGroupRequestSize(value)
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

function Ros1Rosdemo_v4DOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rosdemo_v4DOGroupRequestRead(r)
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

function Ros1Rosdemo_v4DOGroupRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dbca29796476fc2dacc1a8641bdc12643ff6202193cc5be6e1793ef18fb2394b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DOGroupResponseSize(Ros1Rosdemo_v4DOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DOGroupResponseCapture(value), n = Ros1Rosdemo_v4DOGroupResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DOGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DOGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DOGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e7bb078201c77bdd326c2e1c92199dddefab78d4f3253b2a910ff2875bd2b878",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DOInstantRequestSize(Ros1Rosdemo_v4DOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DOInstantRequestCapture(value), n = Ros1Rosdemo_v4DOInstantRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DOInstantRequestSize(value)
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

function Ros1Rosdemo_v4DOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DOInstantRequestRead(r)
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

function Ros1Rosdemo_v4DOInstantRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_83ace895a553d20bd1b6e6e5731dc68fc7089543b0ebe103eb16f55554fa0dc5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DOInstantResponseSize(Ros1Rosdemo_v4DOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DOInstantResponseCapture(value), n = Ros1Rosdemo_v4DOInstantResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DOInstantResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DOInstantResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DisableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DisableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef74ada028c3cc15b11da2ac3f3d583f3667f953bfe75d3cbeda2790a4c15bcc",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DisableRobotRequestSize(Ros1Rosdemo_v4DisableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DisableRobotRequestCapture(value), n = Ros1Rosdemo_v4DisableRobotRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DisableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DisableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DisableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DisableRobotRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4DisableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4DisableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/DisableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DisableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_311d984435af0017644139b36f80deb046000d1bb6270bda9c746f05600a5521",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DisableRobotResponseSize(Ros1Rosdemo_v4DisableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DisableRobotResponseCapture(value), n = Ros1Rosdemo_v4DisableRobotResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DisableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DisableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DisableRobotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DisableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DisableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DisableRobotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/DragSensivityRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DragSensivityRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6fea90c5de6e58f95d2b2a173c0ff4d06dcd68fc564a9b9e4c2fc57576e5ef38",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DragSensivityRequestSize(Ros1Rosdemo_v4DragSensivityRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DragSensivityRequestCapture(value), n = Ros1Rosdemo_v4DragSensivityRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DragSensivityRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DragSensivityRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DragSensivityRequestSize(value)
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

function Ros1Rosdemo_v4DragSensivityRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DragSensivityRequestRead(r)
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

function Ros1Rosdemo_v4DragSensivityRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/DragSensivityResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4DragSensivityResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f3e5b64cd5dd322783d86fcc4c7520a9817a6931b8b789139695cbc72be88003",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4DragSensivityResponseSize(Ros1Rosdemo_v4DragSensivityResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4DragSensivityResponseCapture(value), n = Ros1Rosdemo_v4DragSensivityResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4DragSensivityResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4DragSensivityResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4DragSensivityResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4DragSensivityResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4DragSensivityResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4DragSensivityResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/EmergencyStopRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EmergencyStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29e3801ce5fd22b8b46d56855146fb277fd7a70d0bd839a976bd2b1cc8e6ef0c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EmergencyStopRequestSize(Ros1Rosdemo_v4EmergencyStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EmergencyStopRequestCapture(value), n = Ros1Rosdemo_v4EmergencyStopRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EmergencyStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EmergencyStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EmergencyStopRequestSize(value)
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

function Ros1Rosdemo_v4EmergencyStopRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4EmergencyStopRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4EmergencyStopRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/EmergencyStopResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EmergencyStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ad7f402c9044401904b708335f56fc566965a1eba1e438257fdedf2a0ef79d0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EmergencyStopResponseSize(Ros1Rosdemo_v4EmergencyStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EmergencyStopResponseCapture(value), n = Ros1Rosdemo_v4EmergencyStopResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EmergencyStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EmergencyStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EmergencyStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4EmergencyStopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4EmergencyStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4EmergencyStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/EnableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EnableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_50fa5b29527f53d986f0fdfe5ac40cccccea2723aa28a1bda183ea85437ab1d9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EnableRobotRequestSize(Ros1Rosdemo_v4EnableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EnableRobotRequestCapture(value), n = Ros1Rosdemo_v4EnableRobotRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EnableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EnableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EnableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4EnableRobotRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4EnableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4EnableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/EnableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EnableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58f12f2a31c801ccf5e3b292645b72e979524c26a70d71c628ad73802a1369d5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EnableRobotResponseSize(Ros1Rosdemo_v4EnableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EnableRobotResponseCapture(value), n = Ros1Rosdemo_v4EnableRobotResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EnableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EnableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EnableRobotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4EnableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4EnableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4EnableRobotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/EnableSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EnableSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd375695f4654cbd46d759a017a5f298f1e168e5f3d0df6df8ab5c3c7afb5a7c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EnableSafeSkinRequestSize(Ros1Rosdemo_v4EnableSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EnableSafeSkinRequestCapture(value), n = Ros1Rosdemo_v4EnableSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EnableSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EnableSafeSkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EnableSafeSkinRequestSize(value)
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

function Ros1Rosdemo_v4EnableSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4EnableSafeSkinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4EnableSafeSkinRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/EnableSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4EnableSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d45e73631c4070c003de548b4e333eef29e64011d9ab6d92089f2dec8ca0ae9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4EnableSafeSkinResponseSize(Ros1Rosdemo_v4EnableSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4EnableSafeSkinResponseCapture(value), n = Ros1Rosdemo_v4EnableSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4EnableSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4EnableSafeSkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4EnableSafeSkinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4EnableSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4EnableSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4EnableSafeSkinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetAORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetAORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_926de338371ec01a402be7c060b5847a12f29a986f7d79547214709be7a8b60b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetAORequestSize(Ros1Rosdemo_v4GetAORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetAORequestCapture(value), n = Ros1Rosdemo_v4GetAORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetAORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetAORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetAORequestSize(value)
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

function Ros1Rosdemo_v4GetAORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetAORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetAORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetAOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetAOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e00e5c6759d8f828d17a7ed4adbaec5196bf1176460267a555bc877946220ae3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetAOResponseSize(Ros1Rosdemo_v4GetAOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetAOResponseCapture(value), n = Ros1Rosdemo_v4GetAOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetAOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetAOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetAOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetAOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetAOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetAOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetAngleRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetAngleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e6595e26df9c6a6c1b11d1b0d0be17eb12ce5811ea3b58415618703e63e4bf1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetAngleRequestSize(Ros1Rosdemo_v4GetAngleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetAngleRequestCapture(value), n = Ros1Rosdemo_v4GetAngleRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetAngleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetAngleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetAngleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetAngleRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4GetAngleRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4GetAngleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/GetAngleResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetAngleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_510fe33c83f2eb89bc3d181661431b5da8a99a9b51760596e2858fd1542327a5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetAngleResponseSize(Ros1Rosdemo_v4GetAngleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetAngleResponseCapture(value), n = Ros1Rosdemo_v4GetAngleResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetAngleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetAngleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetAngleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetAngleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetAngleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetAngleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_97eeaeae27ad4a42c2fd3286e6a7d87fe31409d8ca1f4e893221be3494c809ba",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetCoilsRequestSize(Ros1Rosdemo_v4GetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetCoilsRequestCapture(value), n = Ros1Rosdemo_v4GetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetCoilsRequestSize(value)
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

function Ros1Rosdemo_v4GetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetCoilsRequestRead(r)
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

function Ros1Rosdemo_v4GetCoilsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c10ce78d0c2c94a78ba606699c5adc2177b8207249f80c9c793955aae21184fd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetCoilsResponseSize(Ros1Rosdemo_v4GetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetCoilsResponseCapture(value), n = Ros1Rosdemo_v4GetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetCoilsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetCoilsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetCurrentCommandIdRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c54881bb35c2390e1927166762f690a2c89938216a61f27a69cc710e5b10a6fc",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetCurrentCommandIdRequestSize(Ros1Rosdemo_v4GetCurrentCommandIdRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetCurrentCommandIdRequestCapture(value), n = Ros1Rosdemo_v4GetCurrentCommandIdRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetCurrentCommandIdRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetCurrentCommandIdRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetCurrentCommandIdRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetCurrentCommandIdRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4GetCurrentCommandIdRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4GetCurrentCommandIdRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/GetCurrentCommandIdResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8bc582ffa6eb0003de3b76adbc9f08e538214d6b216b19b7ac817ca946f3cee9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetCurrentCommandIdResponseSize(Ros1Rosdemo_v4GetCurrentCommandIdResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetCurrentCommandIdResponseCapture(value), n = Ros1Rosdemo_v4GetCurrentCommandIdResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetCurrentCommandIdResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetCurrentCommandIdResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetCurrentCommandIdResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetCurrentCommandIdResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetCurrentCommandIdResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetCurrentCommandIdResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetDORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_529aab0c8d5268a6e4ac526eee3156061db0dfc197d79750f0937477c235ef13",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetDORequestSize(Ros1Rosdemo_v4GetDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetDORequestCapture(value), n = Ros1Rosdemo_v4GetDORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetDORequestSize(value)
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

function Ros1Rosdemo_v4GetDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetDORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetDORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetDOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_40d66623d9a4ee294c3be28fc27fdec008f35f2d74dd96ee08b37fd7f7f0f53c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetDOResponseSize(Ros1Rosdemo_v4GetDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetDOResponseCapture(value), n = Ros1Rosdemo_v4GetDOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetDOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetDOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetDOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetDOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a04a61c965ec8d64f74772c2572b1e80314ce484955e0cf2f874d33fa8d0fab",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index_group" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetDOGroupRequestSize(Ros1Rosdemo_v4GetDOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetDOGroupRequestCapture(value), n = Ros1Rosdemo_v4GetDOGroupRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetDOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetDOGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetDOGroupRequestSize(value)
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

function Ros1Rosdemo_v4GetDOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["index_group"].length, true);
    w.at += 4;
    for(const element of value["index_group"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rosdemo_v4GetDOGroupRequestRead(r)
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

function Ros1Rosdemo_v4GetDOGroupRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetDOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetDOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_025adf89234f29f92487e3383ac840a91ce7365af469eca51ffb4a02757ad08c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetDOGroupResponseSize(Ros1Rosdemo_v4GetDOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetDOGroupResponseCapture(value), n = Ros1Rosdemo_v4GetDOGroupResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetDOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetDOGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetDOGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetDOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetDOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetDOGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetErrorIDRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetErrorIDRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7384e3f38489c046e1da3bd095fb0f9f1d7ab3ecff0c9f0a6f902afeb42a6afa",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetErrorIDRequestSize(Ros1Rosdemo_v4GetErrorIDRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetErrorIDRequestCapture(value), n = Ros1Rosdemo_v4GetErrorIDRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetErrorIDRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetErrorIDRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetErrorIDRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetErrorIDRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4GetErrorIDRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4GetErrorIDRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/GetErrorIDResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetErrorIDResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04905126039b83561b99944a9f8fa997df0d33dc34a5c7fe5b5c9904bd801f8c",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"error_id" : [], "res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetErrorIDResponseSize(Ros1Rosdemo_v4GetErrorIDResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetErrorIDResponseCapture(value), n = Ros1Rosdemo_v4GetErrorIDResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetErrorIDResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetErrorIDResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetErrorIDResponseSize(value)
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

function Ros1Rosdemo_v4GetErrorIDResponseWrite(value, w)
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

function Ros1Rosdemo_v4GetErrorIDResponseRead(r)
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

function Ros1Rosdemo_v4GetErrorIDResponseCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_25c39e4774f962695d516aa5f727c1fc75c1999b05dad0e466d0e8f559768f4b",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetHoldRegsRequestSize(Ros1Rosdemo_v4GetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetHoldRegsRequestCapture(value), n = Ros1Rosdemo_v4GetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetHoldRegsRequestSize(value)
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

function Ros1Rosdemo_v4GetHoldRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valType"], 256);
}

function Ros1Rosdemo_v4GetHoldRegsRequestRead(r)
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

function Ros1Rosdemo_v4GetHoldRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dd4564730e4960e4cd81b0315db69c80d188937af6ac664788568e4e94613086",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetHoldRegsResponseSize(Ros1Rosdemo_v4GetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetHoldRegsResponseCapture(value), n = Ros1Rosdemo_v4GetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetHoldRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetHoldRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetInBitsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInBitsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_87a10aba986f262775300a8bccf1e08bf6aa04391ce43e434f354e01600a5f41",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInBitsRequestSize(Ros1Rosdemo_v4GetInBitsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInBitsRequestCapture(value), n = Ros1Rosdemo_v4GetInBitsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInBitsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInBitsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInBitsRequestSize(value)
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

function Ros1Rosdemo_v4GetInBitsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInBitsRequestRead(r)
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

function Ros1Rosdemo_v4GetInBitsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetInBitsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInBitsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f8c3dece574e815b8d1ec567c75e426419af10629b7b46df120df6f330688acd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInBitsResponseSize(Ros1Rosdemo_v4GetInBitsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInBitsResponseCapture(value), n = Ros1Rosdemo_v4GetInBitsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInBitsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInBitsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInBitsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetInBitsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInBitsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInBitsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetInRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b889d32021c7662e1c334b4985ee1892846e7ec9c22af12e10f8451954a1ebce",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInRegsRequestSize(Ros1Rosdemo_v4GetInRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInRegsRequestCapture(value), n = Ros1Rosdemo_v4GetInRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInRegsRequestSize(value)
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

function Ros1Rosdemo_v4GetInRegsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valType"], 256);
}

function Ros1Rosdemo_v4GetInRegsRequestRead(r)
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

function Ros1Rosdemo_v4GetInRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetInRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8122e0be478fb07f064a8ad263bf2498f586d772ec94c1dae540e84c651a55da",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInRegsResponseSize(Ros1Rosdemo_v4GetInRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInRegsResponseCapture(value), n = Ros1Rosdemo_v4GetInRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetInRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetInputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c7ed79ac1c9d6eb3b8288ccf2ecf833cb01d9e28a1aad4c3298a301d37fc6e3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputBoolRequestSize(Ros1Rosdemo_v4GetInputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputBoolRequestCapture(value), n = Ros1Rosdemo_v4GetInputBoolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputBoolRequestSize(value)
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

function Ros1Rosdemo_v4GetInputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputBoolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputBoolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetInputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4dd8f83b77312a6b67a0b7846a8a065ce38f1e44f86aafabda8178a3d215969c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputBoolResponseSize(Ros1Rosdemo_v4GetInputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputBoolResponseCapture(value), n = Ros1Rosdemo_v4GetInputBoolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputBoolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetInputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputBoolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetInputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eb66f87e172e9a42fd3afafa4b33615c31d29ad800c1ffd40381e3b5e783e923",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputFloatRequestSize(Ros1Rosdemo_v4GetInputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputFloatRequestCapture(value), n = Ros1Rosdemo_v4GetInputFloatRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputFloatRequestSize(value)
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

function Ros1Rosdemo_v4GetInputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputFloatRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputFloatRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetInputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a6e9db2cb925b1d929a798b4a5c36fdf8557edee7eb585e0e38c95f23172d42",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputFloatResponseSize(Ros1Rosdemo_v4GetInputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputFloatResponseCapture(value), n = Ros1Rosdemo_v4GetInputFloatResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputFloatResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetInputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputFloatResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetInputIntRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_297a110a4a935e442f5b00c1fa84645e97ff954a529b7f4ed7db09be797e6d37",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputIntRequestSize(Ros1Rosdemo_v4GetInputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputIntRequestCapture(value), n = Ros1Rosdemo_v4GetInputIntRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputIntRequestSize(value)
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

function Ros1Rosdemo_v4GetInputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputIntRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputIntRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetInputIntResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetInputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1d7ccef84e5ce8eaf3d8daf2dd23afce098a845edaa3b23925e9d46c4c40abd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetInputIntResponseSize(Ros1Rosdemo_v4GetInputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetInputIntResponseCapture(value), n = Ros1Rosdemo_v4GetInputIntResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetInputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetInputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetInputIntResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetInputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetInputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetInputIntResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetOutputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8434f5aea4bbdf565d050a3d09c845318982e2d2977339a58009be26b9154f5e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputBoolRequestSize(Ros1Rosdemo_v4GetOutputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputBoolRequestCapture(value), n = Ros1Rosdemo_v4GetOutputBoolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputBoolRequestSize(value)
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

function Ros1Rosdemo_v4GetOutputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputBoolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputBoolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetOutputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ceb74ba9fd10ad74dc9e04ec87687bc13246b4af9d376ea5a6de8c16fa1e54e4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputBoolResponseSize(Ros1Rosdemo_v4GetOutputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputBoolResponseCapture(value), n = Ros1Rosdemo_v4GetOutputBoolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputBoolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetOutputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputBoolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetOutputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19f4a8c41b2e49b3c9da25da2de011c84257b420b89f6e15741de2589585f259",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputFloatRequestSize(Ros1Rosdemo_v4GetOutputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputFloatRequestCapture(value), n = Ros1Rosdemo_v4GetOutputFloatRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputFloatRequestSize(value)
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

function Ros1Rosdemo_v4GetOutputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputFloatRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputFloatRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetOutputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d52fb64b6fc6a6cef5c396912b6d22184845cfc32e51990dde429eb3f86f59ca",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputFloatResponseSize(Ros1Rosdemo_v4GetOutputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputFloatResponseCapture(value), n = Ros1Rosdemo_v4GetOutputFloatResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputFloatResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetOutputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputFloatResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetOutputIntRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_26a2d8df9463e82cb4752a0465c46fafaff8edef76e9545d7c21c1a2d81a62a4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputIntRequestSize(Ros1Rosdemo_v4GetOutputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputIntRequestCapture(value), n = Ros1Rosdemo_v4GetOutputIntRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputIntRequestSize(value)
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

function Ros1Rosdemo_v4GetOutputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputIntRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputIntRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetOutputIntResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetOutputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db07169d30b15991b02c8552ab0823241442ae1dd15d60d8f7d66173ae88ec56",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetOutputIntResponseSize(Ros1Rosdemo_v4GetOutputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetOutputIntResponseCapture(value), n = Ros1Rosdemo_v4GetOutputIntResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetOutputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetOutputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetOutputIntResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetOutputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetOutputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetOutputIntResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetPoseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_614f133e44f952b81c348c0d81268009734f12661ee60a3762f445c1f9763eeb",
    maxWireBytes : 520,
    minWireBytes : 8,
    cartesianMaxWireBytes : 520n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetPoseRequestSize(Ros1Rosdemo_v4GetPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetPoseRequestCapture(value), n = Ros1Rosdemo_v4GetPoseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 520, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["user"], 256).length);
    n = addSize(n, 4 + textBytes(value["tool"], 256).length);
    if(n > 520)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetPoseRequestWrite(value, w)
{
    w.text(value["user"], 256);
    w.text(value["tool"], 256);
}

function Ros1Rosdemo_v4GetPoseRequestRead(r)
{
    const value = {};
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

function Ros1Rosdemo_v4GetPoseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetPoseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb2309ea57bccca61b67960dabc71bb80f4d5e0bb9dbad2034912bcc33aa47db",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : "", "res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetPoseResponseSize(Ros1Rosdemo_v4GetPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetPoseResponseCapture(value), n = Ros1Rosdemo_v4GetPoseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pose"], 256).length);
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetPoseResponseWrite(value, w)
{
    w.text(value["pose"], 256);
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = field;
    }
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/GetStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a7bb705fc5fad2f0919ea2be9eeef2056765b6fab4ab6e1dd5e4bf335af0e90",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetStartPoseRequestSize(Ros1Rosdemo_v4GetStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetStartPoseRequestCapture(value), n = Ros1Rosdemo_v4GetStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetStartPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Rosdemo_v4GetStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetStartPoseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/GetStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4GetStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58928db4de4917d89cc26f1caeb08d8c63f275e430923ddd69822a7b0969d062",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4GetStartPoseResponseSize(Ros1Rosdemo_v4GetStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4GetStartPoseResponseCapture(value), n = Ros1Rosdemo_v4GetStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4GetStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4GetStartPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4GetStartPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4GetStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4GetStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4GetStartPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/InverseKinRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4InverseKinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a36b2d397660e001f97f40e937f057cb0c9cbbf3019f119c48a217846e258b36",
    maxWireBytes : 1088,
    minWireBytes : 64,
    cartesianMaxWireBytes : 1088n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"X" : 0, "Y" : 0, "Z" : 0, "Rx" : 0, "Ry" : 0, "Rz" : 0, "useJointNear" : "", "jointNear" : "", "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4InverseKinRequestSize(Ros1Rosdemo_v4InverseKinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4InverseKinRequestCapture(value), n = Ros1Rosdemo_v4InverseKinRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4InverseKinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1088, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4InverseKinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4InverseKinRequestSize(value)
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

function Ros1Rosdemo_v4InverseKinRequestWrite(value, w)
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

function Ros1Rosdemo_v4InverseKinRequestRead(r)
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

function Ros1Rosdemo_v4InverseKinRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/InverseKinResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4InverseKinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3e1f483d7c0e1fab5574dbdedbde27321f0961b00f5a7d8ec60facaa660dce5d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4InverseKinResponseSize(Ros1Rosdemo_v4InverseKinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4InverseKinResponseCapture(value), n = Ros1Rosdemo_v4InverseKinResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4InverseKinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4InverseKinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4InverseKinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4InverseKinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4InverseKinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4InverseKinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/InverseSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4InverseSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_386aeead1b103c31d0803e46e5cf40444203576a01929a58655a9dbdad97e337",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"parameter" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4InverseSolutionRequestSize(Ros1Rosdemo_v4InverseSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4InverseSolutionRequestCapture(value), n = Ros1Rosdemo_v4InverseSolutionRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4InverseSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4InverseSolutionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4InverseSolutionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["parameter"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4InverseSolutionRequestWrite(value, w)
{
    w.text(value["parameter"], 256);
}

function Ros1Rosdemo_v4InverseSolutionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["parameter"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4InverseSolutionRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/InverseSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4InverseSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_af164102f43d7ec09b29194756e137521be58cf7557e2e6cc1aa8984ad60edeb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4InverseSolutionResponseSize(Ros1Rosdemo_v4InverseSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4InverseSolutionResponseCapture(value), n = Ros1Rosdemo_v4InverseSolutionResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4InverseSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4InverseSolutionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4InverseSolutionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4InverseSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4InverseSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4InverseSolutionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ModbusCloseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusCloseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_312c47a996b26c9cceb2cd2cacd8f224d6503c095f8b05cb47d61cd0a86044a2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusCloseRequestSize(Ros1Rosdemo_v4ModbusCloseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusCloseRequestCapture(value), n = Ros1Rosdemo_v4ModbusCloseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusCloseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusCloseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusCloseRequestSize(value)
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

function Ros1Rosdemo_v4ModbusCloseRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ModbusCloseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ModbusCloseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ModbusCloseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusCloseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_023195c6b839ef052e27c0208dd80a3a65d519c75ae01a97fcc6ed0ba42792c7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusCloseResponseSize(Ros1Rosdemo_v4ModbusCloseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusCloseResponseCapture(value), n = Ros1Rosdemo_v4ModbusCloseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusCloseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusCloseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusCloseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ModbusCloseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ModbusCloseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ModbusCloseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ModbusCreateRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89723aed3faa9b167f6c7140983191a0c8cc3e5ae65983199fac27f2cbd4fe3a",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : "", "port" : 0, "slave_id" : 0, "isRTU" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusCreateRequestSize(Ros1Rosdemo_v4ModbusCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusCreateRequestCapture(value), n = Ros1Rosdemo_v4ModbusCreateRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusCreateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusCreateRequestSize(value)
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

function Ros1Rosdemo_v4ModbusCreateRequestWrite(value, w)
{
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["isRTU"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ModbusCreateRequestRead(r)
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

function Ros1Rosdemo_v4ModbusCreateRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ModbusCreateResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fd842047956f95a53be2a1d12ceba2f7874276768ee972cc73e0857005f752eb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusCreateResponseSize(Ros1Rosdemo_v4ModbusCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusCreateResponseCapture(value), n = Ros1Rosdemo_v4ModbusCreateResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusCreateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusCreateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ModbusCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ModbusCreateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ModbusCreateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ModbusRTUCreateRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusRTUCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2c24e7f5a9e996c62094b5f286daf6d70e5ea488084458e76387cc87bbf54829",
    maxWireBytes : 276,
    minWireBytes : 20,
    cartesianMaxWireBytes : 276n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"slave_id" : 0, "baud" : 0, "parity" : "", "data_bit" : 0, "stop_bit" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusRTUCreateRequestSize(Ros1Rosdemo_v4ModbusRTUCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusRTUCreateRequestCapture(value), n = Ros1Rosdemo_v4ModbusRTUCreateRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusRTUCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 276, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusRTUCreateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusRTUCreateRequestSize(value)
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

function Ros1Rosdemo_v4ModbusRTUCreateRequestWrite(value, w)
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

function Ros1Rosdemo_v4ModbusRTUCreateRequestRead(r)
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

function Ros1Rosdemo_v4ModbusRTUCreateRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ModbusRTUCreateResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ModbusRTUCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7789f6d13a84128d683d1e0298da922c019d2ad730776602baea355d3bb7af9b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ModbusRTUCreateResponseSize(Ros1Rosdemo_v4ModbusRTUCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ModbusRTUCreateResponseCapture(value), n = Ros1Rosdemo_v4ModbusRTUCreateResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ModbusRTUCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ModbusRTUCreateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ModbusRTUCreateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ModbusRTUCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ModbusRTUCreateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ModbusRTUCreateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/MovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09e87fec00b64906ce52c1fd8fc258c5defcc95f0ff4f5c867fbb210677eb342",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovJRequestSize(Ros1Rosdemo_v4MovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovJRequestCapture(value), n = Ros1Rosdemo_v4MovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovJRequestSize(value)
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

function Ros1Rosdemo_v4MovJRequestWrite(value, w)
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

function Ros1Rosdemo_v4MovJRequestRead(r)
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

function Ros1Rosdemo_v4MovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/MovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3a9b252271d5b325f608151171315767648c8d8edce2fac57446b40883e08b8c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovJResponseSize(Ros1Rosdemo_v4MovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovJResponseCapture(value), n = Ros1Rosdemo_v4MovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4MovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4MovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4MovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/MovJIORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovJIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09f78d0f6d9a87a17934a977fd150a42dd5ff2038b31ac99446753b82cf15766",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "MDIS" : [], "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovJIORequestSize(Ros1Rosdemo_v4MovJIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovJIORequestCapture(value), n = Ros1Rosdemo_v4MovJIORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovJIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovJIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovJIORequestSize(value)
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

function Ros1Rosdemo_v4MovJIORequestWrite(value, w)
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

function Ros1Rosdemo_v4MovJIORequestRead(r)
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

function Ros1Rosdemo_v4MovJIORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/MovJIOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovJIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6bdb6a02634e5eeca7efddd37d27f3eb4624f4f05abdf6bd96b107781d9fb077",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovJIOResponseSize(Ros1Rosdemo_v4MovJIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovJIOResponseCapture(value), n = Ros1Rosdemo_v4MovJIOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovJIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovJIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovJIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4MovJIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4MovJIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4MovJIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/MovLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_20cae327861ce263914777f3d78df62724214b7bdbc3e21d7164b7679e55a6dc",
    maxWireBytes : 4213,
    minWireBytes : 53,
    cartesianMaxWireBytes : 4213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovLRequestSize(Ros1Rosdemo_v4MovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovLRequestCapture(value), n = Ros1Rosdemo_v4MovLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4213, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovLRequestSize(value)
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

function Ros1Rosdemo_v4MovLRequestWrite(value, w)
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

function Ros1Rosdemo_v4MovLRequestRead(r)
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

function Ros1Rosdemo_v4MovLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/MovLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b638be013e579798f8394727df2a7f2520f458e8c9feb1be56518dc038dd7d04",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovLResponseSize(Ros1Rosdemo_v4MovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovLResponseCapture(value), n = Ros1Rosdemo_v4MovLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4MovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4MovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4MovLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/MovLIORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovLIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ad460406816839da9bac13749cec3da5ec06cd4d814e9c13b61ade5a57959ddd",
    maxWireBytes : 8377,
    minWireBytes : 57,
    cartesianMaxWireBytes : 8377n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : false, "a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "MDIS" : [], "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovLIORequestSize(Ros1Rosdemo_v4MovLIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovLIORequestCapture(value), n = Ros1Rosdemo_v4MovLIORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovLIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8377, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovLIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovLIORequestSize(value)
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

function Ros1Rosdemo_v4MovLIORequestWrite(value, w)
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

function Ros1Rosdemo_v4MovLIORequestRead(r)
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

function Ros1Rosdemo_v4MovLIORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/MovLIOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MovLIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_65153e2d930140d23fff126a8dedcb91eae040b36bd22ff54116067c75dec54c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MovLIOResponseSize(Ros1Rosdemo_v4MovLIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MovLIOResponseCapture(value), n = Ros1Rosdemo_v4MovLIOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MovLIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MovLIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MovLIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4MovLIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4MovLIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4MovLIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/MoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4405c2a5d68345e826adfa1517fde93d180c9526adfaa15c1eab72817bd400d4",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MoveJogRequestSize(Ros1Rosdemo_v4MoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MoveJogRequestCapture(value), n = Ros1Rosdemo_v4MoveJogRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MoveJogRequestSize(value)
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

function Ros1Rosdemo_v4MoveJogRequestWrite(value, w)
{
    w.text(value["axisID"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Rosdemo_v4MoveJogRequestRead(r)
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

function Ros1Rosdemo_v4MoveJogRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/MoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4MoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bfb8a659db448d7a32e409dccf3cf5678b093e7679a9463519951b8b572c5dad",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4MoveJogResponseSize(Ros1Rosdemo_v4MoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4MoveJogResponseCapture(value), n = Ros1Rosdemo_v4MoveJogResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4MoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4MoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4MoveJogResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4MoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4MoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4MoveJogResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/PauseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0724bc4dd3f14cc33b595fd5eddcc4169ae428f577cf17274d37031861491458",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PauseRequestSize(Ros1Rosdemo_v4PauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PauseRequestCapture(value), n = Ros1Rosdemo_v4PauseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PauseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4PauseRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4PauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4PauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/PauseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_74ce1cb9c50a42453f3217187291957c2c27d23dfc0f03117b5c1f3f24924179",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PauseResponseSize(Ros1Rosdemo_v4PauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PauseResponseCapture(value), n = Ros1Rosdemo_v4PauseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PauseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PauseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4PauseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4PauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4PauseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/PositiveKinRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PositiveKinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8e5050dce84fba33aa575ce20b32bab4591c35f40736136cae5b3c6e1faef21c",
    maxWireBytes : 568,
    minWireBytes : 56,
    cartesianMaxWireBytes : 568n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"J1" : 0, "J2" : 0, "J3" : 0, "J4" : 0, "J5" : 0, "J6" : 0, "user" : "", "tool" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PositiveKinRequestSize(Ros1Rosdemo_v4PositiveKinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PositiveKinRequestCapture(value), n = Ros1Rosdemo_v4PositiveKinRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PositiveKinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 568, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PositiveKinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PositiveKinRequestSize(value)
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

function Ros1Rosdemo_v4PositiveKinRequestWrite(value, w)
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

function Ros1Rosdemo_v4PositiveKinRequestRead(r)
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

function Ros1Rosdemo_v4PositiveKinRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/PositiveKinResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PositiveKinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a9ce6bea86295b52e94b959dd08e6b6d22d9673e3e07bbc34311d16757230d59",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PositiveKinResponseSize(Ros1Rosdemo_v4PositiveKinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PositiveKinResponseCapture(value), n = Ros1Rosdemo_v4PositiveKinResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PositiveKinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PositiveKinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PositiveKinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4PositiveKinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4PositiveKinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4PositiveKinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/PowerOnRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PowerOnRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_37a79bfbb6f1ce4b67d1f9d9a29102e62a63d94c7812c3f43432ede1eaa9e59f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PowerOnRequestSize(Ros1Rosdemo_v4PowerOnRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PowerOnRequestCapture(value), n = Ros1Rosdemo_v4PowerOnRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PowerOnRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PowerOnRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PowerOnRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4PowerOnRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4PowerOnRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4PowerOnRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/PowerOnResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4PowerOnResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dfc6bbc39e3c8e01192aa19ba8329286f314095381e8b6dedf0041b3d7336b88",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4PowerOnResponseSize(Ros1Rosdemo_v4PowerOnResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4PowerOnResponseCapture(value), n = Ros1Rosdemo_v4PowerOnResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4PowerOnResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4PowerOnResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4PowerOnResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4PowerOnResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4PowerOnResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4PowerOnResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RelJointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelJointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd720cd9f632d655b6c3c8e7258d45ca8b533ab646296e741d849955ddb7df5d",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelJointMovJRequestSize(Ros1Rosdemo_v4RelJointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelJointMovJRequestCapture(value), n = Ros1Rosdemo_v4RelJointMovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelJointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelJointMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelJointMovJRequestSize(value)
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

function Ros1Rosdemo_v4RelJointMovJRequestWrite(value, w)
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

function Ros1Rosdemo_v4RelJointMovJRequestRead(r)
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

function Ros1Rosdemo_v4RelJointMovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RelJointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelJointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef932bafd6a1fc19ae65cc284cf8073e11198a6295ea1b76b8fca30ae553c095",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelJointMovJResponseSize(Ros1Rosdemo_v4RelJointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelJointMovJResponseCapture(value), n = Ros1Rosdemo_v4RelJointMovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelJointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelJointMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelJointMovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RelJointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RelJointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RelJointMovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RelMovJToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovJToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_447c2017041960c5a7908f9ed79b4031107299dc19a0706a58b63665f27722f2",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovJToolRequestSize(Ros1Rosdemo_v4RelMovJToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovJToolRequestCapture(value), n = Ros1Rosdemo_v4RelMovJToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovJToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovJToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovJToolRequestSize(value)
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

function Ros1Rosdemo_v4RelMovJToolRequestWrite(value, w)
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

function Ros1Rosdemo_v4RelMovJToolRequestRead(r)
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

function Ros1Rosdemo_v4RelMovJToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RelMovJToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovJToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e257550023b466fd6a2b0f039548c73ab379feccb57f55a2cb7a56da5f89221e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovJToolResponseSize(Ros1Rosdemo_v4RelMovJToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovJToolResponseCapture(value), n = Ros1Rosdemo_v4RelMovJToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovJToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovJToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovJToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RelMovJToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RelMovJToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RelMovJToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RelMovJUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovJUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f575ab3530f4cdc9853504e65f3bcd190ad473513b334778eeae53f121550b42",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovJUserRequestSize(Ros1Rosdemo_v4RelMovJUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovJUserRequestCapture(value), n = Ros1Rosdemo_v4RelMovJUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovJUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovJUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovJUserRequestSize(value)
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

function Ros1Rosdemo_v4RelMovJUserRequestWrite(value, w)
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

function Ros1Rosdemo_v4RelMovJUserRequestRead(r)
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

function Ros1Rosdemo_v4RelMovJUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RelMovJUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovJUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7ec2020d09d1497e44bd1e5dc4c7d3f94fc9b40b525ad0abe0646c4c49830069",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovJUserResponseSize(Ros1Rosdemo_v4RelMovJUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovJUserResponseCapture(value), n = Ros1Rosdemo_v4RelMovJUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovJUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovJUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovJUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RelMovJUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RelMovJUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RelMovJUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RelMovLToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovLToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a38969222fc6b0dd15123e0752060b7d3818af030098e0f93f24702cb663bf6",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovLToolRequestSize(Ros1Rosdemo_v4RelMovLToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovLToolRequestCapture(value), n = Ros1Rosdemo_v4RelMovLToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovLToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovLToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovLToolRequestSize(value)
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

function Ros1Rosdemo_v4RelMovLToolRequestWrite(value, w)
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

function Ros1Rosdemo_v4RelMovLToolRequestRead(r)
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

function Ros1Rosdemo_v4RelMovLToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RelMovLToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovLToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ba7d0e0a7f27aedcdb0ba1f8cf6d89eb0ac5bcd86da29e8683e3e19c290b01c8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovLToolResponseSize(Ros1Rosdemo_v4RelMovLToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovLToolResponseCapture(value), n = Ros1Rosdemo_v4RelMovLToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovLToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovLToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovLToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RelMovLToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RelMovLToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RelMovLToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RelMovLUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovLUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c505d53cbfea745ed7f941c4658252d52f50c91e3a8d4d548ab1f90d3f63567",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovLUserRequestSize(Ros1Rosdemo_v4RelMovLUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovLUserRequestCapture(value), n = Ros1Rosdemo_v4RelMovLUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovLUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovLUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovLUserRequestSize(value)
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

function Ros1Rosdemo_v4RelMovLUserRequestWrite(value, w)
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

function Ros1Rosdemo_v4RelMovLUserRequestRead(r)
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

function Ros1Rosdemo_v4RelMovLUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RelMovLUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RelMovLUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dae3d0f42de8bbed4988150bc1d838ba033e0f675cf3089419fc548070e06846",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RelMovLUserResponseSize(Ros1Rosdemo_v4RelMovLUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RelMovLUserResponseCapture(value), n = Ros1Rosdemo_v4RelMovLUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RelMovLUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RelMovLUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RelMovLUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RelMovLUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RelMovLUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RelMovLUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/RobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29ad7f5a2d2e1cdfc34e84f7c86d644d24892bb82fa4e764eb4889b3c2989630",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RobotModeRequestSize(Ros1Rosdemo_v4RobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RobotModeRequestCapture(value), n = Ros1Rosdemo_v4RobotModeRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RobotModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RobotModeRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4RobotModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4RobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/RobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bda53abb273c252b346eefb4b4fec7b511e643e480326cc4c27c83a2898ee199",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RobotModeResponseSize(Ros1Rosdemo_v4RobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RobotModeResponseCapture(value), n = Ros1Rosdemo_v4RobotModeResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RobotModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RobotModeResponseSize(value)
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

function Ros1Rosdemo_v4RobotModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RobotModeResponseRead(r)
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

function Ros1Rosdemo_v4RobotModeResponseCapture(value)
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

/** Complete ROS1 rosdemo_v4/RunScriptRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RunScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91716b4cf7cb8978c45ade479780d8d59e6358589320945dfc12491f4db08a40",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"projectName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RunScriptRequestSize(Ros1Rosdemo_v4RunScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RunScriptRequestCapture(value), n = Ros1Rosdemo_v4RunScriptRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RunScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RunScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RunScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["projectName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RunScriptRequestWrite(value, w)
{
    w.text(value["projectName"], 256);
}

function Ros1Rosdemo_v4RunScriptRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["projectName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RunScriptRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/RunScriptResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4RunScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4dfe238cfd2fa4a1c858cab4101964ad855109e680ffbe00fc0d0739a3e581e8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4RunScriptResponseSize(Ros1Rosdemo_v4RunScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4RunScriptResponseCapture(value), n = Ros1Rosdemo_v4RunScriptResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4RunScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4RunScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4RunScriptResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4RunScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4RunScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4RunScriptResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ServoJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ServoJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4291d3eaf7d1ef4fce2df5fef5d2ca1ef845dacb91f5321d11f5823140709071",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ServoJRequestSize(Ros1Rosdemo_v4ServoJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ServoJRequestCapture(value), n = Ros1Rosdemo_v4ServoJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ServoJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ServoJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ServoJRequestSize(value)
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

function Ros1Rosdemo_v4ServoJRequestWrite(value, w)
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

function Ros1Rosdemo_v4ServoJRequestRead(r)
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

function Ros1Rosdemo_v4ServoJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ServoJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ServoJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_abafb6be9c5fb35f94d3e5731fe939dfbab4ef602609f041f7b415a5e26b4ad8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ServoJResponseSize(Ros1Rosdemo_v4ServoJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ServoJResponseCapture(value), n = Ros1Rosdemo_v4ServoJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ServoJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ServoJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ServoJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ServoJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ServoJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ServoJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ServoPRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ServoPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6650fcc171dd0b172c19629e60f086f9b67e5930238aab6d16862f8549859bbe",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0, "f" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ServoPRequestSize(Ros1Rosdemo_v4ServoPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ServoPRequestCapture(value), n = Ros1Rosdemo_v4ServoPRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ServoPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ServoPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ServoPRequestSize(value)
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

function Ros1Rosdemo_v4ServoPRequestWrite(value, w)
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

function Ros1Rosdemo_v4ServoPRequestRead(r)
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

function Ros1Rosdemo_v4ServoPRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ServoPResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ServoPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_606204f4bcaaefd1a1b6cc7d7d0cbe60efcf8ddc9e0a7df29eceb7d2d353622f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ServoPResponseSize(Ros1Rosdemo_v4ServoPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ServoPResponseCapture(value), n = Ros1Rosdemo_v4ServoPResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ServoPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ServoPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ServoPResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ServoPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ServoPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ServoPResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetBackDistanceRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetBackDistanceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8b826d716076ee8d336ca859433bb7a8eae3970d3958f239494cc61c91603877",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"distance" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetBackDistanceRequestSize(Ros1Rosdemo_v4SetBackDistanceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetBackDistanceRequestCapture(value), n = Ros1Rosdemo_v4SetBackDistanceRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetBackDistanceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetBackDistanceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetBackDistanceRequestSize(value)
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

function Ros1Rosdemo_v4SetBackDistanceRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["distance"], true);
    w.at += 8;
}

function Ros1Rosdemo_v4SetBackDistanceRequestRead(r)
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

function Ros1Rosdemo_v4SetBackDistanceRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetBackDistanceResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetBackDistanceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6276f328a689115bd05011b9ed443d9cb6587f3b92fa77e6b808cc625adbffa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetBackDistanceResponseSize(Ros1Rosdemo_v4SetBackDistanceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetBackDistanceResponseCapture(value), n = Ros1Rosdemo_v4SetBackDistanceResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetBackDistanceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetBackDistanceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetBackDistanceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetBackDistanceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetBackDistanceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetBackDistanceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_668510a449bcf69f157ce9f973598434585e0effca009b4a2d105335546ef699",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetCoilsRequestSize(Ros1Rosdemo_v4SetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetCoilsRequestCapture(value), n = Ros1Rosdemo_v4SetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetCoilsRequestSize(value)
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

function Ros1Rosdemo_v4SetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
}

function Ros1Rosdemo_v4SetCoilsRequestRead(r)
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

function Ros1Rosdemo_v4SetCoilsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e3dc557bd4b773d6b1c95fd2c77d38995e9fd0d5b8cf1f9da3786012b31ab3c4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetCoilsResponseSize(Ros1Rosdemo_v4SetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetCoilsResponseCapture(value), n = Ros1Rosdemo_v4SetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetCoilsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetCoilsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetCollisionLevelRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetCollisionLevelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41ccc645b15211a05f0e385cf94ce8943f52f0db8d11b3ca6e96b2fd6eed6ede",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetCollisionLevelRequestSize(Ros1Rosdemo_v4SetCollisionLevelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetCollisionLevelRequestCapture(value), n = Ros1Rosdemo_v4SetCollisionLevelRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetCollisionLevelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetCollisionLevelRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetCollisionLevelRequestSize(value)
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

function Ros1Rosdemo_v4SetCollisionLevelRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetCollisionLevelRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetCollisionLevelRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetCollisionLevelResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetCollisionLevelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fe8beab960e6d28dd27ba1fec6fc3228692f1c3b09b7bd27460a218aba36e166",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetCollisionLevelResponseSize(Ros1Rosdemo_v4SetCollisionLevelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetCollisionLevelResponseCapture(value), n = Ros1Rosdemo_v4SetCollisionLevelResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetCollisionLevelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetCollisionLevelResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetCollisionLevelResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetCollisionLevelResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetCollisionLevelResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetCollisionLevelResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a30f714acb56987827196d8522a5411c2b94948a59427c7cfe3a3aacd31dd71",
    maxWireBytes : 532,
    minWireBytes : 20,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : "", "valType" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetHoldRegsRequestSize(Ros1Rosdemo_v4SetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetHoldRegsRequestCapture(value), n = Ros1Rosdemo_v4SetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetHoldRegsRequestSize(value)
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

function Ros1Rosdemo_v4SetHoldRegsRequestWrite(value, w)
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

function Ros1Rosdemo_v4SetHoldRegsRequestRead(r)
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

function Ros1Rosdemo_v4SetHoldRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_15808e5f2cf1f577a6b0c60284b9a506ac006cf5e9dce48c77a85fb921c9c934",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetHoldRegsResponseSize(Ros1Rosdemo_v4SetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetHoldRegsResponseCapture(value), n = Ros1Rosdemo_v4SetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetHoldRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetHoldRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetOutputBoolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputBoolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c4524f5cb7e1cf9a16ab3444663cb7097dd16036b074602c0f94d6a729dfffd3",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputBoolRequestSize(Ros1Rosdemo_v4SetOutputBoolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputBoolRequestCapture(value), n = Ros1Rosdemo_v4SetOutputBoolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputBoolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputBoolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputBoolRequestSize(value)
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

function Ros1Rosdemo_v4SetOutputBoolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetOutputBoolRequestRead(r)
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

function Ros1Rosdemo_v4SetOutputBoolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetOutputBoolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputBoolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49734ad4fb75dac84b329889d76b274fb95cd0116b22ff95b91d45bbf3901445",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputBoolResponseSize(Ros1Rosdemo_v4SetOutputBoolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputBoolResponseCapture(value), n = Ros1Rosdemo_v4SetOutputBoolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputBoolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputBoolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputBoolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetOutputBoolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetOutputBoolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetOutputBoolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetOutputFloatRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputFloatRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca0404916a941f92cddc866b575652a4ed4550d30bd1b0e92140a81ff3e16de0",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputFloatRequestSize(Ros1Rosdemo_v4SetOutputFloatRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputFloatRequestCapture(value), n = Ros1Rosdemo_v4SetOutputFloatRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputFloatRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputFloatRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputFloatRequestSize(value)
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

function Ros1Rosdemo_v4SetOutputFloatRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
}

function Ros1Rosdemo_v4SetOutputFloatRequestRead(r)
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

function Ros1Rosdemo_v4SetOutputFloatRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetOutputFloatResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputFloatResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_533fdaf7fb6fcdf7a7d9fb0e764b5efe4f2f82957a63b1f85131de3687957173",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputFloatResponseSize(Ros1Rosdemo_v4SetOutputFloatResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputFloatResponseCapture(value), n = Ros1Rosdemo_v4SetOutputFloatResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputFloatResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputFloatResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputFloatResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetOutputFloatResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetOutputFloatResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetOutputFloatResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetOutputIntRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputIntRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3abab70756725846970f1065edd99f39b5cb1be00f13588aad95b567d14aa0de",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputIntRequestSize(Ros1Rosdemo_v4SetOutputIntRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputIntRequestCapture(value), n = Ros1Rosdemo_v4SetOutputIntRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputIntRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputIntRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputIntRequestSize(value)
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

function Ros1Rosdemo_v4SetOutputIntRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetOutputIntRequestRead(r)
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

function Ros1Rosdemo_v4SetOutputIntRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetOutputIntResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetOutputIntResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7c706a60b351b6596c352dbf955a88a2c2d532abe24f2ec208b755afe975525",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetOutputIntResponseSize(Ros1Rosdemo_v4SetOutputIntResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetOutputIntResponseCapture(value), n = Ros1Rosdemo_v4SetOutputIntResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetOutputIntResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetOutputIntResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetOutputIntResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetOutputIntResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetOutputIntResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetOutputIntResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetPayloadRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetPayloadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99feda7d525eb9836bd9bb5123915816639d25657b7dcbc3353676234dd83087",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"load" : 0, "x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetPayloadRequestSize(Ros1Rosdemo_v4SetPayloadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetPayloadRequestCapture(value), n = Ros1Rosdemo_v4SetPayloadRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetPayloadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetPayloadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetPayloadRequestSize(value)
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

function Ros1Rosdemo_v4SetPayloadRequestWrite(value, w)
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

function Ros1Rosdemo_v4SetPayloadRequestRead(r)
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

function Ros1Rosdemo_v4SetPayloadRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetPayloadResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetPayloadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7decd187d884825cb1ebcfd6a30e8d52956fdf3635f77f573df005737dde1814",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetPayloadResponseSize(Ros1Rosdemo_v4SetPayloadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetPayloadResponseCapture(value), n = Ros1Rosdemo_v4SetPayloadResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetPayloadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetPayloadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetPayloadResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetPayloadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetPayloadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetPayloadResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetPostCollisionModeRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetPostCollisionModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c3f53e0d872083bb0fe033564505113dd4cf447653d78e31ed07cec3f327557",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetPostCollisionModeRequestSize(Ros1Rosdemo_v4SetPostCollisionModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetPostCollisionModeRequestCapture(value), n = Ros1Rosdemo_v4SetPostCollisionModeRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetPostCollisionModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetPostCollisionModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetPostCollisionModeRequestSize(value)
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

function Ros1Rosdemo_v4SetPostCollisionModeRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetPostCollisionModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetPostCollisionModeRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetPostCollisionModeResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetPostCollisionModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3515493683a99cc17beed55155f8a539dc46963961c469e564123cdb0718e896",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetPostCollisionModeResponseSize(Ros1Rosdemo_v4SetPostCollisionModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetPostCollisionModeResponseCapture(value), n = Ros1Rosdemo_v4SetPostCollisionModeResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetPostCollisionModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetPostCollisionModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetPostCollisionModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetPostCollisionModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetPostCollisionModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetPostCollisionModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_546964bab46e715348a7a9198b62fb8854045e65dec5abe9c4f17f65037278e6",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"part" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetSafeSkinRequestSize(Ros1Rosdemo_v4SetSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetSafeSkinRequestCapture(value), n = Ros1Rosdemo_v4SetSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetSafeSkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetSafeSkinRequestSize(value)
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

function Ros1Rosdemo_v4SetSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["part"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetSafeSkinRequestRead(r)
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

function Ros1Rosdemo_v4SetSafeSkinRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4554a225a629cc97b596f5c498906d1f3bfc840cb3c243285a9dddbe6abee576",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetSafeSkinResponseSize(Ros1Rosdemo_v4SetSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetSafeSkinResponseCapture(value), n = Ros1Rosdemo_v4SetSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetSafeSkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetSafeSkinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetSafeSkinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetSafeWallEnableRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetSafeWallEnableRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16b0daf7af42d7f14752f854a996aabb61c328999ccd13b0cb59c9f48fc645b4",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetSafeWallEnableRequestSize(Ros1Rosdemo_v4SetSafeWallEnableRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetSafeWallEnableRequestCapture(value), n = Ros1Rosdemo_v4SetSafeWallEnableRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetSafeWallEnableRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetSafeWallEnableRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetSafeWallEnableRequestSize(value)
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

function Ros1Rosdemo_v4SetSafeWallEnableRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetSafeWallEnableRequestRead(r)
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

function Ros1Rosdemo_v4SetSafeWallEnableRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetSafeWallEnableResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetSafeWallEnableResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28c807143ad6f567c7c7f1c16a37b5a9c65bf72b094994ea5ae23a72bfc13c38",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetSafeWallEnableResponseSize(Ros1Rosdemo_v4SetSafeWallEnableResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetSafeWallEnableResponseCapture(value), n = Ros1Rosdemo_v4SetSafeWallEnableResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetSafeWallEnableResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetSafeWallEnableResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetSafeWallEnableResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetSafeWallEnableResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetSafeWallEnableResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetSafeWallEnableResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95979e2c7d69ea6d4e60db52f1a6b2c83ff96c8913fa7149b9006c72377933da",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolRequestSize(Ros1Rosdemo_v4SetToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolRequestCapture(value), n = Ros1Rosdemo_v4SetToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolRequestSize(value)
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

function Ros1Rosdemo_v4SetToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros1Rosdemo_v4SetToolRequestRead(r)
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

function Ros1Rosdemo_v4SetToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43022c007cc4c8345eac14b991870e5d7d451c0346ee6f870e6398fadf15333f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolResponseSize(Ros1Rosdemo_v4SetToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolResponseCapture(value), n = Ros1Rosdemo_v4SetToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetTool485Request codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetTool485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_297e32de0960af99e4aff4a33b616c51b4087a6223665ce4993ab5f9c3dcced2",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baudrate" : 0, "parity" : "", "stop" : 0, "identify" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetTool485RequestSize(Ros1Rosdemo_v4SetTool485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetTool485RequestCapture(value), n = Ros1Rosdemo_v4SetTool485RequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetTool485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetTool485RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetTool485RequestSize(value)
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

function Ros1Rosdemo_v4SetTool485RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baudrate"], true);
    w.at += 4;
    w.text(value["parity"], 256);
    w.v.setInt32(w.at, value["stop"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["identify"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetTool485RequestRead(r)
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

function Ros1Rosdemo_v4SetTool485RequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetTool485Response codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetTool485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f558d54d6caec7abf82558798a1254ce4ad782a6b3236c28786288674fdee6d7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetTool485ResponseSize(Ros1Rosdemo_v4SetTool485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetTool485ResponseCapture(value), n = Ros1Rosdemo_v4SetTool485ResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetTool485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetTool485ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetTool485ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetTool485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetTool485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetTool485ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetToolModeRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d9e8ef921cc8e1eb10048869bc6b2cdbd3b43bde60329c4c5936ae78dae1e9b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "type" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolModeRequestSize(Ros1Rosdemo_v4SetToolModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolModeRequestCapture(value), n = Ros1Rosdemo_v4SetToolModeRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolModeRequestSize(value)
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

function Ros1Rosdemo_v4SetToolModeRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetToolModeRequestRead(r)
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

function Ros1Rosdemo_v4SetToolModeRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetToolModeResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1f4d3423a7057457bc7eeb44565ecb2c3c4da2ea67b9f8f5833f893320ec4f13",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolModeResponseSize(Ros1Rosdemo_v4SetToolModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolModeResponseCapture(value), n = Ros1Rosdemo_v4SetToolModeResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetToolModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetToolModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetToolModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetToolPowerRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolPowerRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b50da7a7513c57b7d7068835275af7245e904a21a7416bdea83c83b07dc2b985",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolPowerRequestSize(Ros1Rosdemo_v4SetToolPowerRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolPowerRequestCapture(value), n = Ros1Rosdemo_v4SetToolPowerRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolPowerRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolPowerRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolPowerRequestSize(value)
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

function Ros1Rosdemo_v4SetToolPowerRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetToolPowerRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetToolPowerRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetToolPowerResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetToolPowerResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da8afa2a4b60234acd7b36aab53e15be6567b8aca3c45a1fa2af64a07f5a2227",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetToolPowerResponseSize(Ros1Rosdemo_v4SetToolPowerResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetToolPowerResponseCapture(value), n = Ros1Rosdemo_v4SetToolPowerResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetToolPowerResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetToolPowerResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetToolPowerResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetToolPowerResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetToolPowerResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetToolPowerResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SetUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ace2739af37656402842a9825cb98dcb0eeb80a9899330f5aa457305d74669aa",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetUserRequestSize(Ros1Rosdemo_v4SetUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetUserRequestCapture(value), n = Ros1Rosdemo_v4SetUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetUserRequestSize(value)
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

function Ros1Rosdemo_v4SetUserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.text(value["value"], 256);
}

function Ros1Rosdemo_v4SetUserRequestRead(r)
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

function Ros1Rosdemo_v4SetUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SetUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SetUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_878da3404c6d0a82f1a567bb69a1280a0fea90aa54c12460fdd24810e9dfe919",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SetUserResponseSize(Ros1Rosdemo_v4SetUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SetUserResponseCapture(value), n = Ros1Rosdemo_v4SetUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SetUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SetUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SetUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SetUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SetUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SetUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/SpeedFactorRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SpeedFactorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3d627fa6ccc17b96d3d957c17e96f9e5338538159dfa85959610a9f901803a9a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ratio" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SpeedFactorRequestSize(Ros1Rosdemo_v4SpeedFactorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SpeedFactorRequestCapture(value), n = Ros1Rosdemo_v4SpeedFactorRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SpeedFactorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SpeedFactorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SpeedFactorRequestSize(value)
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

function Ros1Rosdemo_v4SpeedFactorRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["ratio"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SpeedFactorRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ratio"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SpeedFactorRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/SpeedFactorResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4SpeedFactorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5f425013611e572961c782e71d24c4d3b37a26445b145896fab7c49d83e899d3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4SpeedFactorResponseSize(Ros1Rosdemo_v4SpeedFactorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4SpeedFactorResponseCapture(value), n = Ros1Rosdemo_v4SpeedFactorResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4SpeedFactorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4SpeedFactorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4SpeedFactorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4SpeedFactorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4SpeedFactorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4SpeedFactorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/StartDragRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StartDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_77b94a2182924aca83a63839ea536bb260a82938e4777d131965d6df4e296f3f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StartDragRequestSize(Ros1Rosdemo_v4StartDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StartDragRequestCapture(value), n = Ros1Rosdemo_v4StartDragRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StartDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StartDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StartDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StartDragRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4StartDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4StartDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/StartDragResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StartDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f46b30ea4abf0eab654b8643dd8ec07ab1069615aa17cd77fba9a9e9b55be042",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StartDragResponseSize(Ros1Rosdemo_v4StartDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StartDragResponseCapture(value), n = Ros1Rosdemo_v4StartDragResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StartDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StartDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StartDragResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StartDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4StartDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4StartDragResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/StartPathRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StartPathRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb496e5aa8efd5167f627af32c004204daefcc490e9402077cff3a5bde850bd8",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StartPathRequestSize(Ros1Rosdemo_v4StartPathRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StartPathRequestCapture(value), n = Ros1Rosdemo_v4StartPathRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StartPathRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StartPathRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StartPathRequestSize(value)
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

function Ros1Rosdemo_v4StartPathRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Rosdemo_v4StartPathRequestRead(r)
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

function Ros1Rosdemo_v4StartPathRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/StartPathResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StartPathResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2748c135187deaf6c46c8b764be8cd8b526aeb5f2725c9e39df6fbdc37db2296",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StartPathResponseSize(Ros1Rosdemo_v4StartPathResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StartPathResponseCapture(value), n = Ros1Rosdemo_v4StartPathResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StartPathResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StartPathResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StartPathResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StartPathResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4StartPathResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4StartPathResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/StopRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e290dd226267a51ec721800de05786d5e8855a5aa66f445d71bc66cdaefcac3a",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopRequestSize(Ros1Rosdemo_v4StopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopRequestCapture(value), n = Ros1Rosdemo_v4StopRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4StopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4StopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/StopResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_433970515842257c1a95945bf5cb81459028497c081bb506168940124e01a4a6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopResponseSize(Ros1Rosdemo_v4StopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopResponseCapture(value), n = Ros1Rosdemo_v4StopResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4StopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4StopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/StopDragRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6b0bd3ad7c38923dddb34e9dacb10957f8039ea8de975ed244e6f055f4382c7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopDragRequestSize(Ros1Rosdemo_v4StopDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopDragRequestCapture(value), n = Ros1Rosdemo_v4StopDragRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopDragRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4StopDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4StopDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/StopDragResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_983e05b8edb970adbca14ff844e9bb547fd1bbf5d73149672f0e3c64d62c3c49",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopDragResponseSize(Ros1Rosdemo_v4StopDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopDragResponseCapture(value), n = Ros1Rosdemo_v4StopDragResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopDragResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4StopDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4StopDragResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/StopMoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopMoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ae0e9ee98e7383bbc1d4cfdd8f52c66f466533c9eeef583c6b3d815f5098e45c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopMoveJogRequestSize(Ros1Rosdemo_v4StopMoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopMoveJogRequestCapture(value), n = Ros1Rosdemo_v4StopMoveJogRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopMoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopMoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopMoveJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopMoveJogRequestWrite(value, w)
{
}

function Ros1Rosdemo_v4StopMoveJogRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v4StopMoveJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v4/StopMoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4StopMoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1fc654fc70290eaa16187d80ad84b69ae2ba9adb1bb1e3ea6e7565247721955",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4StopMoveJogResponseSize(Ros1Rosdemo_v4StopMoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4StopMoveJogResponseCapture(value), n = Ros1Rosdemo_v4StopMoveJogResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4StopMoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4StopMoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4StopMoveJogResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4StopMoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4StopMoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4StopMoveJogResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/TcpDashboardRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4TcpDashboardRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47cf7cf3c864691b6c60c2657b1491c56013ccffc389a850f72bacd89e101669",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4TcpDashboardRequestSize(Ros1Rosdemo_v4TcpDashboardRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4TcpDashboardRequestCapture(value), n = Ros1Rosdemo_v4TcpDashboardRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4TcpDashboardRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4TcpDashboardRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4TcpDashboardRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4TcpDashboardRequestWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros1Rosdemo_v4TcpDashboardRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4TcpDashboardRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/TcpDashboardResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4TcpDashboardResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7caec2f6f4bcb9e6bbb4a3adb1e20ad6935cfb77d72bc6d8772ccddfa9d57725",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v4TcpDashboardResponseSize(Ros1Rosdemo_v4TcpDashboardResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4TcpDashboardResponseCapture(value), n = Ros1Rosdemo_v4TcpDashboardResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4TcpDashboardResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4TcpDashboardResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4TcpDashboardResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["result"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4TcpDashboardResponseWrite(value, w)
{
    w.text(value["result"], 256);
}

function Ros1Rosdemo_v4TcpDashboardResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["result"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4TcpDashboardResponseCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a8ab3c5f3ba17c1da69c9b96c6c5b3351a9b814c4c564203fce628e1b06ca633",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolRequestSize(Ros1Rosdemo_v4ToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolRequestCapture(value), n = Ros1Rosdemo_v4ToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolRequestSize(value)
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

function Ros1Rosdemo_v4ToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a9027450905cbd15ab300924c74e2990df138d19bac12b7d1f5033fded01ea8e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolResponseSize(Ros1Rosdemo_v4ToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolResponseCapture(value), n = Ros1Rosdemo_v4ToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ToolAIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c141fb5f247d29ef1f6af584320382779cfc3febf3f8e57722d4c49cad478c94",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolAIRequestSize(Ros1Rosdemo_v4ToolAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolAIRequestCapture(value), n = Ros1Rosdemo_v4ToolAIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolAIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolAIRequestSize(value)
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

function Ros1Rosdemo_v4ToolAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolAIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolAIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2b36d315526555b9c2890193d72da3bc11f28d96bd0666d1138e8d52ca2e96bd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolAIResponseSize(Ros1Rosdemo_v4ToolAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolAIResponseCapture(value), n = Ros1Rosdemo_v4ToolAIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolAIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolAIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ToolAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolAIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ToolDIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8180502a73118db535342bee15363e88e24249bfbffb486e986f9b8481267a0f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDIRequestSize(Ros1Rosdemo_v4ToolDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDIRequestCapture(value), n = Ros1Rosdemo_v4ToolDIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDIRequestSize(value)
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

function Ros1Rosdemo_v4ToolDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolDIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolDIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e062173a11ff92dbdf6608de99da922ec66fdc55252a53f059b4fe7b4e73aedd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDIResponseSize(Ros1Rosdemo_v4ToolDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDIResponseCapture(value), n = Ros1Rosdemo_v4ToolDIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ToolDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolDIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ToolDORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fcd7e9d3287bcc24acb0dd5300d4804dbb716275e6d582b50ec6ff7c6670baa0",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDORequestSize(Ros1Rosdemo_v4ToolDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDORequestCapture(value), n = Ros1Rosdemo_v4ToolDORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDORequestSize(value)
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

function Ros1Rosdemo_v4ToolDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDORequestRead(r)
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

function Ros1Rosdemo_v4ToolDORequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolDOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_06f053e9ad52998b7947587d9982a20f9e72bc0be403f419ea4a096b0d539852",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDOResponseSize(Ros1Rosdemo_v4ToolDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDOResponseCapture(value), n = Ros1Rosdemo_v4ToolDOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ToolDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolDOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/ToolDOInstantRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDOInstantRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c68c24ef0ec153f71f5c6805aa8e9ae3ff12b5dfe64415da75af18df97b4784b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDOInstantRequestSize(Ros1Rosdemo_v4ToolDOInstantRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDOInstantRequestCapture(value), n = Ros1Rosdemo_v4ToolDOInstantRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDOInstantRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDOInstantRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDOInstantRequestSize(value)
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

function Ros1Rosdemo_v4ToolDOInstantRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDOInstantRequestRead(r)
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

function Ros1Rosdemo_v4ToolDOInstantRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/ToolDOInstantResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4ToolDOInstantResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c880a6b3852d4dad8365a6334075096ed221040fb9e86b8e9a545c11f9a48981",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4ToolDOInstantResponseSize(Ros1Rosdemo_v4ToolDOInstantResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4ToolDOInstantResponseCapture(value), n = Ros1Rosdemo_v4ToolDOInstantResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4ToolDOInstantResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4ToolDOInstantResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4ToolDOInstantResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4ToolDOInstantResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4ToolDOInstantResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4ToolDOInstantResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/UserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4UserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1d043f84db26368dd7207cf5585380d24f89c9d990922652dd76720c7f6ff3dd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4UserRequestSize(Ros1Rosdemo_v4UserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4UserRequestCapture(value), n = Ros1Rosdemo_v4UserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4UserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4UserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4UserRequestSize(value)
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

function Ros1Rosdemo_v4UserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4UserRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4UserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/UserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4UserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_84129d499ec84200cb970b87870fa4aaa2398bf8e55b3db49260da40b6521abb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4UserResponseSize(Ros1Rosdemo_v4UserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4UserResponseCapture(value), n = Ros1Rosdemo_v4UserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4UserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4UserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4UserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4UserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4UserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4UserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/VelJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4VelJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_979d0b0dc39a507d47ce758757b6abc933e2887ea56e713ef60c27a72b1ff864",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4VelJRequestSize(Ros1Rosdemo_v4VelJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4VelJRequestCapture(value), n = Ros1Rosdemo_v4VelJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4VelJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4VelJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4VelJRequestSize(value)
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

function Ros1Rosdemo_v4VelJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4VelJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4VelJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/VelJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4VelJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_37148bdc9a4c8d9dfb0249ffa5e87fe917ea88c4b212a793fafdcb92ec3a1749",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4VelJResponseSize(Ros1Rosdemo_v4VelJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4VelJResponseCapture(value), n = Ros1Rosdemo_v4VelJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4VelJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4VelJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4VelJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4VelJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4VelJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4VelJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v4/VelLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4VelLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed647102e30f45418ff04cb3717694ba1c2256497773ccd24f6336e45877d05e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4VelLRequestSize(Ros1Rosdemo_v4VelLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4VelLRequestCapture(value), n = Ros1Rosdemo_v4VelLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4VelLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4VelLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4VelLRequestSize(value)
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

function Ros1Rosdemo_v4VelLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4VelLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4VelLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v4/VelLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v4VelLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_013b1c007d34ccc7d9f12c272ac0720eeb347727d6861995dd1a7290c8eace85",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v4VelLResponseSize(Ros1Rosdemo_v4VelLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v4VelLResponseCapture(value), n = Ros1Rosdemo_v4VelLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v4VelLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v4VelLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v4VelLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v4VelLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v4VelLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v4VelLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}
