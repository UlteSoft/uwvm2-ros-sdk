// @file bounded_records.mjs
// @brief Full fourier js codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in js. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
/**
 * Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
 * Records are ordinary owned values. Decode throws before exposing malformed bytes;
 * encode validates the complete value before allocating its one wire output.
 * 64-bit integers remain BigInt. Strings are strict UTF-8 with no embedded NUL.
 * Owned Service transport is a separate explicit raw12 adapter, not legacy RPC.
 */
const utf8Encoder = new TextEncoder(), utf8Decoder = new TextDecoder("utf-8", {fatal : true, ignoreBOM : true});

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

/** Complete ROS1 uwvm_fourier_bridge/MotionRecipe codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeMotionRecipeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a",
    maxWireBytes : 1170,
    minWireBytes : 18,
    cartesianMaxWireBytes : 1170n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"move_type" : 0, "group" : "", "position" : [], "has_velocity" : false, "velocity" : [], "expected_velocity" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeMotionRecipeSize(Ros1Uwvm_fourier_bridgeMotionRecipeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeMotionRecipeCapture(value), n = Ros1Uwvm_fourier_bridgeMotionRecipeSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeMotionRecipeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1170, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeMotionRecipeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeMotionRecipeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["move_type"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["position"]) || value["position"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["has_velocity"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["expected_velocity"], 4, true);
    n = addSize(n, 4);
    if(n > 1170)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeMotionRecipeWrite(value, w)
{
    w.v.setUint8(w.at, value["move_type"], true);
    w.at += 1;
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["has_velocity"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt32(w.at, value["expected_velocity"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeMotionRecipeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["move_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["has_velocity"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocity"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["expected_velocity"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeMotionRecipeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["move_type"];
        out["move_type"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["position"] = values;
    }
    {
        const field = value["has_velocity"];
        out["has_velocity"] = field;
    }
    {
        const field = value["velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["velocity"] = values;
    }
    {
        const field = value["expected_velocity"];
        out["expected_velocity"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/ExecuteMoveRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b",
    maxWireBytes : 9372,
    minWireBytes : 12,
    cartesianMaxWireBytes : 9372n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "moves" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeExecuteMoveRequestSize(Ros1Uwvm_fourier_bridgeExecuteMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeExecuteMoveRequestCapture(value), n = Ros1Uwvm_fourier_bridgeExecuteMoveRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeExecuteMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9372, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeExecuteMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeExecuteMoveRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["moves"]) || value["moves"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["moves"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeMotionRecipeSize(element));
    }
    if(n > 9372)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeExecuteMoveRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["moves"].length, true);
    w.at += 4;
    for(const element of value["moves"])
    {
        Ros1Uwvm_fourier_bridgeMotionRecipeWrite(element, w);
    }
}

function Ros1Uwvm_fourier_bridgeExecuteMoveRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["moves"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeMotionRecipeRead(r);
                value["moves"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeExecuteMoveRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["moves"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeMotionRecipeCapture(element);
        }
        out["moves"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/ExecuteMoveResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeExecuteMoveResponseSize(Ros1Uwvm_fourier_bridgeExecuteMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeExecuteMoveResponseCapture(value), n = Ros1Uwvm_fourier_bridgeExecuteMoveResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeExecuteMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeExecuteMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeExecuteMoveResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeExecuteMoveResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeExecuteMoveResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeExecuteMoveResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetBaseDataRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "key" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetBaseDataRequestSize(Ros1Uwvm_fourier_bridgeGetBaseDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetBaseDataRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetBaseDataRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetBaseDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetBaseDataRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetBaseDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetBaseDataRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["key"], 128);
}

function Ros1Uwvm_fourier_bridgeGetBaseDataRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetBaseDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetBaseDataResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetBaseDataResponseSize(Ros1Uwvm_fourier_bridgeGetBaseDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetBaseDataResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetBaseDataResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetBaseDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetBaseDataResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetBaseDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetBaseDataResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetBaseDataResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetBaseDataResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetCartesianStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetCartesianStateRequestSize(Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetCartesianStateRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetCartesianStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetCartesianStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetCartesianStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetCartesianStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetCartesianStateResponseSize(Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetCartesianStateResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetCartesianStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetCartesianStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetCartesianStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetContactDataRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "key" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetContactDataRequestSize(Ros1Uwvm_fourier_bridgeGetContactDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetContactDataRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetContactDataRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetContactDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetContactDataRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetContactDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetContactDataRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["key"], 128);
}

function Ros1Uwvm_fourier_bridgeGetContactDataRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetContactDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetContactDataResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetContactDataResponseSize(Ros1Uwvm_fourier_bridgeGetContactDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetContactDataResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetContactDataResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetContactDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetContactDataResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetContactDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetContactDataResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetContactDataResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetContactDataResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetFsmNameRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetFsmNameRequestSize(Ros1Uwvm_fourier_bridgeGetFsmNameRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetFsmNameRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetFsmNameRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetFsmNameRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetFsmNameRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetFsmNameRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetFsmNameRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetFsmNameRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetFsmNameRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetFsmNameResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetFsmNameResponseSize(Ros1Uwvm_fourier_bridgeGetFsmNameResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetFsmNameResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetFsmNameResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetFsmNameResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetFsmNameResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetFsmNameResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetFsmNameResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros1Uwvm_fourier_bridgeGetFsmNameResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetFsmNameResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetFsmStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetFsmStateRequestSize(Ros1Uwvm_fourier_bridgeGetFsmStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetFsmStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetFsmStateRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetFsmStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetFsmStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetFsmStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetFsmStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetFsmStateResponseSize(Ros1Uwvm_fourier_bridgeGetFsmStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetFsmStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetFsmStateResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetFsmStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetFsmStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetFsmStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetFsmStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotionStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestSize(Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotionStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseSize(Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotorCfgRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestSize(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotorCfgResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseSize(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "group" : "", "key" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupStateRequestSize(Ros1Uwvm_fourier_bridgeGetGroupStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupStateRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    n = addSize(n, 4 + textBytes(value["key"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.text(value["group"], 128);
    w.text(value["key"], 128);
}

function Ros1Uwvm_fourier_bridgeGetGroupStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["key"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["key"];
        out["key"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetGroupStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetGroupStateResponseSize(Ros1Uwvm_fourier_bridgeGetGroupStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetGroupStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetGroupStateResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetGroupStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetGroupStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetGroupStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetGroupStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetGroupStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetGroupStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetSnapshotRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetSnapshotRequestSize(Ros1Uwvm_fourier_bridgeGetSnapshotRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetSnapshotRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetSnapshotRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetSnapshotRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetSnapshotRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetSnapshotRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetSnapshotRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetSnapshotRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetSnapshotRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GroupState codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGroupStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855",
    maxWireBytes : 1684,
    minWireBytes : 20,
    cartesianMaxWireBytes : 1684n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : "", "position" : [], "velocity" : [], "effort" : [], "motion_state" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGroupStateSize(Ros1Uwvm_fourier_bridgeGroupStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGroupStateCapture(value), n = Ros1Uwvm_fourier_bridgeGroupStateSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGroupStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1684, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGroupStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGroupStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["position"]) || value["position"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["effort"]) || value["effort"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["effort"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["motion_state"], 4, true);
    n = addSize(n, 4);
    if(n > 1684)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGroupStateWrite(value, w)
{
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["effort"].length, true);
    w.at += 4;
    for(const element of value["effort"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt32(w.at, value["motion_state"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeGroupStateRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["effort"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["effort"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["motion_state"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGroupStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["position"] = values;
    }
    {
        const field = value["velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["velocity"] = values;
    }
    {
        const field = value["effort"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["effort"] = values;
    }
    {
        const field = value["motion_state"];
        out["motion_state"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/Status codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e",
    maxWireBytes : 14400,
    minWireBytes : 32,
    cartesianMaxWireBytes : 14400n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "fsm_state" : 0,
            "fsm_name" : "",
            "upper_fsm_state" : 0,
            "upper_fsm_name" : "",
            "velocity_source" : 0,
            "velocity_source_name" : "",
            "stand_pose" : [],
            "groups" : []
        };
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeStatusSize(Ros1Uwvm_fourier_bridgeStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeStatusCapture(value), n = Ros1Uwvm_fourier_bridgeStatusSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14400, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["fsm_state"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["fsm_name"], 128).length);
    integer(value["upper_fsm_state"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["upper_fsm_name"], 128).length);
    integer(value["velocity_source"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["velocity_source_name"], 128).length);
    if(!Array.isArray(value["stand_pose"]) || value["stand_pose"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["stand_pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["groups"]) || value["groups"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["groups"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupStateSize(element));
    }
    if(n > 14400)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeStatusWrite(value, w)
{
    w.v.setInt32(w.at, value["fsm_state"], true);
    w.at += 4;
    w.text(value["fsm_name"], 128);
    w.v.setInt32(w.at, value["upper_fsm_state"], true);
    w.at += 4;
    w.text(value["upper_fsm_name"], 128);
    w.v.setInt32(w.at, value["velocity_source"], true);
    w.at += 4;
    w.text(value["velocity_source_name"], 128);
    w.v.setUint32(w.at, value["stand_pose"].length, true);
    w.at += 4;
    for(const element of value["stand_pose"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["groups"].length, true);
    w.at += 4;
    for(const element of value["groups"])
    {
        Ros1Uwvm_fourier_bridgeGroupStateWrite(element, w);
    }
}

function Ros1Uwvm_fourier_bridgeStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["fsm_state"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["fsm_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["upper_fsm_state"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["upper_fsm_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["velocity_source"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["velocity_source_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["stand_pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["stand_pose"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["groups"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupStateRead(r);
                value["groups"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["fsm_state"];
        out["fsm_state"] = field;
    }
    {
        const field = value["fsm_name"];
        out["fsm_name"] = field;
    }
    {
        const field = value["upper_fsm_state"];
        out["upper_fsm_state"] = field;
    }
    {
        const field = value["upper_fsm_name"];
        out["upper_fsm_name"] = field;
    }
    {
        const field = value["velocity_source"];
        out["velocity_source"] = field;
    }
    {
        const field = value["velocity_source_name"];
        out["velocity_source_name"] = field;
    }
    {
        const field = value["stand_pose"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["stand_pose"] = values;
    }
    {
        const field = value["groups"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupStateCapture(element);
        }
        out["groups"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetSnapshotResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a",
    maxWireBytes : 14536,
    minWireBytes : 40,
    cartesianMaxWireBytes : 14536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : Ros1Uwvm_fourier_bridgeStatusCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetSnapshotResponseSize(Ros1Uwvm_fourier_bridgeGetSnapshotResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetSnapshotResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetSnapshotResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetSnapshotResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14536, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetSnapshotResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetSnapshotResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, Ros1Uwvm_fourier_bridgeStatusSize(value["value"]));
    if(n > 14536)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetSnapshotResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    Ros1Uwvm_fourier_bridgeStatusWrite(value["value"], w);
}

function Ros1Uwvm_fourier_bridgeGetSnapshotResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = Ros1Uwvm_fourier_bridgeStatusRead(r);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetSnapshotResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = Ros1Uwvm_fourier_bridgeStatusCapture(field);
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetStandPoseRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetStandPoseRequestSize(Ros1Uwvm_fourier_bridgeGetStandPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetStandPoseRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetStandPoseRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetStandPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetStandPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetStandPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetStandPoseRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetStandPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetStandPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetStandPoseResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d",
    maxWireBytes : 652,
    minWireBytes : 12,
    cartesianMaxWireBytes : 652n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetStandPoseResponseSize(Ros1Uwvm_fourier_bridgeGetStandPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetStandPoseResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetStandPoseResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetStandPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 652, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetStandPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetStandPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 652)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetStandPoseResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGetStandPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetStandPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmNameRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestSize(Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmNameResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseSize(Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestSize(Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseSize(Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestSize(Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseSize(Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceNameRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestSize(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCapture(value), n = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceNameResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "value" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseSize(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCapture(value), n = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.text(value["value"], 128);
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/GroupValues codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeGroupValuesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c",
    maxWireBytes : 648,
    minWireBytes : 8,
    cartesianMaxWireBytes : 648n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"group" : "", "values" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeGroupValuesSize(Ros1Uwvm_fourier_bridgeGroupValuesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeGroupValuesCapture(value), n = Ros1Uwvm_fourier_bridgeGroupValuesSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 648, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeGroupValuesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["group"], 128).length);
    if(!Array.isArray(value["values"]) || value["values"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["values"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 648)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeGroupValuesWrite(value, w)
{
    w.text(value["group"], 128);
    w.v.setUint32(w.at, value["values"].length, true);
    w.at += 4;
    for(const element of value["values"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Uwvm_fourier_bridgeGroupValuesRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["group"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["values"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["values"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeGroupValuesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["values"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["values"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetFsmStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "state" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetFsmStateRequestSize(Ros1Uwvm_fourier_bridgeSetFsmStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetFsmStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetFsmStateRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetFsmStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetFsmStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetFsmStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetFsmStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeSetFsmStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetFsmStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetFsmStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetFsmStateResponseSize(Ros1Uwvm_fourier_bridgeSetFsmStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetFsmStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetFsmStateResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetFsmStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetFsmStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetFsmStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetFsmStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetFsmStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetFsmStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetGroupCommandRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220",
    maxWireBytes : 15572,
    minWireBytes : 20,
    cartesianMaxWireBytes : 15572n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "position" : [], "velocity" : [], "torque" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetGroupCommandRequestSize(Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetGroupCommandRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetGroupCommandRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 15572, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetGroupCommandRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetGroupCommandRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["position"]) || value["position"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupValuesSize(element));
    }
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupValuesSize(element));
    }
    if(!Array.isArray(value["torque"]) || value["torque"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["torque"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupValuesSize(element));
    }
    if(n > 15572)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["position"].length, true);
    w.at += 4;
    for(const element of value["position"])
    {
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["velocity"].length, true);
    w.at += 4;
    for(const element of value["velocity"])
    {
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["torque"].length, true);
    w.at += 4;
    for(const element of value["torque"])
    {
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(element, w);
    }
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
                value["position"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
                value["velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
                value["torque"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupValuesCapture(element);
        }
        out["position"] = values;
    }
    {
        const field = value["velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupValuesCapture(element);
        }
        out["velocity"] = values;
    }
    {
        const field = value["torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupValuesCapture(element);
        }
        out["torque"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetGroupCommandResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetGroupCommandResponseSize(Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetGroupCommandResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetGroupCommandResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetGroupCommandResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetGroupCommandResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetMotorCfgPdRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d",
    maxWireBytes : 10384,
    minWireBytes : 16,
    cartesianMaxWireBytes : 10384n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "kp" : [], "kd" : []};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestSize(Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10384, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["kp"]) || value["kp"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["kp"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupValuesSize(element));
    }
    if(!Array.isArray(value["kd"]) || value["kd"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["kd"])
    {
        n = addSize(n, Ros1Uwvm_fourier_bridgeGroupValuesSize(element));
    }
    if(n > 10384)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["kp"].length, true);
    w.at += 4;
    for(const element of value["kp"])
    {
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(element, w);
    }
    w.v.setUint32(w.at, value["kd"].length, true);
    w.at += 4;
    for(const element of value["kd"])
    {
        Ros1Uwvm_fourier_bridgeGroupValuesWrite(element, w);
    }
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["kp"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
                value["kp"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["kd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Uwvm_fourier_bridgeGroupValuesRead(r);
                value["kd"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["kp"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupValuesCapture(element);
        }
        out["kp"] = values;
    }
    {
        const field = value["kd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Uwvm_fourier_bridgeGroupValuesCapture(element);
        }
        out["kd"] = values;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetMotorCfgPdResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseSize(Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetStandPoseRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "delta_z" : 0, "delta_pitch" : 0, "delta_yaw" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetStandPoseRequestSize(Ros1Uwvm_fourier_bridgeSetStandPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetStandPoseRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetStandPoseRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetStandPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetStandPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetStandPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["delta_z"] !== "number" || !Number.isFinite(value["delta_z"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["delta_pitch"] !== "number" || !Number.isFinite(value["delta_pitch"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["delta_yaw"] !== "number" || !Number.isFinite(value["delta_yaw"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetStandPoseRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_pitch"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["delta_yaw"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeSetStandPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_z"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delta_yaw"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetStandPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["delta_z"];
        out["delta_z"] = field;
    }
    {
        const field = value["delta_pitch"];
        out["delta_pitch"] = field;
    }
    {
        const field = value["delta_yaw"];
        out["delta_yaw"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetStandPoseResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetStandPoseResponseSize(Ros1Uwvm_fourier_bridgeSetStandPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetStandPoseResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetStandPoseResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetStandPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetStandPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetStandPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetStandPoseResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetStandPoseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetStandPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetUpperFsmStateRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "state" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestSize(Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetUpperFsmStateResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseSize(Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetVelocityRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "vx" : 0, "vy" : 0, "yaw" : 0, "duration" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetVelocityRequestSize(Ros1Uwvm_fourier_bridgeSetVelocityRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetVelocityRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetVelocityRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetVelocityRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetVelocityRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetVelocityRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["vx"] !== "number" || !Number.isFinite(value["vx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["vy"] !== "number" || !Number.isFinite(value["vy"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]))
        bad();
    n = addSize(n, 8);
    if(n > 40)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetVelocityRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vy"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["yaw"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["duration"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeSetVelocityRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vy"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetVelocityRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["vx"];
        out["vx"] = field;
    }
    {
        const field = value["vy"];
        out["vy"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetVelocityResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetVelocityResponseSize(Ros1Uwvm_fourier_bridgeSetVelocityResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetVelocityResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetVelocityResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetVelocityResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetVelocityResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetVelocityResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetVelocityResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetVelocityResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetVelocityResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetVelocitySourceRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "source" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestSize(Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCapture(value), n = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    integer(value["source"], 4, true);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["source"], true);
    w.at += 4;
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["source"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["source"];
        out["source"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/SetVelocitySourceResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : ""};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseSize(Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCapture(value), n = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseSize(owned),
              w = new Writer(n);
        Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/VelocityCommand codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeVelocityCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "vx" : 0, "vy" : 0, "yaw" : 0, "duration" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeVelocityCommandSize(Ros1Uwvm_fourier_bridgeVelocityCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeVelocityCommandCapture(value), n = Ros1Uwvm_fourier_bridgeVelocityCommandSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeVelocityCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeVelocityCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeVelocityCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(typeof value["vx"] !== "number" || !Number.isFinite(value["vx"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["vy"] !== "number" || !Number.isFinite(value["vy"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]))
        bad();
    n = addSize(n, 8);
    if(n > 40)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeVelocityCommandWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vx"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["vy"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["yaw"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["duration"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeVelocityCommandRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vx"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vy"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeVelocityCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["vx"];
        out["vx"] = field;
    }
    {
        const field = value["vy"];
        out["vy"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33",
    maxWireBytes : 1084,
    minWireBytes : 28,
    cartesianMaxWireBytes : 1084n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sequence" : 0n, "groups" : [], "timeout_seconds" : 0, "poll_seconds" : 0};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestSize(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCapture(value),
              n = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1084, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sequence"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["groups"]) || value["groups"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["groups"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    if(typeof value["timeout_seconds"] !== "number" || !Number.isFinite(value["timeout_seconds"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["poll_seconds"] !== "number" || !Number.isFinite(value["poll_seconds"]))
        bad();
    n = addSize(n, 8);
    if(n > 1084)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestWrite(value, w)
{
    w.v.setBigUint64(w.at, value["sequence"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["groups"].length, true);
    w.at += 4;
    for(const element of value["groups"])
    {
        w.text(element, 128);
    }
    w.v.setFloat64(w.at, value["timeout_seconds"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["poll_seconds"], true);
    w.at += 8;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["sequence"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["groups"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["groups"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout_seconds"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["poll_seconds"] = decoded;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["groups"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["groups"] = values;
    }
    {
        const field = value["timeout_seconds"];
        out["timeout_seconds"] = field;
    }
    {
        const field = value["poll_seconds"];
        out["poll_seconds"] = field;
    }
    return out;
}

/** Complete ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse codec; maxima are not actual lengths. */
export const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8",
    maxWireBytes : 137,
    minWireBytes : 9,
    cartesianMaxWireBytes : 137n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "error" : "", "complete" : false};
    },
    validateValue(value) {
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseSize(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCapture(value),
              n = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseSize(owned), w = new Writer(n);
        Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 137, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["error"], 128).length);
    if(typeof value["complete"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 137)
        bad(90);
    return n;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.text(value["error"], 128);
    w.v.setUint8(w.at, value["complete"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["error"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["complete"] = decoded !== 0;
    }
    return value;
}

function Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["error"];
        out["error"] = field;
    }
    {
        const field = value["complete"];
        out["complete"] = field;
    }
    return out;
}
