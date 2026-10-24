/**
 * @file bounded_records.mjs
 * @brief Retain original dobot value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
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

/** Complete ROS1 rosdemo_v3/AIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b602a1e465dd6b75ba4a2e0217613655696ef285e83432e80defff56712d7684",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AIRequestSize(Ros1Rosdemo_v3AIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AIRequestCapture(value), n = Ros1Rosdemo_v3AIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AIRequestSize(value)
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

function Ros1Rosdemo_v3AIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/AIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6b3106431d74363789930f01dffcae6ad1d1bc6ca7a7f1e9e018df51700e922f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AIResponseSize(Ros1Rosdemo_v3AIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AIResponseCapture(value), n = Ros1Rosdemo_v3AIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3AIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/AORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea8f0fd6d894e1a23e149adfc51b8c3a5b9c037df95290e63cb3e3e0bdd552b6",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AORequestSize(Ros1Rosdemo_v3AORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AORequestCapture(value), n = Ros1Rosdemo_v3AORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AORequestSize(value)
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

function Ros1Rosdemo_v3AORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AORequestRead(r)
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

function Ros1Rosdemo_v3AORequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/AOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4031006ac8b81a933b1d80c47e218cbcba3cb3a50b8f0cad2aa52267fb97923",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AOResponseSize(Ros1Rosdemo_v3AOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AOResponseCapture(value), n = Ros1Rosdemo_v3AOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3AOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/AOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2342287600070fe6036788d4e658dfb03a15a1f7e63bec0eb9c59604ba47c633",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AOExecuteRequestSize(Ros1Rosdemo_v3AOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AOExecuteRequestCapture(value), n = Ros1Rosdemo_v3AOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AOExecuteRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AOExecuteRequestSize(value)
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

function Ros1Rosdemo_v3AOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AOExecuteRequestRead(r)
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

function Ros1Rosdemo_v3AOExecuteRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/AOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec6a75397d1e0bf9c66ff9bf7531960e8c92225c7b632a213e7912a80b106be8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AOExecuteResponseSize(Ros1Rosdemo_v3AOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AOExecuteResponseCapture(value), n = Ros1Rosdemo_v3AOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AOExecuteResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AOExecuteResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3AOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AOExecuteResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/AccJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AccJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee7fc2b23de9a24fefd510bc63d67aa38d66051ef6a00e714f512eaeb0d30b15",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AccJRequestSize(Ros1Rosdemo_v3AccJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AccJRequestCapture(value), n = Ros1Rosdemo_v3AccJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AccJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AccJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AccJRequestSize(value)
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

function Ros1Rosdemo_v3AccJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AccJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AccJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/AccJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AccJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1bc2c42b4088dcf05aa9d517c86ee0d32aa29bbe0a0eaa4089a963657490f604",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AccJResponseSize(Ros1Rosdemo_v3AccJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AccJResponseCapture(value), n = Ros1Rosdemo_v3AccJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AccJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AccJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AccJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3AccJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AccJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AccJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/AccLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AccLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd2180c136263ccbcae8759c605671f612aafcbbc3d6e210d190358e77a3f1f8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AccLRequestSize(Ros1Rosdemo_v3AccLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AccLRequestCapture(value), n = Ros1Rosdemo_v3AccLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AccLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AccLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AccLRequestSize(value)
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

function Ros1Rosdemo_v3AccLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AccLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AccLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/AccLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3AccLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44e3c490f73cef68983ad0778534665a2410a94c35d2ee4051a5e4806e1ec52d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3AccLResponseSize(Ros1Rosdemo_v3AccLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3AccLResponseCapture(value), n = Ros1Rosdemo_v3AccLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3AccLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3AccLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3AccLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3AccLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3AccLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3AccLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ArcRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ArcRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0a58fd6305724f29468dfe7c962552e0a3ccacc8acc3dc35a0a425540ce7b827",
    maxWireBytes : 4260,
    minWireBytes : 100,
    cartesianMaxWireBytes : 4260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x1" : 0, "y1" : 0, "z1" : 0, "a1" : 0, "b1" : 0, "c1" : 0, "x2" : 0, "y2" : 0, "z2" : 0, "a2" : 0, "b2" : 0, "c2" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ArcRequestSize(Ros1Rosdemo_v3ArcRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ArcRequestCapture(value), n = Ros1Rosdemo_v3ArcRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ArcRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4260, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ArcRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ArcRequestSize(value)
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

function Ros1Rosdemo_v3ArcRequestWrite(value, w)
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

function Ros1Rosdemo_v3ArcRequestRead(r)
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

function Ros1Rosdemo_v3ArcRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ArcResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ArcResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_654b0ad2eab7c5246beb6e9214fd7aad5c48ea87c7d7ff723742a1adef0157e7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ArcResponseSize(Ros1Rosdemo_v3ArcResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ArcResponseCapture(value), n = Ros1Rosdemo_v3ArcResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ArcResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ArcResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ArcResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ArcResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ArcResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ArcResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ArchRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ArchRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7b963ad26c84e7d97cdde31b5433e9e047c2e6bf308ba8b84f2be45c4edf84b5",
    maxWireBytes : 4168,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4168n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "cpValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ArchRequestSize(Ros1Rosdemo_v3ArchRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ArchRequestCapture(value), n = Ros1Rosdemo_v3ArchRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ArchRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4168, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ArchRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ArchRequestSize(value)
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

function Ros1Rosdemo_v3ArchRequestWrite(value, w)
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

function Ros1Rosdemo_v3ArchRequestRead(r)
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

function Ros1Rosdemo_v3ArchRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ArchResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ArchResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8f2ce9205a4747044bd72d6fcd196abcfd05c26091e73a05aeeceedce5492db8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ArchResponseSize(Ros1Rosdemo_v3ArchResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ArchResponseCapture(value), n = Ros1Rosdemo_v3ArchResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ArchResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ArchResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ArchResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ArchResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ArchResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ArchResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/BrakeControlRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3BrakeControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9512b030827f41d17e39c78ff60c18d91023f3dbbf4156e456a2d2009c2ff1f9",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3BrakeControlRequestSize(Ros1Rosdemo_v3BrakeControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3BrakeControlRequestCapture(value), n = Ros1Rosdemo_v3BrakeControlRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3BrakeControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3BrakeControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3BrakeControlRequestSize(value)
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

function Ros1Rosdemo_v3BrakeControlRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["axisID"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3BrakeControlRequestRead(r)
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

function Ros1Rosdemo_v3BrakeControlRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/BrakeControlResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3BrakeControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2bd6142faf934f639bdb6bb58f962091e1e7ac31987a3e5f1f66e807fdab7ed9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3BrakeControlResponseSize(Ros1Rosdemo_v3BrakeControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3BrakeControlResponseCapture(value), n = Ros1Rosdemo_v3BrakeControlResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3BrakeControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3BrakeControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3BrakeControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3BrakeControlResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3BrakeControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3BrakeControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/CPRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3CPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f7e35d289326ac400d9b9480874de4c64cf6fac6b00c7cb1e174f0885289c8b1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3CPRequestSize(Ros1Rosdemo_v3CPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3CPRequestCapture(value), n = Ros1Rosdemo_v3CPRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3CPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3CPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3CPRequestSize(value)
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

function Ros1Rosdemo_v3CPRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3CPRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3CPRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/CPResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3CPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1dcc779238507d4226b4532e54677fdc1b5d8df00944b3b9490affe5c90694f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3CPResponseSize(Ros1Rosdemo_v3CPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3CPResponseCapture(value), n = Ros1Rosdemo_v3CPResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3CPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3CPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3CPResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3CPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3CPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3CPResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/CircleRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3CircleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_56fcfc6f974a83502fd82f10d9188e6be62cdbbefc367df7ac42e7870a38d819",
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
        Ros1Rosdemo_v3CircleRequestSize(Ros1Rosdemo_v3CircleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3CircleRequestCapture(value), n = Ros1Rosdemo_v3CircleRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3CircleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4264, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3CircleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3CircleRequestSize(value)
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

function Ros1Rosdemo_v3CircleRequestWrite(value, w)
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

function Ros1Rosdemo_v3CircleRequestRead(r)
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

function Ros1Rosdemo_v3CircleRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/CircleResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3CircleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_77b6bd5164520bd43a51d52db0775c36101c832410ea253c3e8affe28613d465",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3CircleResponseSize(Ros1Rosdemo_v3CircleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3CircleResponseCapture(value), n = Ros1Rosdemo_v3CircleResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3CircleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3CircleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3CircleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3CircleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3CircleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3CircleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ClearErrorRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ClearErrorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_10a58a18f55822228afad043c190b2108b736ac3bc846bad306f878e72970b45",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ClearErrorRequestSize(Ros1Rosdemo_v3ClearErrorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ClearErrorRequestCapture(value), n = Ros1Rosdemo_v3ClearErrorRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ClearErrorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ClearErrorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ClearErrorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ClearErrorRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3ClearErrorRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3ClearErrorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/ClearErrorResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ClearErrorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd4b09f1dd37b4e8bf7c26147e4e956e3b768a09a7fa062b9d0791326cfc443f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ClearErrorResponseSize(Ros1Rosdemo_v3ClearErrorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ClearErrorResponseCapture(value), n = Ros1Rosdemo_v3ClearErrorResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ClearErrorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ClearErrorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ClearErrorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ClearErrorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ClearErrorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ClearErrorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ContinueScriptRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ContinueScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a9a03292712f96433cd8ffa390bb6a9b8d2c240ba3ccad086834e065618c0ae",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ContinueScriptRequestSize(Ros1Rosdemo_v3ContinueScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ContinueScriptRequestCapture(value), n = Ros1Rosdemo_v3ContinueScriptRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ContinueScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ContinueScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ContinueScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ContinueScriptRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3ContinueScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3ContinueScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/ContinueScriptResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ContinueScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5bcedbffe96126d06ecfd342b8e09ed27d17ee4c696b6bf2cba9110eb22812a6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ContinueScriptResponseSize(Ros1Rosdemo_v3ContinueScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ContinueScriptResponseCapture(value), n = Ros1Rosdemo_v3ContinueScriptResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ContinueScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ContinueScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ContinueScriptResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ContinueScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ContinueScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ContinueScriptResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ContinuesRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ContinuesRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_69ffe640251ba368c4276f9b3051b68fa7fa21f6cc5fd79d77369b8ec76721ce",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ContinuesRequestSize(Ros1Rosdemo_v3ContinuesRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ContinuesRequestCapture(value), n = Ros1Rosdemo_v3ContinuesRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ContinuesRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ContinuesRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ContinuesRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ContinuesRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3ContinuesRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3ContinuesRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/ContinuesResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ContinuesResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2136b7af34df7644815eacb207211915ab103e9ddfd701e2db74acef0886cdd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ContinuesResponseSize(Ros1Rosdemo_v3ContinuesResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ContinuesResponseCapture(value), n = Ros1Rosdemo_v3ContinuesResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ContinuesResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ContinuesResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ContinuesResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ContinuesResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ContinuesResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ContinuesResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a056a7e904b0e24c7d94573364baa09f564d73f7abfe731624b6415012cf5211",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DIRequestSize(Ros1Rosdemo_v3DIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DIRequestCapture(value), n = Ros1Rosdemo_v3DIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DIRequestSize(value)
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

function Ros1Rosdemo_v3DIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c764acc5c7170755a41db12875eeb4376b63419ba2165920fce6e930a413333",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DIResponseSize(Ros1Rosdemo_v3DIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DIResponseCapture(value), n = Ros1Rosdemo_v3DIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DIGroupRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DIGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6cdd5c2c3f926c92b0e44917cc57ece31ba92fc680b4aad7a756180f92251e4d",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DIGroupRequestSize(Ros1Rosdemo_v3DIGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DIGroupRequestCapture(value), n = Ros1Rosdemo_v3DIGroupRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DIGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DIGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DIGroupRequestSize(value)
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

function Ros1Rosdemo_v3DIGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rosdemo_v3DIGroupRequestRead(r)
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

function Ros1Rosdemo_v3DIGroupRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DIGroupResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DIGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e50223024312a513bbea9f92c05fc3238e277ebeaed639de866da419917f7b8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DIGroupResponseSize(Ros1Rosdemo_v3DIGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DIGroupResponseCapture(value), n = Ros1Rosdemo_v3DIGroupResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DIGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DIGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DIGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DIGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DIGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DIGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e94e2138062ab0a7034e2dcdd7ef239a7d88939fad1fcd670019cb5eadbab929",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DORequestSize(Ros1Rosdemo_v3DORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DORequestCapture(value), n = Ros1Rosdemo_v3DORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DORequestSize(value)
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

function Ros1Rosdemo_v3DORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DORequestRead(r)
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

function Ros1Rosdemo_v3DORequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6e5bccf43f36bcefb4a4f4546dc85298f1dd23a383db5db7e5a0959efdb90d48",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DOResponseSize(Ros1Rosdemo_v3DOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DOResponseCapture(value), n = Ros1Rosdemo_v3DOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce6129f7a0acf19faa0e6b3dc9e6ceb88a049cf6e1f8d8bce39287bca09282a5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DOExecuteRequestSize(Ros1Rosdemo_v3DOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DOExecuteRequestCapture(value), n = Ros1Rosdemo_v3DOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DOExecuteRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DOExecuteRequestSize(value)
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

function Ros1Rosdemo_v3DOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DOExecuteRequestRead(r)
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

function Ros1Rosdemo_v3DOExecuteRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_048260cfdda06abf9129494dcdb273ce906a0e360d8d57de67c5288f6b04cfab",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DOExecuteResponseSize(Ros1Rosdemo_v3DOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DOExecuteResponseCapture(value), n = Ros1Rosdemo_v3DOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DOExecuteResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DOExecuteResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DOExecuteResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DOGroupRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DOGroupRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d518336c4a90e6cd094cb4dd7c00a305a623f8bc7a5c7cd2a4361ac3434115e",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DOGroupRequestSize(Ros1Rosdemo_v3DOGroupRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DOGroupRequestCapture(value), n = Ros1Rosdemo_v3DOGroupRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DOGroupRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DOGroupRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DOGroupRequestSize(value)
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

function Ros1Rosdemo_v3DOGroupRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rosdemo_v3DOGroupRequestRead(r)
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

function Ros1Rosdemo_v3DOGroupRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DOGroupResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DOGroupResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_232face7e889eef783b5d78ac61468563dcccf638ac2afd4d76c59e1deca3a58",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DOGroupResponseSize(Ros1Rosdemo_v3DOGroupResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DOGroupResponseCapture(value), n = Ros1Rosdemo_v3DOGroupResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DOGroupResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DOGroupResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DOGroupResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DOGroupResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DOGroupResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DOGroupResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DigitalOutputsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DigitalOutputsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6f5d01c8735191a0917ca61a1f86fada2ff87fb7bafeeae61f360005ae22f4b",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : false};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DigitalOutputsRequestSize(Ros1Rosdemo_v3DigitalOutputsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DigitalOutputsRequestCapture(value), n = Ros1Rosdemo_v3DigitalOutputsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DigitalOutputsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DigitalOutputsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DigitalOutputsRequestSize(value)
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

function Ros1Rosdemo_v3DigitalOutputsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["status"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rosdemo_v3DigitalOutputsRequestRead(r)
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

function Ros1Rosdemo_v3DigitalOutputsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/DigitalOutputsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DigitalOutputsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_77f11a8dcca8f519569757ae3959a3b4f5cd048eb8430a7982be2859d32024fa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DigitalOutputsResponseSize(Ros1Rosdemo_v3DigitalOutputsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DigitalOutputsResponseCapture(value), n = Ros1Rosdemo_v3DigitalOutputsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DigitalOutputsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DigitalOutputsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DigitalOutputsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DigitalOutputsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DigitalOutputsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DigitalOutputsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/DisableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DisableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc359148b9f8b8e5191ffde7d3c67bd4cf7706e188fd7f90ee4e28ac19517f10",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DisableRobotRequestSize(Ros1Rosdemo_v3DisableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DisableRobotRequestCapture(value), n = Ros1Rosdemo_v3DisableRobotRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DisableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DisableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DisableRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DisableRobotRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3DisableRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3DisableRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/DisableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3DisableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_180186300237bfc48937494a4ddc72e9b6519d37b16980f3f6cd94df10ec9fbd",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3DisableRobotResponseSize(Ros1Rosdemo_v3DisableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3DisableRobotResponseCapture(value), n = Ros1Rosdemo_v3DisableRobotResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3DisableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3DisableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3DisableRobotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3DisableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3DisableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3DisableRobotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/EmergencyStopRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3EmergencyStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c76b900e2c1af4b53e667851a3cee4c61f8e01f17bef03518c1c5cc905d73042",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3EmergencyStopRequestSize(Ros1Rosdemo_v3EmergencyStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3EmergencyStopRequestCapture(value), n = Ros1Rosdemo_v3EmergencyStopRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3EmergencyStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3EmergencyStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3EmergencyStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3EmergencyStopRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3EmergencyStopRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3EmergencyStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/EmergencyStopResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3EmergencyStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68b18beb9782c54f72fc689498e6b814d379bb13f45ec4126a46a1cb4a0ca842",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3EmergencyStopResponseSize(Ros1Rosdemo_v3EmergencyStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3EmergencyStopResponseCapture(value), n = Ros1Rosdemo_v3EmergencyStopResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3EmergencyStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3EmergencyStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3EmergencyStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3EmergencyStopResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3EmergencyStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3EmergencyStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/EnableRobotRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3EnableRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ccbdde2b629cecdbab93a2d6fa374e7037079f8eace470b2390b76e373aca67d",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"args" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3EnableRobotRequestSize(Ros1Rosdemo_v3EnableRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3EnableRobotRequestCapture(value), n = Ros1Rosdemo_v3EnableRobotRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3EnableRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3EnableRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3EnableRobotRequestSize(value)
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

function Ros1Rosdemo_v3EnableRobotRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["args"].length, true);
    w.at += 4;
    for(const element of value["args"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Rosdemo_v3EnableRobotRequestRead(r)
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

function Ros1Rosdemo_v3EnableRobotRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/EnableRobotResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3EnableRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_06cc454eb7c17dbeec3e6b65613cffb6c8f01d1ea6553059419182b301ff1f1d",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3EnableRobotResponseSize(Ros1Rosdemo_v3EnableRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3EnableRobotResponseCapture(value), n = Ros1Rosdemo_v3EnableRobotResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3EnableRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3EnableRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3EnableRobotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3EnableRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3EnableRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3EnableRobotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetAngleRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetAngleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c911203946a7243ce65eeb56ed7d0173201695e2f35e36f3dd8b34c90e629326",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetAngleRequestSize(Ros1Rosdemo_v3GetAngleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetAngleRequestCapture(value), n = Ros1Rosdemo_v3GetAngleRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetAngleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetAngleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetAngleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetAngleRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3GetAngleRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3GetAngleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/GetAngleResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetAngleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e282207443c5e087238aef0db3f261fe7d634ec947798e96e579c150b7282850",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetAngleResponseSize(Ros1Rosdemo_v3GetAngleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetAngleResponseCapture(value), n = Ros1Rosdemo_v3GetAngleResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetAngleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetAngleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetAngleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetAngleResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetAngleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetAngleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49ec91ec3a1f3e35b80f5791cad20187acf42972167e3c0452f2d41c40b94b8b",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetCoilsRequestSize(Ros1Rosdemo_v3GetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetCoilsRequestCapture(value), n = Ros1Rosdemo_v3GetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetCoilsRequestSize(value)
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

function Ros1Rosdemo_v3GetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetCoilsRequestRead(r)
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

function Ros1Rosdemo_v3GetCoilsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_93d27292ab877e94f7d917bb7b5aee79e2f43cd6e824a00bc671502f6e6d2a6f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetCoilsResponseSize(Ros1Rosdemo_v3GetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetCoilsResponseCapture(value), n = Ros1Rosdemo_v3GetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetCoilsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetCoilsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetErrorIDRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetErrorIDRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48580c69404b4714464101180638a24138945f254bc5ca49d10204ed45ffc4b5",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetErrorIDRequestSize(Ros1Rosdemo_v3GetErrorIDRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetErrorIDRequestCapture(value), n = Ros1Rosdemo_v3GetErrorIDRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetErrorIDRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetErrorIDRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetErrorIDRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetErrorIDRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3GetErrorIDRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3GetErrorIDRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/GetErrorIDResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetErrorIDResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ffbc8bd3d575db372c48159424450fd4e40abe94c640d7c0f6cfe7aa207a9c58",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "errorID" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetErrorIDResponseSize(Ros1Rosdemo_v3GetErrorIDResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetErrorIDResponseCapture(value), n = Ros1Rosdemo_v3GetErrorIDResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetErrorIDResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetErrorIDResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetErrorIDResponseSize(value)
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

function Ros1Rosdemo_v3GetErrorIDResponseWrite(value, w)
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

function Ros1Rosdemo_v3GetErrorIDResponseRead(r)
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

function Ros1Rosdemo_v3GetErrorIDResponseCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_442a8b8cc035aa85941b272888f6386166b8adffed06faa932d1adc3bd09071a",
    maxWireBytes : 4176,
    minWireBytes : 16,
    cartesianMaxWireBytes : 4176n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valtype" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetHoldRegsRequestSize(Ros1Rosdemo_v3GetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetHoldRegsRequestCapture(value), n = Ros1Rosdemo_v3GetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4176, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetHoldRegsRequestSize(value)
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

function Ros1Rosdemo_v3GetHoldRegsRequestWrite(value, w)
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

function Ros1Rosdemo_v3GetHoldRegsRequestRead(r)
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

function Ros1Rosdemo_v3GetHoldRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7ae19ad05cb63a9e1abf60e1eeead85d20f0ed051f98d8592537a1b68091a68",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetHoldRegsResponseSize(Ros1Rosdemo_v3GetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetHoldRegsResponseCapture(value), n = Ros1Rosdemo_v3GetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetHoldRegsResponseSize(value)
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

function Ros1Rosdemo_v3GetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetHoldRegsResponseRead(r)
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

function Ros1Rosdemo_v3GetHoldRegsResponseCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetInBitsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetInBitsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e584699a619da41a1adc99cb6330016810b0cedb7f6e7a53e4a90e7e29b92b90",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetInBitsRequestSize(Ros1Rosdemo_v3GetInBitsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetInBitsRequestCapture(value), n = Ros1Rosdemo_v3GetInBitsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetInBitsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetInBitsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetInBitsRequestSize(value)
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

function Ros1Rosdemo_v3GetInBitsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetInBitsRequestRead(r)
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

function Ros1Rosdemo_v3GetInBitsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetInBitsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetInBitsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6282410fe1c5c76f9ab5ee4937c1400e30731a3562011b79119786edb7856709",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetInBitsResponseSize(Ros1Rosdemo_v3GetInBitsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetInBitsResponseCapture(value), n = Ros1Rosdemo_v3GetInBitsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetInBitsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetInBitsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetInBitsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetInBitsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetInBitsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetInBitsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetInRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetInRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_478634f60e4acc3c40fd1baa41b09d5186b920e3f3a0f57e8d60e150789447eb",
    maxWireBytes : 4176,
    minWireBytes : 16,
    cartesianMaxWireBytes : 4176n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valType" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetInRegsRequestSize(Ros1Rosdemo_v3GetInRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetInRegsRequestCapture(value), n = Ros1Rosdemo_v3GetInRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetInRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4176, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetInRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetInRegsRequestSize(value)
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

function Ros1Rosdemo_v3GetInRegsRequestWrite(value, w)
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

function Ros1Rosdemo_v3GetInRegsRequestRead(r)
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

function Ros1Rosdemo_v3GetInRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetInRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetInRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_56a7fe78e00f7560809c68ca363e06bfdb8f2317f821f802e4879f4c65b754fc",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetInRegsResponseSize(Ros1Rosdemo_v3GetInRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetInRegsResponseCapture(value), n = Ros1Rosdemo_v3GetInRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetInRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetInRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetInRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetInRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetInRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetInRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetPathStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetPathStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_331dcc72642af66b9050d0d931d0bce3f184506634030162bd734157e2b74f9d",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetPathStartPoseRequestSize(Ros1Rosdemo_v3GetPathStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetPathStartPoseRequestCapture(value), n = Ros1Rosdemo_v3GetPathStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetPathStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetPathStartPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetPathStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetPathStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Rosdemo_v3GetPathStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetPathStartPoseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetPathStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetPathStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ac09b3653ef09231f1255b7823e76160d638826cb54cd7a5036377d9e6cfa8e4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetPathStartPoseResponseSize(Ros1Rosdemo_v3GetPathStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetPathStartPoseResponseCapture(value), n = Ros1Rosdemo_v3GetPathStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetPathStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetPathStartPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetPathStartPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetPathStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetPathStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetPathStartPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetPoseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_896c131a221c827fd65edacc327abd669c6a4e781e87f5320482d96af44daa43",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"user" : [], "tool" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetPoseRequestSize(Ros1Rosdemo_v3GetPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetPoseRequestCapture(value), n = Ros1Rosdemo_v3GetPoseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetPoseRequestSize(value)
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

function Ros1Rosdemo_v3GetPoseRequestWrite(value, w)
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

function Ros1Rosdemo_v3GetPoseRequestRead(r)
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

function Ros1Rosdemo_v3GetPoseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetPoseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f9e71c9e4764010aafa79a277e6e92f59556fcd3d4732e9a8f6f0ae53f937cb5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetPoseResponseSize(Ros1Rosdemo_v3GetPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetPoseResponseCapture(value), n = Ros1Rosdemo_v3GetPoseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetSixForceDataRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetSixForceDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_39a2e96ac8e519373f779446a91ccbf8415446a018e3864f6c15d79ac58538c2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetSixForceDataRequestSize(Ros1Rosdemo_v3GetSixForceDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetSixForceDataRequestCapture(value), n = Ros1Rosdemo_v3GetSixForceDataRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetSixForceDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetSixForceDataRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetSixForceDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetSixForceDataRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3GetSixForceDataRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3GetSixForceDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/GetSixForceDataResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetSixForceDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f3432a7cbc328bea276d4d18d55511e1ec8bd8bd6b3d63cae88e3be023f0ff84",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetSixForceDataResponseSize(Ros1Rosdemo_v3GetSixForceDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetSixForceDataResponseCapture(value), n = Ros1Rosdemo_v3GetSixForceDataResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetSixForceDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetSixForceDataResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetSixForceDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetSixForceDataResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetSixForceDataResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetSixForceDataResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetTerminal485Request codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetTerminal485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_08e15ecbdc640b0898bab0105ac64e93138e91d5c535b3044522bb9cb43e717f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetTerminal485RequestSize(Ros1Rosdemo_v3GetTerminal485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetTerminal485RequestCapture(value), n = Ros1Rosdemo_v3GetTerminal485RequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetTerminal485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetTerminal485RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetTerminal485RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetTerminal485RequestWrite(value, w)
{
}

function Ros1Rosdemo_v3GetTerminal485RequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3GetTerminal485RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/GetTerminal485Response codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetTerminal485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ed4380b139d4bd132cc1662e2f695360ef4ade63b49cf4a874b3f8429c7ca80",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetTerminal485ResponseSize(Ros1Rosdemo_v3GetTerminal485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetTerminal485ResponseCapture(value), n = Ros1Rosdemo_v3GetTerminal485ResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetTerminal485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetTerminal485ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetTerminal485ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetTerminal485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetTerminal485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetTerminal485ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/GetTraceStartPoseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetTraceStartPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e07c64f2ba6bfaf0f1dbd05f4e61636832a50f6af6ad571e8ce01e85ecc90568",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetTraceStartPoseRequestSize(Ros1Rosdemo_v3GetTraceStartPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetTraceStartPoseRequestCapture(value), n = Ros1Rosdemo_v3GetTraceStartPoseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetTraceStartPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetTraceStartPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetTraceStartPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetTraceStartPoseRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Rosdemo_v3GetTraceStartPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetTraceStartPoseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/GetTraceStartPoseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3GetTraceStartPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8176884452822c703744a5ce3d0b13fa77956b878779fbe017f6155397687dd7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3GetTraceStartPoseResponseSize(Ros1Rosdemo_v3GetTraceStartPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3GetTraceStartPoseResponseCapture(value), n = Ros1Rosdemo_v3GetTraceStartPoseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3GetTraceStartPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3GetTraceStartPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3GetTraceStartPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3GetTraceStartPoseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3GetTraceStartPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3GetTraceStartPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/HandleTrajPointsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3HandleTrajPointsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29884d4e93ab372204478ebd497fce85779515ad65369b36ee0af78d160ee664",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traceName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3HandleTrajPointsRequestSize(Ros1Rosdemo_v3HandleTrajPointsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3HandleTrajPointsRequestCapture(value), n = Ros1Rosdemo_v3HandleTrajPointsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3HandleTrajPointsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3HandleTrajPointsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3HandleTrajPointsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traceName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3HandleTrajPointsRequestWrite(value, w)
{
    w.text(value["traceName"], 256);
}

function Ros1Rosdemo_v3HandleTrajPointsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traceName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3HandleTrajPointsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/HandleTrajPointsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3HandleTrajPointsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d47096773589fe6cffdfd7a780cf25163726622d4a793df7db8c9b4b9d0e95d5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3HandleTrajPointsResponseSize(Ros1Rosdemo_v3HandleTrajPointsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3HandleTrajPointsResponseCapture(value), n = Ros1Rosdemo_v3HandleTrajPointsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3HandleTrajPointsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3HandleTrajPointsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3HandleTrajPointsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3HandleTrajPointsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3HandleTrajPointsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3HandleTrajPointsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/InverseSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3InverseSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_decba94e28aa387148f50f0ab90558a54c35856ab0ae8daa24fac9f1e3595e49",
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
        Ros1Rosdemo_v3InverseSolutionRequestSize(Ros1Rosdemo_v3InverseSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3InverseSolutionRequestCapture(value), n = Ros1Rosdemo_v3InverseSolutionRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3InverseSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 320, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3InverseSolutionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3InverseSolutionRequestSize(value)
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

function Ros1Rosdemo_v3InverseSolutionRequestWrite(value, w)
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

function Ros1Rosdemo_v3InverseSolutionRequestRead(r)
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

function Ros1Rosdemo_v3InverseSolutionRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/InverseSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3InverseSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19a3a772ac22dd37514907ca5329a3907fd13421193f8c8854a06a9466f7488b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3InverseSolutionResponseSize(Ros1Rosdemo_v3InverseSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3InverseSolutionResponseCapture(value), n = Ros1Rosdemo_v3InverseSolutionResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3InverseSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3InverseSolutionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3InverseSolutionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3InverseSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3InverseSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3InverseSolutionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/JointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3JointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1b018efcb95b7685413731002be666531223150e2d13e33a2e4f43ce73dbb4bb",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"j1" : 0, "j2" : 0, "j3" : 0, "j4" : 0, "j5" : 0, "j6" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3JointMovJRequestSize(Ros1Rosdemo_v3JointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3JointMovJRequestCapture(value), n = Ros1Rosdemo_v3JointMovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3JointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3JointMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3JointMovJRequestSize(value)
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

function Ros1Rosdemo_v3JointMovJRequestWrite(value, w)
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

function Ros1Rosdemo_v3JointMovJRequestRead(r)
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

function Ros1Rosdemo_v3JointMovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/JointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3JointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5996d59a93c7f5a263481652ac32db771dac4174fdf8b54ac906b258b60d3f3b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3JointMovJResponseSize(Ros1Rosdemo_v3JointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3JointMovJResponseCapture(value), n = Ros1Rosdemo_v3JointMovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3JointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3JointMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3JointMovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3JointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3JointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3JointMovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/JumpRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3JumpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c2fb51d18a84a52328a8d07aa1e052176519b2c6f45c7f51b8dd784491012750",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3JumpRequestSize(Ros1Rosdemo_v3JumpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3JumpRequestCapture(value), n = Ros1Rosdemo_v3JumpRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3JumpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3JumpRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3JumpRequestSize(value)
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

function Ros1Rosdemo_v3JumpRequestWrite(value, w)
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

function Ros1Rosdemo_v3JumpRequestRead(r)
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

function Ros1Rosdemo_v3JumpRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/JumpResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3JumpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_21893b7688b8a4ffbc9d1be6465cf78974412d31a9dea1f18b95af77099eef2c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3JumpResponseSize(Ros1Rosdemo_v3JumpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3JumpResponseCapture(value), n = Ros1Rosdemo_v3JumpResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3JumpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3JumpResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3JumpResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3JumpResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3JumpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3JumpResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/LimZRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3LimZRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_23003bbb2cbfa14be2b7231332055b219b90bb9633c5339a041164b46f8197a6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3LimZRequestSize(Ros1Rosdemo_v3LimZRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3LimZRequestCapture(value), n = Ros1Rosdemo_v3LimZRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3LimZRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3LimZRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3LimZRequestSize(value)
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

function Ros1Rosdemo_v3LimZRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3LimZRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3LimZRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/LimZResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3LimZResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e833074fbb70e137eda6c4ffac0556442f18fb957a4e25b720f8a106d83f56d5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3LimZResponseSize(Ros1Rosdemo_v3LimZResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3LimZResponseCapture(value), n = Ros1Rosdemo_v3LimZResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3LimZResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3LimZResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3LimZResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3LimZResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3LimZResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3LimZResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/LoadSwitchRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3LoadSwitchRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aa093213c23854df4b464bf3cc29e8d2d37275753a768636c72b3464d8edd865",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3LoadSwitchRequestSize(Ros1Rosdemo_v3LoadSwitchRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3LoadSwitchRequestCapture(value), n = Ros1Rosdemo_v3LoadSwitchRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3LoadSwitchRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3LoadSwitchRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3LoadSwitchRequestSize(value)
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

function Ros1Rosdemo_v3LoadSwitchRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3LoadSwitchRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3LoadSwitchRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/LoadSwitchResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3LoadSwitchResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7094d6951089c63108119d3a9738f7f8d1c1eb693412ac3134bcbaf96857004c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3LoadSwitchResponseSize(Ros1Rosdemo_v3LoadSwitchResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3LoadSwitchResponseCapture(value), n = Ros1Rosdemo_v3LoadSwitchResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3LoadSwitchResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3LoadSwitchResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3LoadSwitchResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3LoadSwitchResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3LoadSwitchResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3LoadSwitchResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ModbusCloseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ModbusCloseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8e0745e9e3af32de6fc10dd2dd6d04d7e287ae9079b788b45a2b4a927f20c977",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ModbusCloseRequestSize(Ros1Rosdemo_v3ModbusCloseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ModbusCloseRequestCapture(value), n = Ros1Rosdemo_v3ModbusCloseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ModbusCloseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ModbusCloseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ModbusCloseRequestSize(value)
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

function Ros1Rosdemo_v3ModbusCloseRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ModbusCloseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ModbusCloseRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ModbusCloseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ModbusCloseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a583752c25f6aaa3fdd2e98c9f37b3fb72a824fd1488c11afc73bc579f608f57",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ModbusCloseResponseSize(Ros1Rosdemo_v3ModbusCloseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ModbusCloseResponseCapture(value), n = Ros1Rosdemo_v3ModbusCloseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ModbusCloseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ModbusCloseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ModbusCloseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ModbusCloseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ModbusCloseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ModbusCloseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ModbusCreateRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ModbusCreateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e9b4748374005ce9e03475e25ec415f8845f1c8857d91499d90abc34cff0726",
    maxWireBytes : 336,
    minWireBytes : 16,
    cartesianMaxWireBytes : 336n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : "", "port" : 0, "slave_id" : 0, "is_rtu" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ModbusCreateRequestSize(Ros1Rosdemo_v3ModbusCreateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ModbusCreateRequestCapture(value), n = Ros1Rosdemo_v3ModbusCreateRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ModbusCreateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 336, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ModbusCreateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ModbusCreateRequestSize(value)
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

function Ros1Rosdemo_v3ModbusCreateRequestWrite(value, w)
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

function Ros1Rosdemo_v3ModbusCreateRequestRead(r)
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

function Ros1Rosdemo_v3ModbusCreateRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ModbusCreateResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ModbusCreateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d17e98dab4089b5ba7707be37bbce0d4885c34b303aa5e041cfb5e36de6a8f12",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ModbusCreateResponseSize(Ros1Rosdemo_v3ModbusCreateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ModbusCreateResponseCapture(value), n = Ros1Rosdemo_v3ModbusCreateResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ModbusCreateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ModbusCreateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ModbusCreateResponseSize(value)
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

function Ros1Rosdemo_v3ModbusCreateResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ModbusCreateResponseRead(r)
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

function Ros1Rosdemo_v3ModbusCreateResponseCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b8d2d2e55470b783eb429af073db3d6de195617244237e1b44c9a75d2705bf6f",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJRequestSize(Ros1Rosdemo_v3MovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJRequestCapture(value), n = Ros1Rosdemo_v3MovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJRequestSize(value)
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

function Ros1Rosdemo_v3MovJRequestWrite(value, w)
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

function Ros1Rosdemo_v3MovJRequestRead(r)
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

function Ros1Rosdemo_v3MovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_333d13e27b2f53aff1d0596e26f89a8ac4f43a3e62906889eeb9bb502832ffd0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJResponseSize(Ros1Rosdemo_v3MovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJResponseCapture(value), n = Ros1Rosdemo_v3MovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/MovJExtRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJExtRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b74b6d4fb73681f633bdd3c6e34ca4bb0fe6d0a663f0bcd89a1b8046170b2c7c",
    maxWireBytes : 4172,
    minWireBytes : 12,
    cartesianMaxWireBytes : 4172n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJExtRequestSize(Ros1Rosdemo_v3MovJExtRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJExtRequestCapture(value), n = Ros1Rosdemo_v3MovJExtRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJExtRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4172, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJExtRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJExtRequestSize(value)
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

function Ros1Rosdemo_v3MovJExtRequestWrite(value, w)
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

function Ros1Rosdemo_v3MovJExtRequestRead(r)
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

function Ros1Rosdemo_v3MovJExtRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovJExtResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJExtResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f616e8948086e695cb50db53ff21ade119b9f174b6036c8d5c2d5c22ab3e0e2b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJExtResponseSize(Ros1Rosdemo_v3MovJExtResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJExtResponseCapture(value), n = Ros1Rosdemo_v3MovJExtResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJExtResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJExtResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJExtResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MovJExtResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MovJExtResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MovJExtResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/MovJIORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d082f8679ddc163eaa58c427147b523feabe6a3a6fe12c9b10af8a07766734e1",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJIORequestSize(Ros1Rosdemo_v3MovJIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJIORequestCapture(value), n = Ros1Rosdemo_v3MovJIORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJIORequestSize(value)
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

function Ros1Rosdemo_v3MovJIORequestWrite(value, w)
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

function Ros1Rosdemo_v3MovJIORequestRead(r)
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

function Ros1Rosdemo_v3MovJIORequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovJIOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovJIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2bbdaa014c5fbb6ea1b82771568b02b325589edec4057c0d275280a6333005df",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovJIOResponseSize(Ros1Rosdemo_v3MovJIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovJIOResponseCapture(value), n = Ros1Rosdemo_v3MovJIOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovJIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovJIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovJIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MovJIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MovJIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MovJIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/MovLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cedf553a7f6bd05c4529a64115165290540a1cd651f434f084829414e7fc61c3",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovLRequestSize(Ros1Rosdemo_v3MovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovLRequestCapture(value), n = Ros1Rosdemo_v3MovLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovLRequestSize(value)
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

function Ros1Rosdemo_v3MovLRequestWrite(value, w)
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

function Ros1Rosdemo_v3MovLRequestRead(r)
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

function Ros1Rosdemo_v3MovLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b2dfdf236fc265d978a41bad53a30b11cef5b5093bfbd92b81944c6e4cfa2736",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovLResponseSize(Ros1Rosdemo_v3MovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovLResponseCapture(value), n = Ros1Rosdemo_v3MovLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MovLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/MovLIORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovLIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_14331d07956217f647760051d2cb24613152741c8c31c0cc511458711fa8beb8",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovLIORequestSize(Ros1Rosdemo_v3MovLIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovLIORequestCapture(value), n = Ros1Rosdemo_v3MovLIORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovLIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovLIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovLIORequestSize(value)
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

function Ros1Rosdemo_v3MovLIORequestWrite(value, w)
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

function Ros1Rosdemo_v3MovLIORequestRead(r)
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

function Ros1Rosdemo_v3MovLIORequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MovLIOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MovLIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_488d5646de4855aef24a1627d9d5345d60c669336012f6ea92d989e782e0909f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MovLIOResponseSize(Ros1Rosdemo_v3MovLIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MovLIOResponseCapture(value), n = Ros1Rosdemo_v3MovLIOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MovLIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MovLIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MovLIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MovLIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MovLIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MovLIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/MoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d3f0802abbb5dda85a34cb66408d80859f3f4f71baa1ada8ad1d65ef1739d6d7",
    maxWireBytes : 4424,
    minWireBytes : 8,
    cartesianMaxWireBytes : 4424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axisID" : "", "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MoveJogRequestSize(Ros1Rosdemo_v3MoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MoveJogRequestCapture(value), n = Ros1Rosdemo_v3MoveJogRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4424, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MoveJogRequestSize(value)
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

function Ros1Rosdemo_v3MoveJogRequestWrite(value, w)
{
    w.text(value["axisID"], 256);
    w.v.setUint32(w.at, value["paramValue"].length, true);
    w.at += 4;
    for(const element of value["paramValue"])
    {
        w.text(element, 256);
    }
}

function Ros1Rosdemo_v3MoveJogRequestRead(r)
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

function Ros1Rosdemo_v3MoveJogRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/MoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3MoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c90dbe74867276b593807f1c6e1a653abe209e9c8847e2e46f8deb9fc98b4094",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3MoveJogResponseSize(Ros1Rosdemo_v3MoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3MoveJogResponseCapture(value), n = Ros1Rosdemo_v3MoveJogResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3MoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3MoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3MoveJogResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3MoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3MoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3MoveJogResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/PauseScriptRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PauseScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5fcd670ac91cb4a0524ff8d1a6c9f53388c0fc74d020915b45ccb26912c9d5e0",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PauseScriptRequestSize(Ros1Rosdemo_v3PauseScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PauseScriptRequestCapture(value), n = Ros1Rosdemo_v3PauseScriptRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PauseScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PauseScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PauseScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PauseScriptRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3PauseScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3PauseScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/PauseScriptResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PauseScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45c93ca5c04e256517d48ac97dd3cf12350c0c66db4f92e94bd248bc741a2766",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PauseScriptResponseSize(Ros1Rosdemo_v3PauseScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PauseScriptResponseCapture(value), n = Ros1Rosdemo_v3PauseScriptResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PauseScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PauseScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PauseScriptResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PauseScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3PauseScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3PauseScriptResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/PayLoadRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PayLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e6b0b852425c735fcedc7335cc6b3cf75c9361840a3efa132b14476d943f85a",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"weight" : 0, "inertia" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PayLoadRequestSize(Ros1Rosdemo_v3PayLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PayLoadRequestCapture(value), n = Ros1Rosdemo_v3PayLoadRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PayLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PayLoadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PayLoadRequestSize(value)
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

function Ros1Rosdemo_v3PayLoadRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["weight"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["inertia"], true);
    w.at += 8;
}

function Ros1Rosdemo_v3PayLoadRequestRead(r)
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

function Ros1Rosdemo_v3PayLoadRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/PayLoadResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PayLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cbeb06c1de730199ac6fd931401e3d476332efc5b9784f3eb3ed35b6115afdd4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PayLoadResponseSize(Ros1Rosdemo_v3PayLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PayLoadResponseCapture(value), n = Ros1Rosdemo_v3PayLoadResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PayLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PayLoadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PayLoadResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PayLoadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3PayLoadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3PayLoadResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/PositiveSolutionRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PositiveSolutionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d0ae6b1e7839714afe87033f06c984aeb257fdc2884ca4f64711f67bced621b6",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "user" : 0, "tool" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PositiveSolutionRequestSize(Ros1Rosdemo_v3PositiveSolutionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PositiveSolutionRequestCapture(value), n = Ros1Rosdemo_v3PositiveSolutionRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PositiveSolutionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PositiveSolutionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PositiveSolutionRequestSize(value)
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

function Ros1Rosdemo_v3PositiveSolutionRequestWrite(value, w)
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

function Ros1Rosdemo_v3PositiveSolutionRequestRead(r)
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

function Ros1Rosdemo_v3PositiveSolutionRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/PositiveSolutionResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PositiveSolutionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a6f7526303d8bf7dc30f89c055af0767cc64a4add7ab7327ca8d8f3f6f04c2ac",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PositiveSolutionResponseSize(Ros1Rosdemo_v3PositiveSolutionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PositiveSolutionResponseCapture(value), n = Ros1Rosdemo_v3PositiveSolutionResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PositiveSolutionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PositiveSolutionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PositiveSolutionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PositiveSolutionResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3PositiveSolutionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3PositiveSolutionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/PowerOnRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PowerOnRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed3377f0557381cfee7a8fd299b5eb43c53fa4757968d5f304a4bb0a7012fbf9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PowerOnRequestSize(Ros1Rosdemo_v3PowerOnRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PowerOnRequestCapture(value), n = Ros1Rosdemo_v3PowerOnRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PowerOnRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PowerOnRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PowerOnRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PowerOnRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3PowerOnRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3PowerOnRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/PowerOnResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PowerOnResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0860e43dd3f61a65723cc3e0f238ac6049436afdd693134a0987af626ac4e90e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PowerOnResponseSize(Ros1Rosdemo_v3PowerOnResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PowerOnResponseCapture(value), n = Ros1Rosdemo_v3PowerOnResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PowerOnResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PowerOnResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PowerOnResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PowerOnResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3PowerOnResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3PowerOnResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelJointMovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelJointMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a465c4da9859f55052b46a6137186f699378b8781b4102deb8cfbbc8fe5b8e7e",
    maxWireBytes : 4212,
    minWireBytes : 52,
    cartesianMaxWireBytes : 4212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelJointMovJRequestSize(Ros1Rosdemo_v3RelJointMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelJointMovJRequestCapture(value), n = Ros1Rosdemo_v3RelJointMovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelJointMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4212, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelJointMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelJointMovJRequestSize(value)
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

function Ros1Rosdemo_v3RelJointMovJRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelJointMovJRequestRead(r)
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

function Ros1Rosdemo_v3RelJointMovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelJointMovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelJointMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c1daf15c200adb8a186d3ee568e2f79cb1336e9ce593f7147768904a7377770",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelJointMovJResponseSize(Ros1Rosdemo_v3RelJointMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelJointMovJResponseCapture(value), n = Ros1Rosdemo_v3RelJointMovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelJointMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelJointMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelJointMovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelJointMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelJointMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelJointMovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f940a25fce9ac5574bca35728f1467e1671d218e3ff444bb18f94c8236d0dbbe",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJRequestSize(Ros1Rosdemo_v3RelMovJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJRequestCapture(value), n = Ros1Rosdemo_v3RelMovJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJRequestSize(value)
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

function Ros1Rosdemo_v3RelMovJRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelMovJRequestRead(r)
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

function Ros1Rosdemo_v3RelMovJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3bfae65655a52453c353e99c8a4c6f9fdae043f8d1a59550f5165a5add978150",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJResponseSize(Ros1Rosdemo_v3RelMovJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJResponseCapture(value), n = Ros1Rosdemo_v3RelMovJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovJToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc136e7feb88329e8a2d329a049990d4740bd4ebd97b08c0296f40280615065e",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "tool" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJToolRequestSize(Ros1Rosdemo_v3RelMovJToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJToolRequestCapture(value), n = Ros1Rosdemo_v3RelMovJToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJToolRequestSize(value)
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

function Ros1Rosdemo_v3RelMovJToolRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelMovJToolRequestRead(r)
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

function Ros1Rosdemo_v3RelMovJToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovJToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dcaaf76c3faeb793a2c1d66b337fdd5da6ee7d246cb8b2b7b58b5d4515f2ba17",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJToolResponseSize(Ros1Rosdemo_v3RelMovJToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJToolResponseCapture(value), n = Ros1Rosdemo_v3RelMovJToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovJToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovJToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovJToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovJUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_275bd83ace00c2af373c40cd2a741fe42b1d39a0e32d440835fe2e8b4cbb0f44",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "user" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJUserRequestSize(Ros1Rosdemo_v3RelMovJUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJUserRequestCapture(value), n = Ros1Rosdemo_v3RelMovJUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJUserRequestSize(value)
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

function Ros1Rosdemo_v3RelMovJUserRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelMovJUserRequestRead(r)
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

function Ros1Rosdemo_v3RelMovJUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovJUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovJUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81472eba2978e502b1f44e90e47766f72019dab8c5fff6f5a9305c4de4614e80",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovJUserResponseSize(Ros1Rosdemo_v3RelMovJUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovJUserResponseCapture(value), n = Ros1Rosdemo_v3RelMovJUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovJUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovJUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovJUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovJUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovJUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovJUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa377e81bf3af0b548ab2ff132eaab7d39318fe2e9e536355074e020130c149f",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLRequestSize(Ros1Rosdemo_v3RelMovLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLRequestCapture(value), n = Ros1Rosdemo_v3RelMovLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLRequestSize(value)
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

function Ros1Rosdemo_v3RelMovLRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Rosdemo_v3RelMovLRequestRead(r)
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

function Ros1Rosdemo_v3RelMovLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4badf88de28860873f1fa3955d24ba637717c4f36036b92f2e67ba3f11a57b5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLResponseSize(Ros1Rosdemo_v3RelMovLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLResponseCapture(value), n = Ros1Rosdemo_v3RelMovLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovLToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c68f019a7009ae26e9df05565c851eea8aa84c4382af372bac8a20083e99f37d",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "tool" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLToolRequestSize(Ros1Rosdemo_v3RelMovLToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLToolRequestCapture(value), n = Ros1Rosdemo_v3RelMovLToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLToolRequestSize(value)
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

function Ros1Rosdemo_v3RelMovLToolRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelMovLToolRequestRead(r)
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

function Ros1Rosdemo_v3RelMovLToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovLToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd234d9d5d6e898fc8cb907aff0420c8bd7dc9f0ff176df249f25c54dd9211b5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLToolResponseSize(Ros1Rosdemo_v3RelMovLToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLToolResponseCapture(value), n = Ros1Rosdemo_v3RelMovLToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovLToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovLToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovLToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RelMovLUserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLUserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_866bfdaeee41bde4a92a0d3331ad11d541b955a1d6efc6f4a770d28d006a5a0d",
    maxWireBytes : 4216,
    minWireBytes : 56,
    cartesianMaxWireBytes : 4216n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "rx" : 0, "ry" : 0, "rz" : 0, "user" : 0, "paramValue" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLUserRequestSize(Ros1Rosdemo_v3RelMovLUserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLUserRequestCapture(value), n = Ros1Rosdemo_v3RelMovLUserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLUserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4216, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLUserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLUserRequestSize(value)
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

function Ros1Rosdemo_v3RelMovLUserRequestWrite(value, w)
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

function Ros1Rosdemo_v3RelMovLUserRequestRead(r)
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

function Ros1Rosdemo_v3RelMovLUserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RelMovLUserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RelMovLUserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_53d0a319b09b0965fe87bf4a1f3d92af6190cb855fb07461fbe9ee816590ab39",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RelMovLUserResponseSize(Ros1Rosdemo_v3RelMovLUserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RelMovLUserResponseCapture(value), n = Ros1Rosdemo_v3RelMovLUserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RelMovLUserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RelMovLUserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RelMovLUserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RelMovLUserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RelMovLUserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RelMovLUserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ResetRobotRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ResetRobotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fce0ae6f0abe6282250a175a484b119af4b67e21488365e4fc3dd0466c77baf6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ResetRobotRequestSize(Ros1Rosdemo_v3ResetRobotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ResetRobotRequestCapture(value), n = Ros1Rosdemo_v3ResetRobotRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ResetRobotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ResetRobotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ResetRobotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ResetRobotRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3ResetRobotRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3ResetRobotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/ResetRobotResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ResetRobotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef692ba1ec5c8fbf0bd55b912d1451d3b0405326dc7610f406a609c92ddbb983",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ResetRobotResponseSize(Ros1Rosdemo_v3ResetRobotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ResetRobotResponseCapture(value), n = Ros1Rosdemo_v3ResetRobotResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ResetRobotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ResetRobotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ResetRobotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ResetRobotResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ResetRobotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ResetRobotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/RobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b7f5ab0c1430e11c2159757d7e63947be0562364cdf77b815494a3668cd0bd39",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RobotModeRequestSize(Ros1Rosdemo_v3RobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RobotModeRequestCapture(value), n = Ros1Rosdemo_v3RobotModeRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RobotModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RobotModeRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3RobotModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3RobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/RobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e7646026c2b8e6d9fd8c8e7ed30d7c97324b08be17123343773b6aaa5fdf6df",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RobotModeResponseSize(Ros1Rosdemo_v3RobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RobotModeResponseCapture(value), n = Ros1Rosdemo_v3RobotModeResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RobotModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RobotModeResponseSize(value)
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

function Ros1Rosdemo_v3RobotModeResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RobotModeResponseRead(r)
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

function Ros1Rosdemo_v3RobotModeResponseCapture(value)
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

/** Complete ROS1 rosdemo_v3/RunScriptRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RunScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c09ebd3354368a8a51fa269c263cd5d236ef99fe667ab2d54da2ff1ecd51df2",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"projectName" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RunScriptRequestSize(Ros1Rosdemo_v3RunScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RunScriptRequestCapture(value), n = Ros1Rosdemo_v3RunScriptRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RunScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RunScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RunScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["projectName"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RunScriptRequestWrite(value, w)
{
    w.text(value["projectName"], 256);
}

function Ros1Rosdemo_v3RunScriptRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["projectName"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RunScriptRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/RunScriptResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3RunScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_032bff023c12c89777f1680aba9bf322fa8a2eb931647ad43c520f74b2f5ba76",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3RunScriptResponseSize(Ros1Rosdemo_v3RunScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3RunScriptResponseCapture(value), n = Ros1Rosdemo_v3RunScriptResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3RunScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3RunScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3RunScriptResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3RunScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3RunScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3RunScriptResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ServoJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ServoJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fe11b680dccbfe85d53005f73357b91ada5e7c097e435f86bd09a1e07155b32e",
    maxWireBytes : 444,
    minWireBytes : 60,
    cartesianMaxWireBytes : 444n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"offset1" : 0, "offset2" : 0, "offset3" : 0, "offset4" : 0, "offset5" : 0, "offset6" : 0, "t" : [], "lookahead_time" : [], "gain" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ServoJRequestSize(Ros1Rosdemo_v3ServoJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ServoJRequestCapture(value), n = Ros1Rosdemo_v3ServoJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ServoJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 444, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ServoJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ServoJRequestSize(value)
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

function Ros1Rosdemo_v3ServoJRequestWrite(value, w)
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

function Ros1Rosdemo_v3ServoJRequestRead(r)
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

function Ros1Rosdemo_v3ServoJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ServoJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ServoJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c969ba286c7a721a554f2892ecb1f9124b9d7499f112c5df498709e1baa3f924",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ServoJResponseSize(Ros1Rosdemo_v3ServoJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ServoJResponseCapture(value), n = Ros1Rosdemo_v3ServoJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ServoJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ServoJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ServoJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ServoJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ServoJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ServoJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ServoPRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ServoPRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc4dc31ad6f496881f462eff953d3be36aff07de0964fda97ea008c022af30ae",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "a" : 0, "b" : 0, "c" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ServoPRequestSize(Ros1Rosdemo_v3ServoPRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ServoPRequestCapture(value), n = Ros1Rosdemo_v3ServoPRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ServoPRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ServoPRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ServoPRequestSize(value)
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

function Ros1Rosdemo_v3ServoPRequestWrite(value, w)
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

function Ros1Rosdemo_v3ServoPRequestRead(r)
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

function Ros1Rosdemo_v3ServoPRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ServoPResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ServoPResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eafc00c243fcf6de83823d72d726b0713152d8832681bdb7ff5f1f87d2b3cbd7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ServoPResponseSize(Ros1Rosdemo_v3ServoPResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ServoPResponseCapture(value), n = Ros1Rosdemo_v3ServoPResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ServoPResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ServoPResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ServoPResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ServoPResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ServoPResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ServoPResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetArmOrientationRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetArmOrientationRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fb8ff0fff5a3493469b950b7d5a85d583cd1097f8e5032b7ecb06a0b4526c128",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"LorR" : 0, "UorD" : 0, "ForN" : 0, "Config6" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetArmOrientationRequestSize(Ros1Rosdemo_v3SetArmOrientationRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetArmOrientationRequestCapture(value), n = Ros1Rosdemo_v3SetArmOrientationRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetArmOrientationRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetArmOrientationRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetArmOrientationRequestSize(value)
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

function Ros1Rosdemo_v3SetArmOrientationRequestWrite(value, w)
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

function Ros1Rosdemo_v3SetArmOrientationRequestRead(r)
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

function Ros1Rosdemo_v3SetArmOrientationRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetArmOrientationResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetArmOrientationResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1533dbaec769feda21a1f2995c57e6633ba36392290b245321d1eba345104c0a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetArmOrientationResponseSize(Ros1Rosdemo_v3SetArmOrientationResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetArmOrientationResponseCapture(value), n = Ros1Rosdemo_v3SetArmOrientationResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetArmOrientationResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetArmOrientationResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetArmOrientationResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetArmOrientationResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetArmOrientationResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetArmOrientationResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetCoilsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCoilsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_15853054579c8b2a28634d6ef82bec746f0ec64de52eb61abd9f31a08b46f374",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCoilsRequestSize(Ros1Rosdemo_v3SetCoilsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCoilsRequestCapture(value), n = Ros1Rosdemo_v3SetCoilsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCoilsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCoilsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCoilsRequestSize(value)
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

function Ros1Rosdemo_v3SetCoilsRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["addr"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["count"], true);
    w.at += 4;
    w.text(value["valTab"], 256);
}

function Ros1Rosdemo_v3SetCoilsRequestRead(r)
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

function Ros1Rosdemo_v3SetCoilsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetCoilsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCoilsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6a6fe5110c5873f87d5d74fb28b931154070627da48ef745c9ac33e0df1d8703",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCoilsResponseSize(Ros1Rosdemo_v3SetCoilsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCoilsResponseCapture(value), n = Ros1Rosdemo_v3SetCoilsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCoilsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCoilsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCoilsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetCoilsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetCoilsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetCoilsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetCollideDragRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCollideDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e5ae701dc2a0b22d6fcc4c332cbb4b2305a81db865b79340d23ddaac61abbff7",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCollideDragRequestSize(Ros1Rosdemo_v3SetCollideDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCollideDragRequestCapture(value), n = Ros1Rosdemo_v3SetCollideDragRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCollideDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCollideDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCollideDragRequestSize(value)
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

function Ros1Rosdemo_v3SetCollideDragRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetCollideDragRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetCollideDragRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetCollideDragResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCollideDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bf19795adc3e41241e60562dead6032e8e8167032070424e4f9169194bfb8fb6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCollideDragResponseSize(Ros1Rosdemo_v3SetCollideDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCollideDragResponseCapture(value), n = Ros1Rosdemo_v3SetCollideDragResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCollideDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCollideDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCollideDragResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetCollideDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetCollideDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetCollideDragResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetCollisionLevelRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCollisionLevelRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7226e3995d906b08ddf99ea8f9d4693c0b2c580a723b83ec5a097579b2bf5e80",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCollisionLevelRequestSize(Ros1Rosdemo_v3SetCollisionLevelRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCollisionLevelRequestCapture(value), n = Ros1Rosdemo_v3SetCollisionLevelRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCollisionLevelRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCollisionLevelRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCollisionLevelRequestSize(value)
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

function Ros1Rosdemo_v3SetCollisionLevelRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetCollisionLevelRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetCollisionLevelRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetCollisionLevelResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetCollisionLevelResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8e96ec3b9cd603cea701b91bbf3d42f016783daf4f7425fbb3093ce36fbbd347",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetCollisionLevelResponseSize(Ros1Rosdemo_v3SetCollisionLevelResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetCollisionLevelResponseCapture(value), n = Ros1Rosdemo_v3SetCollisionLevelResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetCollisionLevelResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetCollisionLevelResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetCollisionLevelResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetCollisionLevelResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetCollisionLevelResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetCollisionLevelResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetHoldRegsRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetHoldRegsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b3105cf18db264d41f40e7810a65439da54eb899e2feee1eceebbb83b995cc04",
    maxWireBytes : 4436,
    minWireBytes : 20,
    cartesianMaxWireBytes : 4436n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "addr" : 0, "count" : 0, "valTab" : "", "valtype" : []};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetHoldRegsRequestSize(Ros1Rosdemo_v3SetHoldRegsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetHoldRegsRequestCapture(value), n = Ros1Rosdemo_v3SetHoldRegsRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetHoldRegsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4436, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetHoldRegsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetHoldRegsRequestSize(value)
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

function Ros1Rosdemo_v3SetHoldRegsRequestWrite(value, w)
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

function Ros1Rosdemo_v3SetHoldRegsRequestRead(r)
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

function Ros1Rosdemo_v3SetHoldRegsRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetHoldRegsResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetHoldRegsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5388c7956e9a01c7dff7d8d8a500ea9455477da73b24c01dbe89faedad921652",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetHoldRegsResponseSize(Ros1Rosdemo_v3SetHoldRegsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetHoldRegsResponseCapture(value), n = Ros1Rosdemo_v3SetHoldRegsResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetHoldRegsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetHoldRegsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetHoldRegsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetHoldRegsResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetHoldRegsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetHoldRegsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetObstacleAvoidRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetObstacleAvoidRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58e82fcba3a381f180f783a086b9c49d3db8620c6d78fbc3a58cc63dd2647df9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetObstacleAvoidRequestSize(Ros1Rosdemo_v3SetObstacleAvoidRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetObstacleAvoidRequestCapture(value), n = Ros1Rosdemo_v3SetObstacleAvoidRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetObstacleAvoidRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetObstacleAvoidRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetObstacleAvoidRequestSize(value)
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

function Ros1Rosdemo_v3SetObstacleAvoidRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetObstacleAvoidRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetObstacleAvoidRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetObstacleAvoidResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetObstacleAvoidResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea1fd0275a79f2a4b057f021560e6f3a507e1fe6dbc2f0d63a419ab4c8e2f206",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetObstacleAvoidResponseSize(Ros1Rosdemo_v3SetObstacleAvoidResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetObstacleAvoidResponseCapture(value), n = Ros1Rosdemo_v3SetObstacleAvoidResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetObstacleAvoidResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetObstacleAvoidResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetObstacleAvoidResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetObstacleAvoidResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetObstacleAvoidResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetObstacleAvoidResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetPayloadRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetPayloadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5945ea62369d23d567a7045cfbfa0a3f12f59d8de64e674d407c0769a81bb90d",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"load" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetPayloadRequestSize(Ros1Rosdemo_v3SetPayloadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetPayloadRequestCapture(value), n = Ros1Rosdemo_v3SetPayloadRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetPayloadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetPayloadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetPayloadRequestSize(value)
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

function Ros1Rosdemo_v3SetPayloadRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["load"], true);
    w.at += 8;
}

function Ros1Rosdemo_v3SetPayloadRequestRead(r)
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

function Ros1Rosdemo_v3SetPayloadRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetPayloadResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetPayloadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c665f5bfac577202780caa2f5b674d7e9fdeacacb2c9e752a08465c43a72b5ec",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetPayloadResponseSize(Ros1Rosdemo_v3SetPayloadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetPayloadResponseCapture(value), n = Ros1Rosdemo_v3SetPayloadResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetPayloadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetPayloadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetPayloadResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetPayloadResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetPayloadResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetPayloadResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetSafeSkinRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetSafeSkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5b2b68b66c0bfaa63714d319ecb69ee3593def3189c807f3d9936c17a08c458",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetSafeSkinRequestSize(Ros1Rosdemo_v3SetSafeSkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetSafeSkinRequestCapture(value), n = Ros1Rosdemo_v3SetSafeSkinRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetSafeSkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetSafeSkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetSafeSkinRequestSize(value)
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

function Ros1Rosdemo_v3SetSafeSkinRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetSafeSkinRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetSafeSkinRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetSafeSkinResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetSafeSkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_729b417c58f25d814a25992ffc2a352ca29b92047ce17a6a4cf189f043c46e7a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetSafeSkinResponseSize(Ros1Rosdemo_v3SetSafeSkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetSafeSkinResponseCapture(value), n = Ros1Rosdemo_v3SetSafeSkinResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetSafeSkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetSafeSkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetSafeSkinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetSafeSkinResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetSafeSkinResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetSafeSkinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetTerminal485Request codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetTerminal485RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03bf89ffb1f9cd37df930234dafc1d8e7506b81bd00de1da9178e366dee3b040",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baudRate" : 0, "dataLen" : 0, "parityBit" : "", "stopBit" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetTerminal485RequestSize(Ros1Rosdemo_v3SetTerminal485RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetTerminal485RequestCapture(value), n = Ros1Rosdemo_v3SetTerminal485RequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetTerminal485RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetTerminal485RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetTerminal485RequestSize(value)
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

function Ros1Rosdemo_v3SetTerminal485RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baudRate"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["dataLen"], true);
    w.at += 4;
    w.text(value["parityBit"], 256);
    w.v.setInt32(w.at, value["stopBit"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetTerminal485RequestRead(r)
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

function Ros1Rosdemo_v3SetTerminal485RequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetTerminal485Response codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetTerminal485ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79a17f908406ad319523cf118c71b4e8b1835d32f650d4987bd75b7420f19958",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetTerminal485ResponseSize(Ros1Rosdemo_v3SetTerminal485ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetTerminal485ResponseCapture(value), n = Ros1Rosdemo_v3SetTerminal485ResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetTerminal485ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetTerminal485ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetTerminal485ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetTerminal485ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetTerminal485ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetTerminal485ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SetTerminalKeysRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetTerminalKeysRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_23ef708280f922fcd28bc3e511bbc136d1ff67fbfbe735c1aa7b35507259b87e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetTerminalKeysRequestSize(Ros1Rosdemo_v3SetTerminalKeysRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetTerminalKeysRequestCapture(value), n = Ros1Rosdemo_v3SetTerminalKeysRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetTerminalKeysRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetTerminalKeysRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetTerminalKeysRequestSize(value)
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

function Ros1Rosdemo_v3SetTerminalKeysRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetTerminalKeysRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["status"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetTerminalKeysRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SetTerminalKeysResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SetTerminalKeysResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7e50d5d3268bf6d3136f64ecbbbbc2d48a697c6e177641b682b66baf26a2c6e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SetTerminalKeysResponseSize(Ros1Rosdemo_v3SetTerminalKeysResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SetTerminalKeysResponseCapture(value), n = Ros1Rosdemo_v3SetTerminalKeysResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SetTerminalKeysResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SetTerminalKeysResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SetTerminalKeysResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SetTerminalKeysResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SetTerminalKeysResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SetTerminalKeysResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SpeedFactorRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedFactorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_27eace5a4955aa126cd355813f6f99c059d132460b68c6da24e6d4de994ce989",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ratio" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedFactorRequestSize(Ros1Rosdemo_v3SpeedFactorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedFactorRequestCapture(value), n = Ros1Rosdemo_v3SpeedFactorRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedFactorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedFactorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedFactorRequestSize(value)
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

function Ros1Rosdemo_v3SpeedFactorRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["ratio"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedFactorRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ratio"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedFactorRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SpeedFactorResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedFactorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0293d4c59bb3b19f907394b27a9b2b761a295a36a0b74ede3962061ac57817f3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedFactorResponseSize(Ros1Rosdemo_v3SpeedFactorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedFactorResponseCapture(value), n = Ros1Rosdemo_v3SpeedFactorResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedFactorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedFactorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedFactorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SpeedFactorResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedFactorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedFactorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SpeedJRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedJRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b61df947b4762894c7e37b7c3fb0e31f3fb97da9947883ffa0d3762e3bb49566",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedJRequestSize(Ros1Rosdemo_v3SpeedJRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedJRequestCapture(value), n = Ros1Rosdemo_v3SpeedJRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedJRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedJRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedJRequestSize(value)
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

function Ros1Rosdemo_v3SpeedJRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedJRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedJRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SpeedJResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedJResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79d8b89b3e2b4d4b665595fac6007ab4d19a1317417868b5d09ad2e08cc016e2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedJResponseSize(Ros1Rosdemo_v3SpeedJResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedJResponseCapture(value), n = Ros1Rosdemo_v3SpeedJResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedJResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedJResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedJResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SpeedJResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedJResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedJResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SpeedLRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedLRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8bd0d035775bb612455d4a38f439c2c6169e02d9ad27351cea15ae3ae6630f7b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedLRequestSize(Ros1Rosdemo_v3SpeedLRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedLRequestCapture(value), n = Ros1Rosdemo_v3SpeedLRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedLRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedLRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedLRequestSize(value)
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

function Ros1Rosdemo_v3SpeedLRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedLRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedLRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/SpeedLResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SpeedLResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e4f7fcaea26d662b7c780e5ab026c42da86d3530d95148cd99a0f9a2ef08771c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SpeedLResponseSize(Ros1Rosdemo_v3SpeedLResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SpeedLResponseCapture(value), n = Ros1Rosdemo_v3SpeedLResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SpeedLResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SpeedLResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SpeedLResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SpeedLResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SpeedLResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SpeedLResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StartDragRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3f183ba57a0470c73eb18b2e333984f0d8dee22818a29fa33c69637f06716893",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartDragRequestSize(Ros1Rosdemo_v3StartDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartDragRequestCapture(value), n = Ros1Rosdemo_v3StartDragRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartDragRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3StartDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3StartDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/StartDragResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4d23bf7baccfc02083e579bbeb144de5d1ad21a141fc7742fd95392f099d6d14",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartDragResponseSize(Ros1Rosdemo_v3StartDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartDragResponseCapture(value), n = Ros1Rosdemo_v3StartDragResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartDragResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StartDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartDragResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StartFCTraceRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartFCTraceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_92a1b2ab02c07a31d4b33f68a29ca2777d7ec65d9a5fadf5510654d065277c50",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartFCTraceRequestSize(Ros1Rosdemo_v3StartFCTraceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartFCTraceRequestCapture(value), n = Ros1Rosdemo_v3StartFCTraceRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartFCTraceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartFCTraceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartFCTraceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartFCTraceRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
}

function Ros1Rosdemo_v3StartFCTraceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartFCTraceRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/StartFCTraceResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartFCTraceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cb79d45087294083f17158d16ac9a65583ddb7d810e7bf2ec34a2e5527a8b941",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartFCTraceResponseSize(Ros1Rosdemo_v3StartFCTraceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartFCTraceResponseCapture(value), n = Ros1Rosdemo_v3StartFCTraceResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartFCTraceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartFCTraceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartFCTraceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartFCTraceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StartFCTraceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartFCTraceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StartPathRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartPathRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5da2451fa2092225ba5eba2c1ff512f18ce310d4c8ac5a97f5a89d36c2da8ec",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : "", "const_val" : 0, "cart" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartPathRequestSize(Ros1Rosdemo_v3StartPathRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartPathRequestCapture(value), n = Ros1Rosdemo_v3StartPathRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartPathRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartPathRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartPathRequestSize(value)
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

function Ros1Rosdemo_v3StartPathRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
    w.v.setInt32(w.at, value["const_val"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["cart"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StartPathRequestRead(r)
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

function Ros1Rosdemo_v3StartPathRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/StartPathResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartPathResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78460c5e24ed0e5666b463a79ebc31246ce2c116cf88c54019ac60bc5f95b4b9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartPathResponseSize(Ros1Rosdemo_v3StartPathResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartPathResponseCapture(value), n = Ros1Rosdemo_v3StartPathResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartPathResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartPathResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartPathResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartPathResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StartPathResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartPathResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StartTraceRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartTraceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81be6f644de5a9566d43ec3d31f7684e9128a95a93dc7dce2a06e740b6845102",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trace_name" : ""};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartTraceRequestSize(Ros1Rosdemo_v3StartTraceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartTraceRequestCapture(value), n = Ros1Rosdemo_v3StartTraceRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartTraceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartTraceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartTraceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["trace_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartTraceRequestWrite(value, w)
{
    w.text(value["trace_name"], 256);
}

function Ros1Rosdemo_v3StartTraceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["trace_name"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartTraceRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/StartTraceResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StartTraceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bea1ee17889d0bb19ca137f2cde296a4be092af12357877698bdd936ade33097",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StartTraceResponseSize(Ros1Rosdemo_v3StartTraceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StartTraceResponseCapture(value), n = Ros1Rosdemo_v3StartTraceResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StartTraceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StartTraceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StartTraceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StartTraceResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StartTraceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StartTraceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StopDragRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopDragRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c3d69f0a11792173d11812d4e44f789f098005e7685ec460e6a841e219a8730d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopDragRequestSize(Ros1Rosdemo_v3StopDragRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopDragRequestCapture(value), n = Ros1Rosdemo_v3StopDragRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopDragRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopDragRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopDragRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopDragRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3StopDragRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3StopDragRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/StopDragResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopDragResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7361eaaf076a2616fc3b2dc7e1e9cefc7f0c3c5a5307cc4e191b008048e30932",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopDragResponseSize(Ros1Rosdemo_v3StopDragResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopDragResponseCapture(value), n = Ros1Rosdemo_v3StopDragResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopDragResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopDragResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopDragResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopDragResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StopDragResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StopDragResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StopScriptRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopScriptRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc02e00e36fd3835572d2afb763887e832032c874b6585eec0df9a4b1148c0b9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopScriptRequestSize(Ros1Rosdemo_v3StopScriptRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopScriptRequestCapture(value), n = Ros1Rosdemo_v3StopScriptRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopScriptRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopScriptRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopScriptRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopScriptRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3StopScriptRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3StopScriptRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/StopScriptResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopScriptResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_533dfab0a4ad0cfb2d6b2612e68e8e1ccda08f2a393f7407880cbbedf1f5ca0a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopScriptResponseSize(Ros1Rosdemo_v3StopScriptResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopScriptResponseCapture(value), n = Ros1Rosdemo_v3StopScriptResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopScriptResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopScriptResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopScriptResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopScriptResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StopScriptResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StopScriptResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/StopmoveJogRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopmoveJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a37f2a4e4dce6d365ee4f7f1ee67dbd4b882519e9d20ffad22120c7d551d375c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopmoveJogRequestSize(Ros1Rosdemo_v3StopmoveJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopmoveJogRequestCapture(value), n = Ros1Rosdemo_v3StopmoveJogRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopmoveJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopmoveJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopmoveJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopmoveJogRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3StopmoveJogRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3StopmoveJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/StopmoveJogResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3StopmoveJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78c6636434ca7719187f75b6d0fff281deaa3f2de5719b37d1593487d500063a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3StopmoveJogResponseSize(Ros1Rosdemo_v3StopmoveJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3StopmoveJogResponseCapture(value), n = Ros1Rosdemo_v3StopmoveJogResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3StopmoveJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3StopmoveJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3StopmoveJogResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3StopmoveJogResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3StopmoveJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3StopmoveJogResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SyncRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SyncRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1648adc20cf279d423a2d1d1c7aacf35c18097c5a0b258228e6540b8bcfe4a53",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SyncRequestSize(Ros1Rosdemo_v3SyncRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SyncRequestCapture(value), n = Ros1Rosdemo_v3SyncRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SyncRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SyncRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SyncRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SyncRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3SyncRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3SyncRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/SyncResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SyncResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82cd8666f9adf6f9b701497d9a3f7d93a041061d04505c103f209c7434fd929e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SyncResponseSize(Ros1Rosdemo_v3SyncResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SyncResponseCapture(value), n = Ros1Rosdemo_v3SyncResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SyncResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SyncResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SyncResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SyncResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SyncResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SyncResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/SyncAllRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SyncAllRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e6c510a2496eadd59783159fee09add28ae0542bbd4a1b63163aba97cd7de6f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SyncAllRequestSize(Ros1Rosdemo_v3SyncAllRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SyncAllRequestCapture(value), n = Ros1Rosdemo_v3SyncAllRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SyncAllRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SyncAllRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SyncAllRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SyncAllRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3SyncAllRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3SyncAllRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/SyncAllResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3SyncAllResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5810875e2b156152e57707f98a670b88fa4d1c3feac99d0f4f165f139084a48",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3SyncAllResponseSize(Ros1Rosdemo_v3SyncAllResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3SyncAllResponseCapture(value), n = Ros1Rosdemo_v3SyncAllResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3SyncAllResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3SyncAllResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3SyncAllResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3SyncAllResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3SyncAllResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3SyncAllResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/TCPSpeedRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3TCPSpeedRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec0c0a283dcb234f8f8d30a5b8442bcc85fdcefac6e8193372a8c05fd0292178",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vt" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3TCPSpeedRequestSize(Ros1Rosdemo_v3TCPSpeedRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3TCPSpeedRequestCapture(value), n = Ros1Rosdemo_v3TCPSpeedRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3TCPSpeedRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3TCPSpeedRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3TCPSpeedRequestSize(value)
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

function Ros1Rosdemo_v3TCPSpeedRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["vt"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3TCPSpeedRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["vt"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3TCPSpeedRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/TCPSpeedResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3TCPSpeedResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3527911df41aee85117021d0eeefad35efa4d813401975ae09c0ca4e0abc95b8",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3TCPSpeedResponseSize(Ros1Rosdemo_v3TCPSpeedResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3TCPSpeedResponseCapture(value), n = Ros1Rosdemo_v3TCPSpeedResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3TCPSpeedResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3TCPSpeedResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3TCPSpeedResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3TCPSpeedResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3TCPSpeedResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3TCPSpeedResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/TCPSpeedEndRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3TCPSpeedEndRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04af23558c725c993e785590ffc34676aa7a37c6b74d7f650749436fbfa4898c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3TCPSpeedEndRequestSize(Ros1Rosdemo_v3TCPSpeedEndRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3TCPSpeedEndRequestCapture(value), n = Ros1Rosdemo_v3TCPSpeedEndRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3TCPSpeedEndRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3TCPSpeedEndRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3TCPSpeedEndRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3TCPSpeedEndRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3TCPSpeedEndRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3TCPSpeedEndRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/TCPSpeedEndResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3TCPSpeedEndResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44d6723fc85750a34de4780298ee1853e2a44761aa11432fdeb9c0282dc68d26",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3TCPSpeedEndResponseSize(Ros1Rosdemo_v3TCPSpeedEndResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3TCPSpeedEndResponseCapture(value), n = Ros1Rosdemo_v3TCPSpeedEndResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3TCPSpeedEndResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3TCPSpeedEndResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3TCPSpeedEndResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3TCPSpeedEndResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3TCPSpeedEndResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3TCPSpeedEndResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ToolRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a0f881c47df89cadf7f6bf9ea389e27a7dbc0f77706c31624c358a3d441897ae",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolRequestSize(Ros1Rosdemo_v3ToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolRequestCapture(value), n = Ros1Rosdemo_v3ToolRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolRequestSize(value)
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

function Ros1Rosdemo_v3ToolRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ToolResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3deaf8f72c671ad7a240ec42434b3f0636aec78d065ecce8b5ebdc5ebf4afe48",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolResponseSize(Ros1Rosdemo_v3ToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolResponseCapture(value), n = Ros1Rosdemo_v3ToolResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ToolResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ToolAIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolAIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1dca438edde8f793175366f3e1f65e25edaec63b1a6039f76ff28071ef05260e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolAIRequestSize(Ros1Rosdemo_v3ToolAIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolAIRequestCapture(value), n = Ros1Rosdemo_v3ToolAIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolAIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolAIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolAIRequestSize(value)
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

function Ros1Rosdemo_v3ToolAIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolAIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolAIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ToolAIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolAIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b9b1d3c257a11bc6fedcd10126a406db344dcae6a3515402b23635b47e44a30c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolAIResponseSize(Ros1Rosdemo_v3ToolAIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolAIResponseCapture(value), n = Ros1Rosdemo_v3ToolAIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolAIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolAIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolAIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ToolAIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolAIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolAIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ToolDIRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDIRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5f37fc3221ae0d5fe0434838e806bb17bc8c328efde222bc6d6fb0f8ffc4accb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDIRequestSize(Ros1Rosdemo_v3ToolDIRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDIRequestCapture(value), n = Ros1Rosdemo_v3ToolDIRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDIRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDIRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDIRequestSize(value)
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

function Ros1Rosdemo_v3ToolDIRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDIRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolDIRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ToolDIResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDIResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec2baddf4aed850d538d2f9ca9fbe9a7a6636919e7f23ac5ef7f270acc4336fa",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDIResponseSize(Ros1Rosdemo_v3ToolDIResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDIResponseCapture(value), n = Ros1Rosdemo_v3ToolDIResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDIResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDIResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDIResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ToolDIResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDIResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolDIResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ToolDORequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7bebf547b4cecce30f37d3b8594de9d5955cacf74509a21e4fc5902925e1de5e",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDORequestSize(Ros1Rosdemo_v3ToolDORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDORequestCapture(value), n = Ros1Rosdemo_v3ToolDORequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDORequestSize(value)
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

function Ros1Rosdemo_v3ToolDORequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDORequestRead(r)
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

function Ros1Rosdemo_v3ToolDORequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ToolDOResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c803e6af978915a6bb34ce68d5ee822fba221ffa1fee5de7301da91b45a2e8f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDOResponseSize(Ros1Rosdemo_v3ToolDOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDOResponseCapture(value), n = Ros1Rosdemo_v3ToolDOResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ToolDOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolDOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/ToolDOExecuteRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDOExecuteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5014af5cd86d2d24210895f0fd18df1caa0f9f4b11dc06c3dcc4e0b0a88abe3f",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "status" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDOExecuteRequestSize(Ros1Rosdemo_v3ToolDOExecuteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDOExecuteRequestCapture(value), n = Ros1Rosdemo_v3ToolDOExecuteRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDOExecuteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDOExecuteRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDOExecuteRequestSize(value)
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

function Ros1Rosdemo_v3ToolDOExecuteRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["status"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDOExecuteRequestRead(r)
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

function Ros1Rosdemo_v3ToolDOExecuteRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/ToolDOExecuteResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3ToolDOExecuteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc295dbf3890fc96fedcc4b04df9e3e0f90a9efa18a024345fd19d2de62123ee",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3ToolDOExecuteResponseSize(Ros1Rosdemo_v3ToolDOExecuteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3ToolDOExecuteResponseCapture(value), n = Ros1Rosdemo_v3ToolDOExecuteResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3ToolDOExecuteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3ToolDOExecuteResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3ToolDOExecuteResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3ToolDOExecuteResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3ToolDOExecuteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3ToolDOExecuteResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/UserRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3UserRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2895dad54ee215055795cb93356fe5a552ca3e5e76dfc8669ead033de0481556",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3UserRequestSize(Ros1Rosdemo_v3UserRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3UserRequestCapture(value), n = Ros1Rosdemo_v3UserRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3UserRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3UserRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3UserRequestSize(value)
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

function Ros1Rosdemo_v3UserRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3UserRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3UserRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/UserResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3UserResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2238f34627525b09f9791bc70ed62a25934128041232f2ac8f047f4315491b12",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3UserResponseSize(Ros1Rosdemo_v3UserResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3UserResponseCapture(value), n = Ros1Rosdemo_v3UserResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3UserResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3UserResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3UserResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3UserResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3UserResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3UserResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/WaitRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3WaitRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44ab4cbc8f4eda00a8a516105d1e8cd9a70601c5abcaf825e722a8abce9d8e85",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"time" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3WaitRequestSize(Ros1Rosdemo_v3WaitRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3WaitRequestCapture(value), n = Ros1Rosdemo_v3WaitRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3WaitRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3WaitRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3WaitRequestSize(value)
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

function Ros1Rosdemo_v3WaitRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["time"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3WaitRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["time"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3WaitRequestCapture(value)
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

/** Complete ROS1 rosdemo_v3/WaitResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3WaitResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d770361fd97c0828105b70cfaa161d949d4a8f6f3b8bd8ab00ab1a3bf8ab1ae",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3WaitResponseSize(Ros1Rosdemo_v3WaitResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3WaitResponseCapture(value), n = Ros1Rosdemo_v3WaitResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3WaitResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3WaitResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3WaitResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3WaitResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3WaitResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3WaitResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}

/** Complete ROS1 rosdemo_v3/pauseRequest codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a32393020c581655886f934dc95dd62ec2cf039d69dc420354f901a7ae0ba6ca",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PauseRequestSize(Ros1Rosdemo_v3PauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PauseRequestCapture(value), n = Ros1Rosdemo_v3PauseRequestSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PauseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PauseRequestWrite(value, w)
{
}

function Ros1Rosdemo_v3PauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Rosdemo_v3PauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 rosdemo_v3/pauseResponse codec; maxima are not actual lengths. */
export const Ros1Rosdemo_v3PauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f4b189021f9e721ee09ed5593e77541c1759c118f73cbededfc406c04547f094",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0};
    },
    validateValue(value) {
        Ros1Rosdemo_v3PauseResponseSize(Ros1Rosdemo_v3PauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rosdemo_v3PauseResponseCapture(value), n = Ros1Rosdemo_v3PauseResponseSize(owned), w = new Writer(n);
        Ros1Rosdemo_v3PauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rosdemo_v3PauseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rosdemo_v3PauseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rosdemo_v3PauseResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["res"], true);
    w.at += 4;
}

function Ros1Rosdemo_v3PauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["res"] = decoded;
    }
    return value;
}

function Ros1Rosdemo_v3PauseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    return out;
}
