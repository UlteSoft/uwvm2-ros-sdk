/**
 * @file bounded_records.mjs
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-melodic-devel-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

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

/** Complete ROS1 dsr_msgs/AlignAxis1Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlignAxis1RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54",
    maxWireBytes : 170,
    minWireBytes : 170,
    cartesianMaxWireBytes : 170n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "x1" : Array.from({length : 6}, () => (0)),
            "x2" : Array.from({length : 6}, () => (0)),
            "x3" : Array.from({length : 6}, () => (0)),
            "source_vect" : Array.from({length : 3}, () => (0)),
            "axis" : 0,
            "ref" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsAlignAxis1RequestSize(Ros1Dsr_msgsAlignAxis1RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlignAxis1RequestCapture(value), n = Ros1Dsr_msgsAlignAxis1RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlignAxis1RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 170, 90);
        if(owned.length < 170)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlignAxis1RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlignAxis1RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["x1"]) || value["x1"].length !== 6)
        bad();
    for(const element of value["x1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x2"]) || value["x2"].length !== 6)
        bad();
    for(const element of value["x2"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x3"]) || value["x3"].length !== 6)
        bad();
    for(const element of value["x3"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["source_vect"]) || value["source_vect"].length !== 3)
        bad();
    for(const element of value["source_vect"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 170)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlignAxis1RequestWrite(value, w)
{
    for(const element of value["x1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x2"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x3"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["source_vect"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsAlignAxis1RequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x2"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x3"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x3"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["source_vect"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["source_vect"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsAlignAxis1RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x1"] = values;
    }
    {
        const field = value["x2"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x2"] = values;
    }
    {
        const field = value["x3"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x3"] = values;
    }
    {
        const field = value["source_vect"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["source_vect"] = values;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlignAxis1Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlignAxis1ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlignAxis1ResponseSize(Ros1Dsr_msgsAlignAxis1ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlignAxis1ResponseCapture(value), n = Ros1Dsr_msgsAlignAxis1ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlignAxis1ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlignAxis1ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlignAxis1ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlignAxis1ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsAlignAxis1ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsAlignAxis1ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlignAxis2Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlignAxis2RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target_vect" : Array.from({length : 3}, () => (0)), "source_vect" : Array.from({length : 3}, () => (0)), "axis" : 0, "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlignAxis2RequestSize(Ros1Dsr_msgsAlignAxis2RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlignAxis2RequestCapture(value), n = Ros1Dsr_msgsAlignAxis2RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlignAxis2RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlignAxis2RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlignAxis2RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["target_vect"]) || value["target_vect"].length !== 3)
        bad();
    for(const element of value["target_vect"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["source_vect"]) || value["source_vect"].length !== 3)
        bad();
    for(const element of value["source_vect"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlignAxis2RequestWrite(value, w)
{
    for(const element of value["target_vect"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["source_vect"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsAlignAxis2RequestRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["target_vect"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_vect"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["source_vect"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["source_vect"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsAlignAxis2RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target_vect"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_vect"] = values;
    }
    {
        const field = value["source_vect"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["source_vect"] = values;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlignAxis2Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlignAxis2ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlignAxis2ResponseSize(Ros1Dsr_msgsAlignAxis2ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlignAxis2ResponseCapture(value), n = Ros1Dsr_msgsAlignAxis2ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlignAxis2ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlignAxis2ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlignAxis2ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlignAxis2ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsAlignAxis2ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsAlignAxis2ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlterMotionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlterMotionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlterMotionRequestSize(Ros1Dsr_msgsAlterMotionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlterMotionRequestCapture(value), n = Ros1Dsr_msgsAlterMotionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlterMotionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlterMotionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlterMotionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlterMotionRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsAlterMotionRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsAlterMotionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlterMotionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlterMotionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlterMotionResponseSize(Ros1Dsr_msgsAlterMotionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlterMotionResponseCapture(value), n = Ros1Dsr_msgsAlterMotionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlterMotionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlterMotionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlterMotionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlterMotionResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsAlterMotionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsAlterMotionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/AlterMotionStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsAlterMotionStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsAlterMotionStreamSize(Ros1Dsr_msgsAlterMotionStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsAlterMotionStreamCapture(value), n = Ros1Dsr_msgsAlterMotionStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsAlterMotionStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsAlterMotionStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsAlterMotionStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsAlterMotionStreamWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsAlterMotionStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsAlterMotionStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CalcCoordRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCalcCoordRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d",
    maxWireBytes : 195,
    minWireBytes : 195,
    cartesianMaxWireBytes : 195n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "input_pos_cnt" : 0,
            "x1" : Array.from({length : 6}, () => (0)),
            "x2" : Array.from({length : 6}, () => (0)),
            "x3" : Array.from({length : 6}, () => (0)),
            "x4" : Array.from({length : 6}, () => (0)),
            "ref" : 0,
            "mod" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsCalcCoordRequestSize(Ros1Dsr_msgsCalcCoordRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCalcCoordRequestCapture(value), n = Ros1Dsr_msgsCalcCoordRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCalcCoordRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 195, 90);
        if(owned.length < 195)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCalcCoordRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCalcCoordRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["input_pos_cnt"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["x1"]) || value["x1"].length !== 6)
        bad();
    for(const element of value["x1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x2"]) || value["x2"].length !== 6)
        bad();
    for(const element of value["x2"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x3"]) || value["x3"].length !== 6)
        bad();
    for(const element of value["x3"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x4"]) || value["x4"].length !== 6)
        bad();
    for(const element of value["x4"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mod"], 1, true);
    n = addSize(n, 1);
    if(n > 195)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCalcCoordRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["input_pos_cnt"], true);
    w.at += 1;
    for(const element of value["x1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x2"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x3"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x4"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mod"], true);
    w.at += 1;
}

function Ros1Dsr_msgsCalcCoordRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["input_pos_cnt"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x2"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x3"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x3"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x4"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x4"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mod"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsCalcCoordRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["input_pos_cnt"];
        out["input_pos_cnt"] = field;
    }
    {
        const field = value["x1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x1"] = values;
    }
    {
        const field = value["x2"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x2"] = values;
    }
    {
        const field = value["x3"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x3"] = values;
    }
    {
        const field = value["x4"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x4"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mod"];
        out["mod"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CalcCoordResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCalcCoordResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posx" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCalcCoordResponseSize(Ros1Dsr_msgsCalcCoordResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCalcCoordResponseCapture(value), n = Ros1Dsr_msgsCalcCoordResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCalcCoordResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCalcCoordResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCalcCoordResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posx"]) || value["conv_posx"].length !== 6)
        bad();
    for(const element of value["conv_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCalcCoordResponseWrite(value, w)
{
    for(const element of value["conv_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCalcCoordResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCalcCoordResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posx"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ChangeOperationSpeedRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsChangeOperationSpeedRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsChangeOperationSpeedRequestSize(Ros1Dsr_msgsChangeOperationSpeedRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsChangeOperationSpeedRequestCapture(value), n = Ros1Dsr_msgsChangeOperationSpeedRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsChangeOperationSpeedRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsChangeOperationSpeedRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsChangeOperationSpeedRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsChangeOperationSpeedRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["speed"], true);
    w.at += 1;
}

function Ros1Dsr_msgsChangeOperationSpeedRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsChangeOperationSpeedRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/ChangeOperationSpeedResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsChangeOperationSpeedResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsChangeOperationSpeedResponseSize(Ros1Dsr_msgsChangeOperationSpeedResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsChangeOperationSpeedResponseCapture(value), n = Ros1Dsr_msgsChangeOperationSpeedResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsChangeOperationSpeedResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsChangeOperationSpeedResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsChangeOperationSpeedResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsChangeOperationSpeedResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsChangeOperationSpeedResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsChangeOperationSpeedResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckForceConditionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckForceConditionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673",
    maxWireBytes : 18,
    minWireBytes : 18,
    cartesianMaxWireBytes : 18n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis" : 0, "min" : 0, "max" : 0, "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckForceConditionRequestSize(Ros1Dsr_msgsCheckForceConditionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckForceConditionRequestCapture(value), n = Ros1Dsr_msgsCheckForceConditionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckForceConditionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 18, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckForceConditionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckForceConditionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(typeof value["min"] !== "number" || !Number.isFinite(value["min"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max"] !== "number" || !Number.isFinite(value["max"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 18)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckForceConditionRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["min"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckForceConditionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["min"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsCheckForceConditionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["min"];
        out["min"] = field;
    }
    {
        const field = value["max"];
        out["max"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckForceConditionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckForceConditionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckForceConditionResponseSize(Ros1Dsr_msgsCheckForceConditionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckForceConditionResponseCapture(value), n = Ros1Dsr_msgsCheckForceConditionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckForceConditionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckForceConditionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckForceConditionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckForceConditionResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckForceConditionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCheckForceConditionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckMotionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckMotionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckMotionRequestSize(Ros1Dsr_msgsCheckMotionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckMotionRequestCapture(value), n = Ros1Dsr_msgsCheckMotionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckMotionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckMotionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckMotionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckMotionRequestWrite(value, w)
{
}

function Ros1Dsr_msgsCheckMotionRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsCheckMotionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/CheckMotionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckMotionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"status" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckMotionResponseSize(Ros1Dsr_msgsCheckMotionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckMotionResponseCapture(value), n = Ros1Dsr_msgsCheckMotionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckMotionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckMotionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckMotionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckMotionResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["status"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckMotionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCheckMotionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckOrientationCondition1Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckOrientationCondition1RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e",
    maxWireBytes : 99,
    minWireBytes : 99,
    cartesianMaxWireBytes : 99n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis" : 0, "min" : Array.from({length : 6}, () => (0)), "max" : Array.from({length : 6}, () => (0)), "ref" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckOrientationCondition1RequestSize(Ros1Dsr_msgsCheckOrientationCondition1RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckOrientationCondition1RequestCapture(value), n = Ros1Dsr_msgsCheckOrientationCondition1RequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsCheckOrientationCondition1RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 99, 90);
        if(owned.length < 99)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckOrientationCondition1RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckOrientationCondition1RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["min"]) || value["min"].length !== 6)
        bad();
    for(const element of value["min"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["max"]) || value["max"].length !== 6)
        bad();
    for(const element of value["max"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 99)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckOrientationCondition1RequestWrite(value, w)
{
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    for(const element of value["min"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["max"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckOrientationCondition1RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["min"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["min"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["max"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["max"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsCheckOrientationCondition1RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["min"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["min"] = values;
    }
    {
        const field = value["max"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["max"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckOrientationCondition1Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckOrientationCondition1ResponseSize(Ros1Dsr_msgsCheckOrientationCondition1ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckOrientationCondition1ResponseCapture(value), n = Ros1Dsr_msgsCheckOrientationCondition1ResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsCheckOrientationCondition1ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckOrientationCondition1ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckOrientationCondition1ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckOrientationCondition1ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckOrientationCondition1ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCheckOrientationCondition1ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckOrientationCondition2Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckOrientationCondition2RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0",
    maxWireBytes : 67,
    minWireBytes : 67,
    cartesianMaxWireBytes : 67n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis" : 0, "min" : 0, "max" : 0, "ref" : 0, "mode" : 0, "pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckOrientationCondition2RequestSize(Ros1Dsr_msgsCheckOrientationCondition2RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckOrientationCondition2RequestCapture(value), n = Ros1Dsr_msgsCheckOrientationCondition2RequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsCheckOrientationCondition2RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 67, 90);
        if(owned.length < 67)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckOrientationCondition2RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckOrientationCondition2RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(typeof value["min"] !== "number" || !Number.isFinite(value["min"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max"] !== "number" || !Number.isFinite(value["max"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 67)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckOrientationCondition2RequestWrite(value, w)
{
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["min"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsCheckOrientationCondition2RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["min"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsCheckOrientationCondition2RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["min"];
        out["min"] = field;
    }
    {
        const field = value["max"];
        out["max"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckOrientationCondition2Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckOrientationCondition2ResponseSize(Ros1Dsr_msgsCheckOrientationCondition2ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckOrientationCondition2ResponseCapture(value), n = Ros1Dsr_msgsCheckOrientationCondition2ResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsCheckOrientationCondition2ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckOrientationCondition2ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckOrientationCondition2ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckOrientationCondition2ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckOrientationCondition2ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCheckOrientationCondition2ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckPositionConditionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckPositionConditionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb",
    maxWireBytes : 67,
    minWireBytes : 67,
    cartesianMaxWireBytes : 67n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"axis" : 0, "min" : 0, "max" : 0, "ref" : 0, "mode" : 0, "pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckPositionConditionRequestSize(Ros1Dsr_msgsCheckPositionConditionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckPositionConditionRequestCapture(value), n = Ros1Dsr_msgsCheckPositionConditionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckPositionConditionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 67, 90);
        if(owned.length < 67)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckPositionConditionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckPositionConditionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(typeof value["min"] !== "number" || !Number.isFinite(value["min"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max"] !== "number" || !Number.isFinite(value["max"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 67)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckPositionConditionRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["min"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsCheckPositionConditionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["min"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsCheckPositionConditionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["min"];
        out["min"] = field;
    }
    {
        const field = value["max"];
        out["max"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CheckPositionConditionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCheckPositionConditionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCheckPositionConditionResponseSize(Ros1Dsr_msgsCheckPositionConditionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCheckPositionConditionResponseCapture(value), n = Ros1Dsr_msgsCheckPositionConditionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCheckPositionConditionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCheckPositionConditionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCheckPositionConditionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCheckPositionConditionResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCheckPositionConditionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCheckPositionConditionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateModbusRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f",
    maxWireBytes : 531,
    minWireBytes : 19,
    cartesianMaxWireBytes : 531n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "ip" : "", "port" : 0, "reg_type" : 0, "index" : 0, "value" : 0, "slave_id" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateModbusRequestSize(Ros1Dsr_msgsConfigCreateModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateModbusRequestCapture(value), n = Ros1Dsr_msgsConfigCreateModbusRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 531, 90);
        if(owned.length < 19)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["reg_type"], 1, true);
    n = addSize(n, 1);
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    integer(value["slave_id"], 4, true);
    n = addSize(n, 4);
    if(n > 531)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateModbusRequestWrite(value, w)
{
    w.text(value["name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt8(w.at, value["reg_type"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["slave_id"], true);
    w.at += 4;
}

function Ros1Dsr_msgsConfigCreateModbusRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["reg_type"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["slave_id"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["reg_type"];
        out["reg_type"] = field;
    }
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["slave_id"];
        out["slave_id"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateModbusResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateModbusResponseSize(Ros1Dsr_msgsConfigCreateModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateModbusResponseCapture(value), n = Ros1Dsr_msgsConfigCreateModbusResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateModbusResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigCreateModbusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateModbusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateTcpRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateTcpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744",
    maxWireBytes : 308,
    minWireBytes : 52,
    cartesianMaxWireBytes : 308n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateTcpRequestSize(Ros1Dsr_msgsConfigCreateTcpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateTcpRequestCapture(value), n = Ros1Dsr_msgsConfigCreateTcpRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateTcpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 308, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateTcpRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateTcpRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 308)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateTcpRequestWrite(value, w)
{
    w.text(value["name"], 256);
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsConfigCreateTcpRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateTcpRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateTcpResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateTcpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateTcpResponseSize(Ros1Dsr_msgsConfigCreateTcpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateTcpResponseCapture(value), n = Ros1Dsr_msgsConfigCreateTcpResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateTcpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateTcpResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateTcpResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateTcpResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigCreateTcpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateTcpResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateToolRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44",
    maxWireBytes : 340,
    minWireBytes : 84,
    cartesianMaxWireBytes : 340n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "weight" : 0, "cog" : Array.from({length : 3}, () => (0)), "inertia" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateToolRequestSize(Ros1Dsr_msgsConfigCreateToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateToolRequestCapture(value), n = Ros1Dsr_msgsConfigCreateToolRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 340, 90);
        if(owned.length < 84)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateToolRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(typeof value["weight"] !== "number" || !Number.isFinite(value["weight"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["cog"]) || value["cog"].length !== 3)
        bad();
    for(const element of value["cog"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["inertia"]) || value["inertia"].length !== 6)
        bad();
    for(const element of value["inertia"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 340)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateToolRequestWrite(value, w)
{
    w.text(value["name"], 256);
    w.v.setFloat64(w.at, value["weight"], true);
    w.at += 8;
    for(const element of value["cog"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["inertia"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsConfigCreateToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["weight"] = decoded;
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["cog"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["cog"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["inertia"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["inertia"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateToolRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["weight"];
        out["weight"] = field;
    }
    {
        const field = value["cog"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["cog"] = values;
    }
    {
        const field = value["inertia"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["inertia"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigCreateToolResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigCreateToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigCreateToolResponseSize(Ros1Dsr_msgsConfigCreateToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigCreateToolResponseCapture(value), n = Ros1Dsr_msgsConfigCreateToolResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigCreateToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigCreateToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigCreateToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigCreateToolResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigCreateToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigCreateToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteModbusRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteModbusRequestSize(Ros1Dsr_msgsConfigDeleteModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteModbusRequestCapture(value), n = Ros1Dsr_msgsConfigDeleteModbusRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteModbusRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsConfigDeleteModbusRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteModbusResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteModbusResponseSize(Ros1Dsr_msgsConfigDeleteModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteModbusResponseCapture(value), n = Ros1Dsr_msgsConfigDeleteModbusResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteModbusResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigDeleteModbusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteModbusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteTcpRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteTcpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteTcpRequestSize(Ros1Dsr_msgsConfigDeleteTcpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteTcpRequestCapture(value), n = Ros1Dsr_msgsConfigDeleteTcpRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteTcpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteTcpRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteTcpRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteTcpRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsConfigDeleteTcpRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteTcpRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteTcpResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteTcpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteTcpResponseSize(Ros1Dsr_msgsConfigDeleteTcpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteTcpResponseCapture(value), n = Ros1Dsr_msgsConfigDeleteTcpResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteTcpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteTcpResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteTcpResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteTcpResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigDeleteTcpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteTcpResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteToolRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteToolRequestSize(Ros1Dsr_msgsConfigDeleteToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteToolRequestCapture(value), n = Ros1Dsr_msgsConfigDeleteToolRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteToolRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteToolRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsConfigDeleteToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteToolRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConfigDeleteToolResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConfigDeleteToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConfigDeleteToolResponseSize(Ros1Dsr_msgsConfigDeleteToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConfigDeleteToolResponseCapture(value), n = Ros1Dsr_msgsConfigDeleteToolResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConfigDeleteToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConfigDeleteToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConfigDeleteToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConfigDeleteToolResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConfigDeleteToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConfigDeleteToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConnectRTControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConnectRTControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip_address" : "", "port" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsConnectRTControlRequestSize(Ros1Dsr_msgsConnectRTControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConnectRTControlRequestCapture(value), n = Ros1Dsr_msgsConnectRTControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConnectRTControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConnectRTControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConnectRTControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ip_address"], 256).length);
    integer(value["port"], 4, false);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConnectRTControlRequestWrite(value, w)
{
    w.text(value["ip_address"], 256);
    w.v.setUint32(w.at, value["port"], true);
    w.at += 4;
}

function Ros1Dsr_msgsConnectRTControlRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["ip_address"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["port"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsConnectRTControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ip_address"];
        out["ip_address"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ConnectRTControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsConnectRTControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsConnectRTControlResponseSize(Ros1Dsr_msgsConnectRTControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsConnectRTControlResponseCapture(value), n = Ros1Dsr_msgsConnectRTControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsConnectRTControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsConnectRTControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsConnectRTControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsConnectRTControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsConnectRTControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsConnectRTControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CoordTransformRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCoordTransformRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos_in" : Array.from({length : 6}, () => (0)), "ref_in" : 0, "ref_out" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsCoordTransformRequestSize(Ros1Dsr_msgsCoordTransformRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCoordTransformRequestCapture(value), n = Ros1Dsr_msgsCoordTransformRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCoordTransformRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCoordTransformRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCoordTransformRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos_in"]) || value["pos_in"].length !== 6)
        bad();
    for(const element of value["pos_in"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref_in"], 1, true);
    n = addSize(n, 1);
    integer(value["ref_out"], 1, true);
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCoordTransformRequestWrite(value, w)
{
    for(const element of value["pos_in"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref_in"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref_out"], true);
    w.at += 1;
}

function Ros1Dsr_msgsCoordTransformRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos_in"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos_in"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref_in"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref_out"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsCoordTransformRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos_in"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos_in"] = values;
    }
    {
        const field = value["ref_in"];
        out["ref_in"] = field;
    }
    {
        const field = value["ref_out"];
        out["ref_out"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/CoordTransformResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsCoordTransformResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posx" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsCoordTransformResponseSize(Ros1Dsr_msgsCoordTransformResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsCoordTransformResponseCapture(value), n = Ros1Dsr_msgsCoordTransformResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsCoordTransformResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsCoordTransformResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsCoordTransformResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posx"]) || value["conv_posx"].length !== 6)
        bad();
    for(const element of value["conv_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsCoordTransformResponseWrite(value, w)
{
    for(const element of value["conv_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsCoordTransformResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsCoordTransformResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posx"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DisableAlterMotionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDisableAlterMotionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsDisableAlterMotionRequestSize(Ros1Dsr_msgsDisableAlterMotionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDisableAlterMotionRequestCapture(value), n = Ros1Dsr_msgsDisableAlterMotionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDisableAlterMotionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDisableAlterMotionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDisableAlterMotionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDisableAlterMotionRequestWrite(value, w)
{
}

function Ros1Dsr_msgsDisableAlterMotionRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsDisableAlterMotionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/DisableAlterMotionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDisableAlterMotionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDisableAlterMotionResponseSize(Ros1Dsr_msgsDisableAlterMotionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDisableAlterMotionResponseCapture(value), n = Ros1Dsr_msgsDisableAlterMotionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDisableAlterMotionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDisableAlterMotionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDisableAlterMotionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDisableAlterMotionResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDisableAlterMotionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDisableAlterMotionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DisconnectRTControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDisconnectRTControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsDisconnectRTControlRequestSize(Ros1Dsr_msgsDisconnectRTControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDisconnectRTControlRequestCapture(value), n = Ros1Dsr_msgsDisconnectRTControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDisconnectRTControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDisconnectRTControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDisconnectRTControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDisconnectRTControlRequestWrite(value, w)
{
}

function Ros1Dsr_msgsDisconnectRTControlRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsDisconnectRTControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/DisconnectRTControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDisconnectRTControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDisconnectRTControlResponseSize(Ros1Dsr_msgsDisconnectRTControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDisconnectRTControlResponseCapture(value), n = Ros1Dsr_msgsDisconnectRTControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDisconnectRTControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDisconnectRTControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDisconnectRTControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDisconnectRTControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDisconnectRTControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDisconnectRTControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlPauseRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlPauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlPauseRequestSize(Ros1Dsr_msgsDrlPauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlPauseRequestCapture(value), n = Ros1Dsr_msgsDrlPauseRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlPauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlPauseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlPauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlPauseRequestWrite(value, w)
{
}

function Ros1Dsr_msgsDrlPauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsDrlPauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/DrlPauseResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlPauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlPauseResponseSize(Ros1Dsr_msgsDrlPauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlPauseResponseCapture(value), n = Ros1Dsr_msgsDrlPauseResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlPauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlPauseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlPauseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlPauseResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDrlPauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDrlPauseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlResumeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlResumeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlResumeRequestSize(Ros1Dsr_msgsDrlResumeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlResumeRequestCapture(value), n = Ros1Dsr_msgsDrlResumeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlResumeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlResumeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlResumeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlResumeRequestWrite(value, w)
{
}

function Ros1Dsr_msgsDrlResumeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsDrlResumeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/DrlResumeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlResumeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlResumeResponseSize(Ros1Dsr_msgsDrlResumeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlResumeResponseCapture(value), n = Ros1Dsr_msgsDrlResumeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlResumeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlResumeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlResumeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlResumeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDrlResumeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDrlResumeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlStartRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlStartRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robotSystem" : 0, "code" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlStartRequestSize(Ros1Dsr_msgsDrlStartRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlStartRequestCapture(value), n = Ros1Dsr_msgsDrlStartRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlStartRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlStartRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlStartRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robotSystem"], 1, true);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["code"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlStartRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["robotSystem"], true);
    w.at += 1;
    w.text(value["code"], 256);
}

function Ros1Dsr_msgsDrlStartRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robotSystem"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["code"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsDrlStartRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robotSystem"];
        out["robotSystem"] = field;
    }
    {
        const field = value["code"];
        out["code"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlStartResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlStartResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlStartResponseSize(Ros1Dsr_msgsDrlStartResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlStartResponseCapture(value), n = Ros1Dsr_msgsDrlStartResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlStartResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlStartResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlStartResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlStartResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDrlStartResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDrlStartResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlStopRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stop_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlStopRequestSize(Ros1Dsr_msgsDrlStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlStopRequestCapture(value), n = Ros1Dsr_msgsDrlStopRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["stop_mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlStopRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["stop_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsDrlStopRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["stop_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsDrlStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stop_mode"];
        out["stop_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/DrlStopResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsDrlStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsDrlStopResponseSize(Ros1Dsr_msgsDrlStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsDrlStopResponseCapture(value), n = Ros1Dsr_msgsDrlStopResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsDrlStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsDrlStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsDrlStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsDrlStopResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsDrlStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsDrlStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/EnableAlterMotionRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsEnableAlterMotionRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f",
    maxWireBytes : 38,
    minWireBytes : 38,
    cartesianMaxWireBytes : 38n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"n" : 0, "mode" : 0, "ref" : 0, "limit_dPOS" : Array.from({length : 2}, () => (0)), "limit_dPOS_per" : Array.from({length : 2}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsEnableAlterMotionRequestSize(Ros1Dsr_msgsEnableAlterMotionRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsEnableAlterMotionRequestCapture(value), n = Ros1Dsr_msgsEnableAlterMotionRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsEnableAlterMotionRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 38, 90);
        if(owned.length < 38)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsEnableAlterMotionRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsEnableAlterMotionRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["n"], 4, true);
    n = addSize(n, 4);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["limit_dPOS"]) || value["limit_dPOS"].length !== 2)
        bad();
    for(const element of value["limit_dPOS"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["limit_dPOS_per"]) || value["limit_dPOS_per"].length !== 2)
        bad();
    for(const element of value["limit_dPOS_per"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 38)
        bad(90);
    return n;
}

function Ros1Dsr_msgsEnableAlterMotionRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["n"], true);
    w.at += 4;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    for(const element of value["limit_dPOS"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["limit_dPOS_per"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsEnableAlterMotionRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["n"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["limit_dPOS"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["limit_dPOS"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["limit_dPOS_per"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["limit_dPOS_per"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsEnableAlterMotionRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["n"];
        out["n"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["limit_dPOS"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["limit_dPOS"] = values;
    }
    {
        const field = value["limit_dPOS_per"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["limit_dPOS_per"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/EnableAlterMotionResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsEnableAlterMotionResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsEnableAlterMotionResponseSize(Ros1Dsr_msgsEnableAlterMotionResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsEnableAlterMotionResponseCapture(value), n = Ros1Dsr_msgsEnableAlterMotionResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsEnableAlterMotionResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsEnableAlterMotionResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsEnableAlterMotionResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsEnableAlterMotionResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsEnableAlterMotionResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsEnableAlterMotionResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/FkinRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsFkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsFkinRequestSize(Ros1Dsr_msgsFkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsFkinRequestCapture(value), n = Ros1Dsr_msgsFkinRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsFkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsFkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsFkinRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsFkinRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsFkinRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsFkinRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/FkinResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsFkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posx" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsFkinResponseSize(Ros1Dsr_msgsFkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsFkinResponseCapture(value), n = Ros1Dsr_msgsFkinResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsFkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsFkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsFkinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posx"]) || value["conv_posx"].length !== 6)
        bad();
    for(const element of value["conv_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsFkinResponseWrite(value, w)
{
    for(const element of value["conv_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsFkinResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsFkinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posx"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetControlModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetControlModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetControlModeRequestSize(Ros1Dsr_msgsGetControlModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetControlModeRequestCapture(value), n = Ros1Dsr_msgsGetControlModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetControlModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetControlModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetControlModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetControlModeRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetControlModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetControlModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetControlModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetControlModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"control_mode" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetControlModeResponseSize(Ros1Dsr_msgsGetControlModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetControlModeResponseCapture(value), n = Ros1Dsr_msgsGetControlModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetControlModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetControlModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetControlModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["control_mode"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetControlModeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["control_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetControlModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["control_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetControlModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["control_mode"];
        out["control_mode"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetControlSpaceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetControlSpaceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetControlSpaceRequestSize(Ros1Dsr_msgsGetControlSpaceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetControlSpaceRequestCapture(value), n = Ros1Dsr_msgsGetControlSpaceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetControlSpaceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetControlSpaceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetControlSpaceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetControlSpaceRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetControlSpaceRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetControlSpaceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetControlSpaceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetControlSpaceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"space" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetControlSpaceResponseSize(Ros1Dsr_msgsGetControlSpaceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetControlSpaceResponseCapture(value), n = Ros1Dsr_msgsGetControlSpaceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetControlSpaceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetControlSpaceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetControlSpaceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["space"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetControlSpaceResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["space"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetControlSpaceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["space"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetControlSpaceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["space"];
        out["space"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCtrlBoxAnalogInputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channel" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestSize(Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCapture(value), n = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["channel"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["channel"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["channel"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channel"];
        out["channel"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCtrlBoxAnalogInputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseSize(Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCapture(value), n = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["value"] !== "number" || !Number.isFinite(value["value"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseWrite(value, w)
{
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCtrlBoxDigitalInputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestSize(Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCapture(value), n = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/GetCtrlBoxDigitalInputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseSize(Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCapture(value), n = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCtrlBoxDigitalOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestSize(Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCapture(value), n = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/GetCtrlBoxDigitalOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseSize(Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCapture(value), n = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPoseRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPoseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"space_type" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPoseRequestSize(Ros1Dsr_msgsGetCurrentPoseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPoseRequestCapture(value), n = Ros1Dsr_msgsGetCurrentPoseRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPoseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPoseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPoseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["space_type"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPoseRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["space_type"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentPoseRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["space_type"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentPoseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["space_type"];
        out["space_type"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPoseResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPoseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPoseResponseSize(Ros1Dsr_msgsGetCurrentPoseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPoseResponseCapture(value), n = Ros1Dsr_msgsGetCurrentPoseResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPoseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPoseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPoseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPoseResponseWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentPoseResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentPoseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPosjRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPosjRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPosjRequestSize(Ros1Dsr_msgsGetCurrentPosjRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPosjRequestCapture(value), n = Ros1Dsr_msgsGetCurrentPosjRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPosjRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPosjRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPosjRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPosjRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetCurrentPosjRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetCurrentPosjRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPosjResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPosjResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPosjResponseSize(Ros1Dsr_msgsGetCurrentPosjResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPosjResponseCapture(value), n = Ros1Dsr_msgsGetCurrentPosjResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPosjResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPosjResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPosjResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPosjResponseWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentPosjResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentPosjResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPosxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPosxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPosxRequestSize(Ros1Dsr_msgsGetCurrentPosxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPosxRequestCapture(value), n = Ros1Dsr_msgsGetCurrentPosxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPosxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPosxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPosxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPosxRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentPosxRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentPosxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 std_msgs/MultiArrayDimension codec; maxima are not actual lengths. */
export const Ros1Std_msgsMultiArrayDimensionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444",
    maxWireBytes : 76,
    minWireBytes : 12,
    cartesianMaxWireBytes : 76n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"label" : "", "size" : 0, "stride" : 0};
    },
    validateValue(value) {
        Ros1Std_msgsMultiArrayDimensionSize(Ros1Std_msgsMultiArrayDimensionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsMultiArrayDimensionCapture(value), n = Ros1Std_msgsMultiArrayDimensionSize(owned), w = new Writer(n);
        Ros1Std_msgsMultiArrayDimensionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 76, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsMultiArrayDimensionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Std_msgsMultiArrayDimensionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["label"], 64).length);
    integer(value["size"], 4, false);
    n = addSize(n, 4);
    integer(value["stride"], 4, false);
    n = addSize(n, 4);
    if(n > 76)
        bad(90);
    return n;
}

function Ros1Std_msgsMultiArrayDimensionWrite(value, w)
{
    w.text(value["label"], 64);
    w.v.setUint32(w.at, value["size"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["stride"], true);
    w.at += 4;
}

function Ros1Std_msgsMultiArrayDimensionRead(r)
{
    const value = {};
    {
        const decoded = r.text(64);
        value["label"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["size"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["stride"] = decoded;
    }
    return value;
}

function Ros1Std_msgsMultiArrayDimensionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["label"];
        out["label"] = field;
    }
    {
        const field = value["size"];
        out["size"] = field;
    }
    {
        const field = value["stride"];
        out["stride"] = field;
    }
    return out;
}

/** Complete ROS1 std_msgs/MultiArrayLayout codec; maxima are not actual lengths. */
export const Ros1Std_msgsMultiArrayLayoutCodec = Object.freeze({
    codecIdentity : "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e",
    maxWireBytes : 236,
    minWireBytes : 8,
    cartesianMaxWireBytes : 236n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"dim" : [], "data_offset" : 0};
    },
    validateValue(value) {
        Ros1Std_msgsMultiArrayLayoutSize(Ros1Std_msgsMultiArrayLayoutCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsMultiArrayLayoutCapture(value), n = Ros1Std_msgsMultiArrayLayoutSize(owned), w = new Writer(n);
        Ros1Std_msgsMultiArrayLayoutWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 236, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsMultiArrayLayoutRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Std_msgsMultiArrayLayoutSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["dim"]) || value["dim"].length > 3)
        bad();
    n = addSize(n, 4);
    for(const element of value["dim"])
    {
        n = addSize(n, Ros1Std_msgsMultiArrayDimensionSize(element));
    }
    integer(value["data_offset"], 4, false);
    n = addSize(n, 4);
    if(n > 236)
        bad(90);
    return n;
}

function Ros1Std_msgsMultiArrayLayoutWrite(value, w)
{
    w.v.setUint32(w.at, value["dim"].length, true);
    w.at += 4;
    for(const element of value["dim"])
    {
        Ros1Std_msgsMultiArrayDimensionWrite(element, w);
    }
    w.v.setUint32(w.at, value["data_offset"], true);
    w.at += 4;
}

function Ros1Std_msgsMultiArrayLayoutRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 3)
                bad();
            value["dim"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsMultiArrayDimensionRead(r);
                value["dim"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["data_offset"] = decoded;
    }
    return value;
}

function Ros1Std_msgsMultiArrayLayoutCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["dim"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsMultiArrayDimensionCapture(element);
        }
        out["dim"] = values;
    }
    {
        const field = value["data_offset"];
        out["data_offset"] = field;
    }
    return out;
}

/** Complete ROS1 std_msgs/Float64MultiArray codec; maxima are not actual lengths. */
export const Ros1Std_msgsFloat64MultiArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8",
    maxWireBytes : 368,
    minWireBytes : 12,
    cartesianMaxWireBytes : 368n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"layout" : Ros1Std_msgsMultiArrayLayoutCodec.defaultValue(), "data" : []};
    },
    validateValue(value) {
        Ros1Std_msgsFloat64MultiArraySize(Ros1Std_msgsFloat64MultiArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsFloat64MultiArrayCapture(value), n = Ros1Std_msgsFloat64MultiArraySize(owned), w = new Writer(n);
        Ros1Std_msgsFloat64MultiArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 368, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsFloat64MultiArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Std_msgsFloat64MultiArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsMultiArrayLayoutSize(value["layout"]));
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 368)
        bad(90);
    return n;
}

function Ros1Std_msgsFloat64MultiArrayWrite(value, w)
{
    Ros1Std_msgsMultiArrayLayoutWrite(value["layout"], w);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Std_msgsFloat64MultiArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsMultiArrayLayoutRead(r);
        value["layout"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Std_msgsFloat64MultiArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["layout"];
        out["layout"] = Ros1Std_msgsMultiArrayLayoutCapture(field);
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentPosxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentPosxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4",
    maxWireBytes : 2213,
    minWireBytes : 5,
    cartesianMaxWireBytes : 2213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"task_pos_info" : [], "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentPosxResponseSize(Ros1Dsr_msgsGetCurrentPosxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentPosxResponseCapture(value), n = Ros1Dsr_msgsGetCurrentPosxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentPosxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2213, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentPosxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentPosxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["task_pos_info"]) || value["task_pos_info"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["task_pos_info"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2213)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentPosxResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["task_pos_info"].length, true);
    w.at += 4;
    for(const element of value["task_pos_info"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentPosxResponseRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["task_pos_info"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["task_pos_info"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentPosxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["task_pos_info"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["task_pos_info"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentRotmRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentRotmRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentRotmRequestSize(Ros1Dsr_msgsGetCurrentRotmRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentRotmRequestCapture(value), n = Ros1Dsr_msgsGetCurrentRotmRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentRotmRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentRotmRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentRotmRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentRotmRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentRotmRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentRotmRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentRotmResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentRotmResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1",
    maxWireBytes : 2213,
    minWireBytes : 5,
    cartesianMaxWireBytes : 2213n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"rot_matrix" : [], "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentRotmResponseSize(Ros1Dsr_msgsGetCurrentRotmResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentRotmResponseCapture(value), n = Ros1Dsr_msgsGetCurrentRotmResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentRotmResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2213, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentRotmResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentRotmResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["rot_matrix"]) || value["rot_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["rot_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2213)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentRotmResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["rot_matrix"].length, true);
    w.at += 4;
    for(const element of value["rot_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentRotmResponseRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["rot_matrix"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["rot_matrix"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentRotmResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["rot_matrix"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["rot_matrix"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentSolutionSpaceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentSolutionSpaceRequestSize(Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCapture(value), n = Ros1Dsr_msgsGetCurrentSolutionSpaceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentSolutionSpaceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentSolutionSpaceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentSolutionSpaceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentSolutionSpaceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sol_space" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentSolutionSpaceResponseSize(Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCapture(value), n = Ros1Dsr_msgsGetCurrentSolutionSpaceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentSolutionSpaceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentSolutionSpaceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sol_space"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["sol_space"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sol_space"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sol_space"];
        out["sol_space"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentTcpRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentTcpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentTcpRequestSize(Ros1Dsr_msgsGetCurrentTcpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentTcpRequestCapture(value), n = Ros1Dsr_msgsGetCurrentTcpRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentTcpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentTcpRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentTcpRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentTcpRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetCurrentTcpRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetCurrentTcpRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentTcpResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentTcpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"info" : "", "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentTcpResponseSize(Ros1Dsr_msgsGetCurrentTcpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentTcpResponseCapture(value), n = Ros1Dsr_msgsGetCurrentTcpResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentTcpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentTcpResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentTcpResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["info"], 256).length);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentTcpResponseWrite(value, w)
{
    w.text(value["info"], 256);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentTcpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["info"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentTcpResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["info"];
        out["info"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentToolRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentToolRequestSize(Ros1Dsr_msgsGetCurrentToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentToolRequestCapture(value), n = Ros1Dsr_msgsGetCurrentToolRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentToolRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentToolRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetCurrentToolRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetCurrentToolRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentToolResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"info" : "", "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentToolResponseSize(Ros1Dsr_msgsGetCurrentToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentToolResponseCapture(value), n = Ros1Dsr_msgsGetCurrentToolResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["info"], 256).length);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentToolResponseWrite(value, w)
{
    w.text(value["info"], 256);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["info"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["info"];
        out["info"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentToolFlangePosxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentToolFlangePosxRequestSize(Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCapture(value), n = Ros1Dsr_msgsGetCurrentToolFlangePosxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentToolFlangePosxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentToolFlangePosxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentToolFlangePosxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentToolFlangePosxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentToolFlangePosxResponseSize(Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCapture(value), n = Ros1Dsr_msgsGetCurrentToolFlangePosxResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetCurrentToolFlangePosxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentToolFlangePosxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentToolFlangePosxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxResponseWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentVeljRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentVeljRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentVeljRequestSize(Ros1Dsr_msgsGetCurrentVeljRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentVeljRequestCapture(value), n = Ros1Dsr_msgsGetCurrentVeljRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentVeljRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentVeljRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentVeljRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentVeljRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetCurrentVeljRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetCurrentVeljRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentVeljResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentVeljResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_speed" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentVeljResponseSize(Ros1Dsr_msgsGetCurrentVeljResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentVeljResponseCapture(value), n = Ros1Dsr_msgsGetCurrentVeljResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentVeljResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentVeljResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentVeljResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_speed"]) || value["joint_speed"].length !== 6)
        bad();
    for(const element of value["joint_speed"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentVeljResponseWrite(value, w)
{
    for(const element of value["joint_speed"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentVeljResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_speed"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_speed"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentVeljResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_speed"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_speed"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentVelxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentVelxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentVelxRequestSize(Ros1Dsr_msgsGetCurrentVelxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentVelxRequestCapture(value), n = Ros1Dsr_msgsGetCurrentVelxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentVelxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentVelxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentVelxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentVelxRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentVelxRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentVelxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetCurrentVelxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetCurrentVelxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetCurrentVelxResponseSize(Ros1Dsr_msgsGetCurrentVelxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetCurrentVelxResponseCapture(value), n = Ros1Dsr_msgsGetCurrentVelxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetCurrentVelxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetCurrentVelxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetCurrentVelxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentVelxResponseWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentVelxResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentVelxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredPosjRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredPosjRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredPosjRequestSize(Ros1Dsr_msgsGetDesiredPosjRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredPosjRequestCapture(value), n = Ros1Dsr_msgsGetDesiredPosjRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredPosjRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredPosjRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredPosjRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredPosjRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetDesiredPosjRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetDesiredPosjRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredPosjResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredPosjResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredPosjResponseSize(Ros1Dsr_msgsGetDesiredPosjResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredPosjResponseCapture(value), n = Ros1Dsr_msgsGetDesiredPosjResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredPosjResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredPosjResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredPosjResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredPosjResponseWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredPosjResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredPosjResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredPosxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredPosxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredPosxRequestSize(Ros1Dsr_msgsGetDesiredPosxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredPosxRequestCapture(value), n = Ros1Dsr_msgsGetDesiredPosxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredPosxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredPosxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredPosxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredPosxRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredPosxRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredPosxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredPosxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredPosxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredPosxResponseSize(Ros1Dsr_msgsGetDesiredPosxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredPosxResponseCapture(value), n = Ros1Dsr_msgsGetDesiredPosxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredPosxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredPosxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredPosxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredPosxResponseWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredPosxResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredPosxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredVeljRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredVeljRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredVeljRequestSize(Ros1Dsr_msgsGetDesiredVeljRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredVeljRequestCapture(value), n = Ros1Dsr_msgsGetDesiredVeljRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredVeljRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredVeljRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredVeljRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredVeljRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetDesiredVeljRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetDesiredVeljRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredVeljResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredVeljResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_vel" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredVeljResponseSize(Ros1Dsr_msgsGetDesiredVeljResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredVeljResponseCapture(value), n = Ros1Dsr_msgsGetDesiredVeljResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredVeljResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredVeljResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredVeljResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_vel"]) || value["joint_vel"].length !== 6)
        bad();
    for(const element of value["joint_vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredVeljResponseWrite(value, w)
{
    for(const element of value["joint_vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredVeljResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_vel"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredVeljResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_vel"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredVelxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredVelxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredVelxRequestSize(Ros1Dsr_msgsGetDesiredVelxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredVelxRequestCapture(value), n = Ros1Dsr_msgsGetDesiredVelxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredVelxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredVelxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredVelxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredVelxRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredVelxRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredVelxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDesiredVelxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDesiredVelxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDesiredVelxResponseSize(Ros1Dsr_msgsGetDesiredVelxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDesiredVelxResponseCapture(value), n = Ros1Dsr_msgsGetDesiredVelxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDesiredVelxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDesiredVelxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDesiredVelxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDesiredVelxResponseWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDesiredVelxResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetDesiredVelxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetDrlStateRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDrlStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDrlStateRequestSize(Ros1Dsr_msgsGetDrlStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDrlStateRequestCapture(value), n = Ros1Dsr_msgsGetDrlStateRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDrlStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDrlStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDrlStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDrlStateRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetDrlStateRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetDrlStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetDrlStateResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetDrlStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"drl_state" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetDrlStateResponseSize(Ros1Dsr_msgsGetDrlStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetDrlStateResponseCapture(value), n = Ros1Dsr_msgsGetDrlStateResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetDrlStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetDrlStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetDrlStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["drl_state"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDrlStateResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["drl_state"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDrlStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["drl_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetDrlStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["drl_state"];
        out["drl_state"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetExternalTorqueRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetExternalTorqueRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetExternalTorqueRequestSize(Ros1Dsr_msgsGetExternalTorqueRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetExternalTorqueRequestCapture(value), n = Ros1Dsr_msgsGetExternalTorqueRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetExternalTorqueRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetExternalTorqueRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetExternalTorqueRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetExternalTorqueRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetExternalTorqueRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetExternalTorqueRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetExternalTorqueResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetExternalTorqueResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ext_torque" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetExternalTorqueResponseSize(Ros1Dsr_msgsGetExternalTorqueResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetExternalTorqueResponseCapture(value), n = Ros1Dsr_msgsGetExternalTorqueResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetExternalTorqueResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetExternalTorqueResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetExternalTorqueResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["ext_torque"]) || value["ext_torque"].length !== 6)
        bad();
    for(const element of value["ext_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetExternalTorqueResponseWrite(value, w)
{
    for(const element of value["ext_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetExternalTorqueResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["ext_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["ext_torque"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetExternalTorqueResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ext_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ext_torque"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetJointTorqueRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetJointTorqueRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetJointTorqueRequestSize(Ros1Dsr_msgsGetJointTorqueRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetJointTorqueRequestCapture(value), n = Ros1Dsr_msgsGetJointTorqueRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetJointTorqueRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetJointTorqueRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetJointTorqueRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetJointTorqueRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetJointTorqueRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetJointTorqueRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetJointTorqueResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetJointTorqueResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"jts" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetJointTorqueResponseSize(Ros1Dsr_msgsGetJointTorqueResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetJointTorqueResponseCapture(value), n = Ros1Dsr_msgsGetJointTorqueResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetJointTorqueResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetJointTorqueResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetJointTorqueResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["jts"]) || value["jts"].length !== 6)
        bad();
    for(const element of value["jts"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetJointTorqueResponseWrite(value, w)
{
    for(const element of value["jts"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetJointTorqueResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["jts"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["jts"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetJointTorqueResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["jts"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["jts"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetLastAlarmRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetLastAlarmRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetLastAlarmRequestSize(Ros1Dsr_msgsGetLastAlarmRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetLastAlarmRequestCapture(value), n = Ros1Dsr_msgsGetLastAlarmRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetLastAlarmRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetLastAlarmRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetLastAlarmRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetLastAlarmRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetLastAlarmRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetLastAlarmRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/LogAlarm codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsLogAlarmCodec = Object.freeze({
    codecIdentity : "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f",
    maxWireBytes : 792,
    minWireBytes : 24,
    cartesianMaxWireBytes : 792n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0, "group" : 0, "index" : 0, "param" : Array.from({length : 3}, () => (""))};
    },
    validateValue(value) {
        Ros1Dsr_msgsLogAlarmSize(Ros1Dsr_msgsLogAlarmCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsLogAlarmCapture(value), n = Ros1Dsr_msgsLogAlarmSize(owned), w = new Writer(n);
        Ros1Dsr_msgsLogAlarmWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 792, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsLogAlarmRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsLogAlarmSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["level"], 4, true);
    n = addSize(n, 4);
    integer(value["group"], 4, true);
    n = addSize(n, 4);
    integer(value["index"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["param"]) || value["param"].length !== 3)
        bad();
    for(const element of value["param"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 792)
        bad(90);
    return n;
}

function Ros1Dsr_msgsLogAlarmWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["group"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["index"], true);
    w.at += 4;
    for(const element of value["param"])
    {
        w.text(element, 256);
    }
}

function Ros1Dsr_msgsLogAlarmRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["group"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["index"] = decoded;
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["param"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["param"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsLogAlarmCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["level"];
        out["level"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["index"];
        out["index"] = field;
    }
    {
        const field = value["param"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["param"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetLastAlarmResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetLastAlarmResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e",
    maxWireBytes : 793,
    minWireBytes : 25,
    cartesianMaxWireBytes : 793n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"log_alarm" : Ros1Dsr_msgsLogAlarmCodec.defaultValue(), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetLastAlarmResponseSize(Ros1Dsr_msgsGetLastAlarmResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetLastAlarmResponseCapture(value), n = Ros1Dsr_msgsGetLastAlarmResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetLastAlarmResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 793, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetLastAlarmResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetLastAlarmResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Dsr_msgsLogAlarmSize(value["log_alarm"]));
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 793)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetLastAlarmResponseWrite(value, w)
{
    Ros1Dsr_msgsLogAlarmWrite(value["log_alarm"], w);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetLastAlarmResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Dsr_msgsLogAlarmRead(r);
        value["log_alarm"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetLastAlarmResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["log_alarm"];
        out["log_alarm"] = Ros1Dsr_msgsLogAlarmCapture(field);
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetModbusInputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetModbusInputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetModbusInputRequestSize(Ros1Dsr_msgsGetModbusInputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetModbusInputRequestCapture(value), n = Ros1Dsr_msgsGetModbusInputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetModbusInputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetModbusInputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetModbusInputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetModbusInputRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsGetModbusInputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetModbusInputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetModbusInputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetModbusInputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetModbusInputResponseSize(Ros1Dsr_msgsGetModbusInputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetModbusInputResponseCapture(value), n = Ros1Dsr_msgsGetModbusInputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetModbusInputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetModbusInputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetModbusInputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetModbusInputResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetModbusInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetModbusInputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetOrientationErrorRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetOrientationErrorRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e",
    maxWireBytes : 97,
    minWireBytes : 97,
    cartesianMaxWireBytes : 97n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"xd" : Array.from({length : 6}, () => (0)), "xc" : Array.from({length : 6}, () => (0)), "axis" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetOrientationErrorRequestSize(Ros1Dsr_msgsGetOrientationErrorRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetOrientationErrorRequestCapture(value), n = Ros1Dsr_msgsGetOrientationErrorRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetOrientationErrorRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 97, 90);
        if(owned.length < 97)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetOrientationErrorRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetOrientationErrorRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["xd"]) || value["xd"].length !== 6)
        bad();
    for(const element of value["xd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["xc"]) || value["xc"].length !== 6)
        bad();
    for(const element of value["xc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(n > 97)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetOrientationErrorRequestWrite(value, w)
{
    for(const element of value["xd"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["xc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetOrientationErrorRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["xd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xd"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["xc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetOrientationErrorRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["xd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xd"] = values;
    }
    {
        const field = value["xc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xc"] = values;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetOrientationErrorResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetOrientationErrorResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ori_error" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetOrientationErrorResponseSize(Ros1Dsr_msgsGetOrientationErrorResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetOrientationErrorResponseCapture(value), n = Ros1Dsr_msgsGetOrientationErrorResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetOrientationErrorResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetOrientationErrorResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetOrientationErrorResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["ori_error"] !== "number" || !Number.isFinite(value["ori_error"]) || !Number.isFinite(Math.fround(value["ori_error"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetOrientationErrorResponseWrite(value, w)
{
    w.v.setFloat32(w.at, value["ori_error"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetOrientationErrorResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["ori_error"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetOrientationErrorResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ori_error"];
        out["ori_error"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlInputDataListRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlInputDataListRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlInputDataListRequestSize(Ros1Dsr_msgsGetRTControlInputDataListRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlInputDataListRequestCapture(value), n = Ros1Dsr_msgsGetRTControlInputDataListRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlInputDataListRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlInputDataListRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlInputDataListRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlInputDataListRequestWrite(value, w)
{
    w.text(value["version"], 256);
}

function Ros1Dsr_msgsGetRTControlInputDataListRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlInputDataListRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlInputDataListResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlInputDataListResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "data" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlInputDataListResponseSize(Ros1Dsr_msgsGetRTControlInputDataListResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlInputDataListResponseCapture(value), n = Ros1Dsr_msgsGetRTControlInputDataListResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlInputDataListResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlInputDataListResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlInputDataListResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["data"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlInputDataListResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["data"], 256);
}

function Ros1Dsr_msgsGetRTControlInputDataListResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlInputDataListResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlInputVersionListRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlInputVersionListRequestSize(Ros1Dsr_msgsGetRTControlInputVersionListRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlInputVersionListRequestCapture(value), n = Ros1Dsr_msgsGetRTControlInputVersionListRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlInputVersionListRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlInputVersionListRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlInputVersionListRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlInputVersionListRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRTControlInputVersionListRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRTControlInputVersionListRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlInputVersionListResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "version" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlInputVersionListResponseSize(Ros1Dsr_msgsGetRTControlInputVersionListResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlInputVersionListResponseCapture(value), n = Ros1Dsr_msgsGetRTControlInputVersionListResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlInputVersionListResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlInputVersionListResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlInputVersionListResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlInputVersionListResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["version"], 256);
}

function Ros1Dsr_msgsGetRTControlInputVersionListResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlInputVersionListResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlOutputDataListRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlOutputDataListRequestSize(Ros1Dsr_msgsGetRTControlOutputDataListRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlOutputDataListRequestCapture(value), n = Ros1Dsr_msgsGetRTControlOutputDataListRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlOutputDataListRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlOutputDataListRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlOutputDataListRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlOutputDataListRequestWrite(value, w)
{
    w.text(value["version"], 256);
}

function Ros1Dsr_msgsGetRTControlOutputDataListRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlOutputDataListRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlOutputDataListResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "data" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlOutputDataListResponseSize(Ros1Dsr_msgsGetRTControlOutputDataListResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlOutputDataListResponseCapture(value), n = Ros1Dsr_msgsGetRTControlOutputDataListResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlOutputDataListResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlOutputDataListResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlOutputDataListResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["data"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlOutputDataListResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["data"], 256);
}

function Ros1Dsr_msgsGetRTControlOutputDataListResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlOutputDataListResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlOutputVersionListRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlOutputVersionListRequestSize(Ros1Dsr_msgsGetRTControlOutputVersionListRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlOutputVersionListRequestCapture(value), n = Ros1Dsr_msgsGetRTControlOutputVersionListRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlOutputVersionListRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlOutputVersionListRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlOutputVersionListRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlOutputVersionListRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRTControlOutputVersionListRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRTControlOutputVersionListRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRTControlOutputVersionListResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "version" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRTControlOutputVersionListResponseSize(Ros1Dsr_msgsGetRTControlOutputVersionListResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRTControlOutputVersionListResponseCapture(value), n = Ros1Dsr_msgsGetRTControlOutputVersionListResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsGetRTControlOutputVersionListResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRTControlOutputVersionListResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRTControlOutputVersionListResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 261)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRTControlOutputVersionListResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["version"], 256);
}

function Ros1Dsr_msgsGetRTControlOutputVersionListResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetRTControlOutputVersionListResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotModeRequestSize(Ros1Dsr_msgsGetRobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotModeRequestCapture(value), n = Ros1Dsr_msgsGetRobotModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotModeRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRobotModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_mode" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotModeResponseSize(Ros1Dsr_msgsGetRobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotModeResponseCapture(value), n = Ros1Dsr_msgsGetRobotModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_mode"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotModeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetRobotModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_mode"];
        out["robot_mode"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotSpeedModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotSpeedModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotSpeedModeRequestSize(Ros1Dsr_msgsGetRobotSpeedModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotSpeedModeRequestCapture(value), n = Ros1Dsr_msgsGetRobotSpeedModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotSpeedModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotSpeedModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotSpeedModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSpeedModeRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRobotSpeedModeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRobotSpeedModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotSpeedModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotSpeedModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed_mode" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotSpeedModeResponseSize(Ros1Dsr_msgsGetRobotSpeedModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotSpeedModeResponseCapture(value), n = Ros1Dsr_msgsGetRobotSpeedModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotSpeedModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotSpeedModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotSpeedModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed_mode"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSpeedModeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["speed_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotSpeedModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetRobotSpeedModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed_mode"];
        out["speed_mode"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotStateRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotStateRequestSize(Ros1Dsr_msgsGetRobotStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotStateRequestCapture(value), n = Ros1Dsr_msgsGetRobotStateRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotStateRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRobotStateRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRobotStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotStateResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_state" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotStateResponseSize(Ros1Dsr_msgsGetRobotStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotStateResponseCapture(value), n = Ros1Dsr_msgsGetRobotStateResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_state"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotStateResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_state"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetRobotStateResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_state"];
        out["robot_state"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotSystemRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotSystemRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotSystemRequestSize(Ros1Dsr_msgsGetRobotSystemRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotSystemRequestCapture(value), n = Ros1Dsr_msgsGetRobotSystemRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotSystemRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotSystemRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotSystemRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSystemRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetRobotSystemRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetRobotSystemRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetRobotSystemResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetRobotSystemResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_system" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetRobotSystemResponseSize(Ros1Dsr_msgsGetRobotSystemResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetRobotSystemResponseCapture(value), n = Ros1Dsr_msgsGetRobotSystemResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetRobotSystemResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetRobotSystemResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetRobotSystemResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_system"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSystemResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_system"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotSystemResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_system"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetRobotSystemResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_system"];
        out["robot_system"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetSolutionSpaceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetSolutionSpaceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetSolutionSpaceRequestSize(Ros1Dsr_msgsGetSolutionSpaceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetSolutionSpaceRequestCapture(value), n = Ros1Dsr_msgsGetSolutionSpaceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetSolutionSpaceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetSolutionSpaceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetSolutionSpaceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetSolutionSpaceRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsGetSolutionSpaceRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsGetSolutionSpaceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetSolutionSpaceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetSolutionSpaceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sol_space" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetSolutionSpaceResponseSize(Ros1Dsr_msgsGetSolutionSpaceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetSolutionSpaceResponseCapture(value), n = Ros1Dsr_msgsGetSolutionSpaceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetSolutionSpaceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetSolutionSpaceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetSolutionSpaceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sol_space"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetSolutionSpaceResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["sol_space"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetSolutionSpaceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sol_space"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetSolutionSpaceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sol_space"];
        out["sol_space"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolDigitalInputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolDigitalInputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolDigitalInputRequestSize(Ros1Dsr_msgsGetToolDigitalInputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolDigitalInputRequestCapture(value), n = Ros1Dsr_msgsGetToolDigitalInputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolDigitalInputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolDigitalInputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolDigitalInputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolDigitalInputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolDigitalInputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetToolDigitalInputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/GetToolDigitalInputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolDigitalInputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolDigitalInputResponseSize(Ros1Dsr_msgsGetToolDigitalInputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolDigitalInputResponseCapture(value), n = Ros1Dsr_msgsGetToolDigitalInputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolDigitalInputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolDigitalInputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolDigitalInputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolDigitalInputResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolDigitalInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetToolDigitalInputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolDigitalOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolDigitalOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolDigitalOutputRequestSize(Ros1Dsr_msgsGetToolDigitalOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolDigitalOutputRequestCapture(value), n = Ros1Dsr_msgsGetToolDigitalOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolDigitalOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolDigitalOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolDigitalOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolDigitalOutputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolDigitalOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetToolDigitalOutputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/GetToolDigitalOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolDigitalOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolDigitalOutputResponseSize(Ros1Dsr_msgsGetToolDigitalOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolDigitalOutputResponseCapture(value), n = Ros1Dsr_msgsGetToolDigitalOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolDigitalOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolDigitalOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolDigitalOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolDigitalOutputResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolDigitalOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetToolDigitalOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolForceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolForceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolForceRequestSize(Ros1Dsr_msgsGetToolForceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolForceRequestCapture(value), n = Ros1Dsr_msgsGetToolForceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolForceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolForceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolForceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolForceRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolForceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetToolForceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolForceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolForceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"tool_force" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetToolForceResponseSize(Ros1Dsr_msgsGetToolForceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetToolForceResponseCapture(value), n = Ros1Dsr_msgsGetToolForceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetToolForceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetToolForceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetToolForceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["tool_force"]) || value["tool_force"].length !== 6)
        bad();
    for(const element of value["tool_force"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolForceResponseWrite(value, w)
{
    for(const element of value["tool_force"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolForceResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["tool_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tool_force"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetToolForceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["tool_force"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tool_force"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetUserCartCoordRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetUserCartCoordRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetUserCartCoordRequestSize(Ros1Dsr_msgsGetUserCartCoordRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetUserCartCoordRequestCapture(value), n = Ros1Dsr_msgsGetUserCartCoordRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetUserCartCoordRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetUserCartCoordRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetUserCartCoordRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetUserCartCoordRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetUserCartCoordRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetUserCartCoordRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetUserCartCoordResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetUserCartCoordResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posx" : Array.from({length : 6}, () => (0)), "ref" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetUserCartCoordResponseSize(Ros1Dsr_msgsGetUserCartCoordResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetUserCartCoordResponseCapture(value), n = Ros1Dsr_msgsGetUserCartCoordResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetUserCartCoordResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetUserCartCoordResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetUserCartCoordResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posx"]) || value["conv_posx"].length !== 6)
        bad();
    for(const element of value["conv_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetUserCartCoordResponseWrite(value, w)
{
    for(const element of value["conv_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetUserCartCoordResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetUserCartCoordResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posx"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/GetWorkpieceWeightRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetWorkpieceWeightRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetWorkpieceWeightRequestSize(Ros1Dsr_msgsGetWorkpieceWeightRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetWorkpieceWeightRequestCapture(value), n = Ros1Dsr_msgsGetWorkpieceWeightRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetWorkpieceWeightRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetWorkpieceWeightRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetWorkpieceWeightRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetWorkpieceWeightRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetWorkpieceWeightRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetWorkpieceWeightRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetWorkpieceWeightResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetWorkpieceWeightResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"weight" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsGetWorkpieceWeightResponseSize(Ros1Dsr_msgsGetWorkpieceWeightResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsGetWorkpieceWeightResponseCapture(value), n = Ros1Dsr_msgsGetWorkpieceWeightResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsGetWorkpieceWeightResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsGetWorkpieceWeightResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsGetWorkpieceWeightResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["weight"] !== "number" || !Number.isFinite(value["weight"]) || !Number.isFinite(Math.fround(value["weight"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetWorkpieceWeightResponseWrite(value, w)
{
    w.v.setFloat32(w.at, value["weight"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetWorkpieceWeightResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["weight"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsGetWorkpieceWeightResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["weight"];
        out["weight"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IkinRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIkinRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "sol_space" : 0, "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsIkinRequestSize(Ros1Dsr_msgsIkinRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIkinRequestCapture(value), n = Ros1Dsr_msgsIkinRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIkinRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIkinRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIkinRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["sol_space"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIkinRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["sol_space"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsIkinRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sol_space"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsIkinRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["sol_space"];
        out["sol_space"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IkinResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIkinResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posj" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsIkinResponseSize(Ros1Dsr_msgsIkinResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIkinResponseCapture(value), n = Ros1Dsr_msgsIkinResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIkinResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIkinResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIkinResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posj"]) || value["conv_posj"].length !== 6)
        bad();
    for(const element of value["conv_posj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIkinResponseWrite(value, w)
{
    for(const element of value["conv_posj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsIkinResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posj"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsIkinResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posj"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IkinExRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIkinExRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0",
    maxWireBytes : 51,
    minWireBytes : 51,
    cartesianMaxWireBytes : 51n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "sol_space" : 0, "ref" : 0, "ref_pos_opt" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsIkinExRequestSize(Ros1Dsr_msgsIkinExRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIkinExRequestCapture(value), n = Ros1Dsr_msgsIkinExRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIkinExRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 51, 90);
        if(owned.length < 51)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIkinExRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIkinExRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["sol_space"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["ref_pos_opt"], 1, true);
    n = addSize(n, 1);
    if(n > 51)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIkinExRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["sol_space"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref_pos_opt"], true);
    w.at += 1;
}

function Ros1Dsr_msgsIkinExRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sol_space"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref_pos_opt"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsIkinExRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["sol_space"];
        out["sol_space"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["ref_pos_opt"];
        out["ref_pos_opt"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IkinExResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIkinExResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"conv_posj" : Array.from({length : 6}, () => (0)), "status" : false, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsIkinExResponseSize(Ros1Dsr_msgsIkinExResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIkinExResponseCapture(value), n = Ros1Dsr_msgsIkinExResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIkinExResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIkinExResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIkinExResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["conv_posj"]) || value["conv_posj"].length !== 6)
        bad();
    for(const element of value["conv_posj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["status"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIkinExResponseWrite(value, w)
{
    for(const element of value["conv_posj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["status"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsIkinExResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["conv_posj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["conv_posj"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["status"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsIkinExResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["conv_posj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["conv_posj"] = values;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IsDoneBoltTighteningRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"m" : 0, "timeout" : 0, "axis" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsIsDoneBoltTighteningRequestSize(Ros1Dsr_msgsIsDoneBoltTighteningRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIsDoneBoltTighteningRequestCapture(value), n = Ros1Dsr_msgsIsDoneBoltTighteningRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIsDoneBoltTighteningRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIsDoneBoltTighteningRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIsDoneBoltTighteningRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["m"] !== "number" || !Number.isFinite(value["m"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]))
        bad();
    n = addSize(n, 8);
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    if(n > 17)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIsDoneBoltTighteningRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["m"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["timeout"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
}

function Ros1Dsr_msgsIsDoneBoltTighteningRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["m"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsIsDoneBoltTighteningRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["m"];
        out["m"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/IsDoneBoltTighteningResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsIsDoneBoltTighteningResponseSize(Ros1Dsr_msgsIsDoneBoltTighteningResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsIsDoneBoltTighteningResponseCapture(value), n = Ros1Dsr_msgsIsDoneBoltTighteningResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsIsDoneBoltTighteningResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsIsDoneBoltTighteningResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsIsDoneBoltTighteningResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsIsDoneBoltTighteningResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsIsDoneBoltTighteningResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsIsDoneBoltTighteningResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/JogRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsJogRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a",
    maxWireBytes : 10,
    minWireBytes : 10,
    cartesianMaxWireBytes : 10n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"jog_axis" : 0, "move_reference" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsJogRequestSize(Ros1Dsr_msgsJogRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsJogRequestCapture(value), n = Ros1Dsr_msgsJogRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsJogRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsJogRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsJogRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["jog_axis"], 1, true);
    n = addSize(n, 1);
    integer(value["move_reference"], 1, true);
    n = addSize(n, 1);
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]))
        bad();
    n = addSize(n, 8);
    if(n > 10)
        bad(90);
    return n;
}

function Ros1Dsr_msgsJogRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["jog_axis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["move_reference"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["speed"], true);
    w.at += 8;
}

function Ros1Dsr_msgsJogRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["jog_axis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["move_reference"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsJogRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["jog_axis"];
        out["jog_axis"] = field;
    }
    {
        const field = value["move_reference"];
        out["move_reference"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/JogResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsJogResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsJogResponseSize(Ros1Dsr_msgsJogResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsJogResponseCapture(value), n = Ros1Dsr_msgsJogResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsJogResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsJogResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsJogResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsJogResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsJogResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsJogResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/JogMultiRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsJogMultiRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea",
    maxWireBytes : 57,
    minWireBytes : 57,
    cartesianMaxWireBytes : 57n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"jog_axis" : Array.from({length : 6}, () => (0)), "move_reference" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsJogMultiRequestSize(Ros1Dsr_msgsJogMultiRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsJogMultiRequestCapture(value), n = Ros1Dsr_msgsJogMultiRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsJogMultiRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 57, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsJogMultiRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsJogMultiRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["jog_axis"]) || value["jog_axis"].length !== 6)
        bad();
    for(const element of value["jog_axis"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["move_reference"], 1, true);
    n = addSize(n, 1);
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]))
        bad();
    n = addSize(n, 8);
    if(n > 57)
        bad(90);
    return n;
}

function Ros1Dsr_msgsJogMultiRequestWrite(value, w)
{
    for(const element of value["jog_axis"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["move_reference"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["speed"], true);
    w.at += 8;
}

function Ros1Dsr_msgsJogMultiRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["jog_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["jog_axis"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["move_reference"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsJogMultiRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["jog_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["jog_axis"] = values;
    }
    {
        const field = value["move_reference"];
        out["move_reference"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/JogMultiResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsJogMultiResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsJogMultiResponseSize(Ros1Dsr_msgsJogMultiResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsJogMultiResponseCapture(value), n = Ros1Dsr_msgsJogMultiResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsJogMultiResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsJogMultiResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsJogMultiResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsJogMultiResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsJogMultiResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsJogMultiResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/JogMultiAxis codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsJogMultiAxisCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02",
    maxWireBytes : 57,
    minWireBytes : 57,
    cartesianMaxWireBytes : 57n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"jog_axis" : Array.from({length : 6}, () => (0)), "move_reference" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsJogMultiAxisSize(Ros1Dsr_msgsJogMultiAxisCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsJogMultiAxisCapture(value), n = Ros1Dsr_msgsJogMultiAxisSize(owned), w = new Writer(n);
        Ros1Dsr_msgsJogMultiAxisWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 57, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsJogMultiAxisRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsJogMultiAxisSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["jog_axis"]) || value["jog_axis"].length !== 6)
        bad();
    for(const element of value["jog_axis"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["move_reference"], 1, true);
    n = addSize(n, 1);
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]))
        bad();
    n = addSize(n, 8);
    if(n > 57)
        bad(90);
    return n;
}

function Ros1Dsr_msgsJogMultiAxisWrite(value, w)
{
    for(const element of value["jog_axis"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["move_reference"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["speed"], true);
    w.at += 8;
}

function Ros1Dsr_msgsJogMultiAxisRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["jog_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["jog_axis"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["move_reference"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsJogMultiAxisCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["jog_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["jog_axis"] = values;
    }
    {
        const field = value["move_reference"];
        out["move_reference"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ManageAccessControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsManageAccessControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"access_control" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsManageAccessControlRequestSize(Ros1Dsr_msgsManageAccessControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsManageAccessControlRequestCapture(value), n = Ros1Dsr_msgsManageAccessControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsManageAccessControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsManageAccessControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsManageAccessControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["access_control"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsManageAccessControlRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["access_control"], true);
    w.at += 1;
}

function Ros1Dsr_msgsManageAccessControlRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["access_control"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsManageAccessControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["access_control"];
        out["access_control"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ManageAccessControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsManageAccessControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsManageAccessControlResponseSize(Ros1Dsr_msgsManageAccessControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsManageAccessControlResponseCapture(value), n = Ros1Dsr_msgsManageAccessControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsManageAccessControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsManageAccessControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsManageAccessControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsManageAccessControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsManageAccessControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsManageAccessControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ModbusState codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsModbusStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"modbus_symbol" : "", "modbus_value" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsModbusStateSize(Ros1Dsr_msgsModbusStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsModbusStateCapture(value), n = Ros1Dsr_msgsModbusStateSize(owned), w = new Writer(n);
        Ros1Dsr_msgsModbusStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsModbusStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsModbusStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["modbus_symbol"], 256).length);
    integer(value["modbus_value"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dsr_msgsModbusStateWrite(value, w)
{
    w.text(value["modbus_symbol"], 256);
    w.v.setInt32(w.at, value["modbus_value"], true);
    w.at += 4;
}

function Ros1Dsr_msgsModbusStateRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["modbus_symbol"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["modbus_value"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsModbusStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["modbus_symbol"];
        out["modbus_symbol"] = field;
    }
    {
        const field = value["modbus_value"];
        out["modbus_value"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveBlendingRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveBlendingRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6",
    maxWireBytes : 2256,
    minWireBytes : 48,
    cartesianMaxWireBytes : 2256n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "segment" : [],
            "posCnt" : 0,
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0,
            "ref" : 0,
            "mode" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveBlendingRequestSize(Ros1Dsr_msgsMoveBlendingRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveBlendingRequestCapture(value), n = Ros1Dsr_msgsMoveBlendingRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveBlendingRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2256, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveBlendingRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveBlendingRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["segment"]) || value["segment"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["segment"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    integer(value["posCnt"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 2256)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveBlendingRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["segment"].length, true);
    w.at += 4;
    for(const element of value["segment"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setInt8(w.at, value["posCnt"], true);
    w.at += 1;
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveBlendingRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["segment"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["segment"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["posCnt"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveBlendingRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["segment"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["segment"] = values;
    }
    {
        const field = value["posCnt"];
        out["posCnt"] = field;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveBlendingResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveBlendingResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveBlendingResponseSize(Ros1Dsr_msgsMoveBlendingResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveBlendingResponseCapture(value), n = Ros1Dsr_msgsMoveBlendingResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveBlendingResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveBlendingResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveBlendingResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveBlendingResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveBlendingResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveBlendingResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveCircleRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveCircleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4",
    maxWireBytes : 2280,
    minWireBytes : 72,
    cartesianMaxWireBytes : 2280n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : [],
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0,
            "radius" : 0,
            "ref" : 0,
            "mode" : 0,
            "angle1" : 0,
            "angle2" : 0,
            "blendType" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveCircleRequestSize(Ros1Dsr_msgsMoveCircleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveCircleRequestCapture(value), n = Ros1Dsr_msgsMoveCircleRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveCircleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2280, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveCircleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveCircleRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(typeof value["angle1"] !== "number" || !Number.isFinite(value["angle1"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["angle2"] !== "number" || !Number.isFinite(value["angle2"]))
        bad();
    n = addSize(n, 8);
    integer(value["blendType"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 2280)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveCircleRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pos"].length, true);
    w.at += 4;
    for(const element of value["pos"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["radius"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["angle1"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["angle2"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["blendType"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveCircleRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angle1"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angle2"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["blendType"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveCircleRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["angle1"];
        out["angle1"] = field;
    }
    {
        const field = value["angle2"];
        out["angle2"] = field;
    }
    {
        const field = value["blendType"];
        out["blendType"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveCircleResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveCircleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveCircleResponseSize(Ros1Dsr_msgsMoveCircleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveCircleResponseCapture(value), n = Ros1Dsr_msgsMoveCircleResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveCircleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveCircleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveCircleResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveCircleResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveCircleResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveCircleResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveHomeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveHomeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveHomeRequestSize(Ros1Dsr_msgsMoveHomeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveHomeRequestCapture(value), n = Ros1Dsr_msgsMoveHomeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveHomeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveHomeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveHomeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["target"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveHomeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["target"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveHomeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["target"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveHomeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        out["target"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveHomeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveHomeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"res" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveHomeResponseSize(Ros1Dsr_msgsMoveHomeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveHomeResponseCapture(value), n = Ros1Dsr_msgsMoveHomeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveHomeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveHomeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveHomeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["res"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveHomeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["res"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveHomeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["res"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveHomeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["res"];
        out["res"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveJointRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveJointRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03",
    maxWireBytes : 83,
    minWireBytes : 83,
    cartesianMaxWireBytes : 83n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "vel" : 0, "acc" : 0, "time" : 0, "radius" : 0, "mode" : 0, "blendType" : 0, "syncType" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveJointRequestSize(Ros1Dsr_msgsMoveJointRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveJointRequestCapture(value), n = Ros1Dsr_msgsMoveJointRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveJointRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 83, 90);
        if(owned.length < 83)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveJointRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveJointRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["vel"] !== "number" || !Number.isFinite(value["vel"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]))
        bad();
    n = addSize(n, 8);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["blendType"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 83)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveJointRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["vel"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["acc"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["radius"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["blendType"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveJointRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vel"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["blendType"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveJointRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        out["vel"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["blendType"];
        out["blendType"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveJointResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveJointResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveJointResponseSize(Ros1Dsr_msgsMoveJointResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveJointResponseCapture(value), n = Ros1Dsr_msgsMoveJointResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveJointResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveJointResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveJointResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveJointResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveJointResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveJointResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveJointxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveJointxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db",
    maxWireBytes : 85,
    minWireBytes : 85,
    cartesianMaxWireBytes : 85n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : 0,
            "acc" : 0,
            "time" : 0,
            "radius" : 0,
            "ref" : 0,
            "mode" : 0,
            "blendType" : 0,
            "sol" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveJointxRequestSize(Ros1Dsr_msgsMoveJointxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveJointxRequestCapture(value), n = Ros1Dsr_msgsMoveJointxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveJointxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 85, 90);
        if(owned.length < 85)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveJointxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveJointxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["vel"] !== "number" || !Number.isFinite(value["vel"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["blendType"], 1, true);
    n = addSize(n, 1);
    integer(value["sol"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 85)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveJointxRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["vel"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["acc"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["radius"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["blendType"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["sol"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveJointxRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vel"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["blendType"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["sol"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveJointxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        out["vel"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["blendType"];
        out["blendType"] = field;
    }
    {
        const field = value["sol"];
        out["sol"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveJointxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveJointxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveJointxResponseSize(Ros1Dsr_msgsMoveJointxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveJointxResponseCapture(value), n = Ros1Dsr_msgsMoveJointxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveJointxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveJointxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveJointxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveJointxResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveJointxResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveJointxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveLineRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveLineRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e",
    maxWireBytes : 100,
    minWireBytes : 100,
    cartesianMaxWireBytes : 100n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0,
            "radius" : 0,
            "ref" : 0,
            "mode" : 0,
            "blendType" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveLineRequestSize(Ros1Dsr_msgsMoveLineRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveLineRequestCapture(value), n = Ros1Dsr_msgsMoveLineRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveLineRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 100, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveLineRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveLineRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["blendType"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 100)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveLineRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["radius"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["blendType"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveLineRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["blendType"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveLineRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["blendType"];
        out["blendType"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveLineResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveLineResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveLineResponseSize(Ros1Dsr_msgsMoveLineResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveLineResponseCapture(value), n = Ros1Dsr_msgsMoveLineResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveLineResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveLineResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveLineResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveLineResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveLineResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveLineResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MovePauseRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMovePauseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsMovePauseRequestSize(Ros1Dsr_msgsMovePauseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMovePauseRequestCapture(value), n = Ros1Dsr_msgsMovePauseRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMovePauseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMovePauseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMovePauseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMovePauseRequestWrite(value, w)
{
}

function Ros1Dsr_msgsMovePauseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsMovePauseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/MovePauseResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMovePauseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMovePauseResponseSize(Ros1Dsr_msgsMovePauseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMovePauseResponseCapture(value), n = Ros1Dsr_msgsMovePauseResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMovePauseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMovePauseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMovePauseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMovePauseResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMovePauseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMovePauseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MovePeriodicRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMovePeriodicRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69",
    maxWireBytes : 107,
    minWireBytes : 107,
    cartesianMaxWireBytes : 107n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "amp" : Array.from({length : 6}, () => (0)),
            "periodic" : Array.from({length : 6}, () => (0)),
            "acc" : 0,
            "repeat" : 0,
            "ref" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMovePeriodicRequestSize(Ros1Dsr_msgsMovePeriodicRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMovePeriodicRequestCapture(value), n = Ros1Dsr_msgsMovePeriodicRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMovePeriodicRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 107, 90);
        if(owned.length < 107)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMovePeriodicRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMovePeriodicRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["amp"]) || value["amp"].length !== 6)
        bad();
    for(const element of value["amp"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["periodic"]) || value["periodic"].length !== 6)
        bad();
    for(const element of value["periodic"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]))
        bad();
    n = addSize(n, 8);
    integer(value["repeat"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 107)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMovePeriodicRequestWrite(value, w)
{
    for(const element of value["amp"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["periodic"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["acc"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["repeat"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMovePeriodicRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["amp"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["amp"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["periodic"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["periodic"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["repeat"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMovePeriodicRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["amp"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["amp"] = values;
    }
    {
        const field = value["periodic"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["periodic"] = values;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["repeat"];
        out["repeat"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MovePeriodicResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMovePeriodicResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMovePeriodicResponseSize(Ros1Dsr_msgsMovePeriodicResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMovePeriodicResponseCapture(value), n = Ros1Dsr_msgsMovePeriodicResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMovePeriodicResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMovePeriodicResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMovePeriodicResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMovePeriodicResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMovePeriodicResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMovePeriodicResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveResumeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveResumeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveResumeRequestSize(Ros1Dsr_msgsMoveResumeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveResumeRequestCapture(value), n = Ros1Dsr_msgsMoveResumeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveResumeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveResumeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveResumeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveResumeRequestWrite(value, w)
{
}

function Ros1Dsr_msgsMoveResumeRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsMoveResumeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/MoveResumeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveResumeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveResumeResponseSize(Ros1Dsr_msgsMoveResumeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveResumeResponseCapture(value), n = Ros1Dsr_msgsMoveResumeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveResumeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveResumeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveResumeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveResumeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveResumeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveResumeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSpiralRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSpiralRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c",
    maxWireBytes : 67,
    minWireBytes : 67,
    cartesianMaxWireBytes : 67n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "revolution" : 0,
            "maxRadius" : 0,
            "maxLength" : 0,
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0,
            "taskAxis" : 0,
            "ref" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSpiralRequestSize(Ros1Dsr_msgsMoveSpiralRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSpiralRequestCapture(value), n = Ros1Dsr_msgsMoveSpiralRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSpiralRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 67, 90);
        if(owned.length < 67)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSpiralRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSpiralRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["revolution"] !== "number" || !Number.isFinite(value["revolution"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["maxRadius"] !== "number" || !Number.isFinite(value["maxRadius"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["maxLength"] !== "number" || !Number.isFinite(value["maxLength"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["taskAxis"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 67)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSpiralRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["revolution"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["maxRadius"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["maxLength"], true);
    w.at += 8;
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["taskAxis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSpiralRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["revolution"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["maxRadius"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["maxLength"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["taskAxis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveSpiralRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["revolution"];
        out["revolution"] = field;
    }
    {
        const field = value["maxRadius"];
        out["maxRadius"] = field;
    }
    {
        const field = value["maxLength"];
        out["maxLength"] = field;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["taskAxis"];
        out["taskAxis"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSpiralResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSpiralResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSpiralResponseSize(Ros1Dsr_msgsMoveSpiralResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSpiralResponseCapture(value), n = Ros1Dsr_msgsMoveSpiralResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSpiralResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSpiralResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSpiralResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSpiralResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSpiralResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveSpiralResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSplineJointRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSplineJointRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a",
    maxWireBytes : 2319,
    minWireBytes : 111,
    cartesianMaxWireBytes : 2319n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : [],
            "posCnt" : 0,
            "vel" : Array.from({length : 6}, () => (0)),
            "acc" : Array.from({length : 6}, () => (0)),
            "time" : 0,
            "mode" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSplineJointRequestSize(Ros1Dsr_msgsMoveSplineJointRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSplineJointRequestCapture(value), n = Ros1Dsr_msgsMoveSplineJointRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSplineJointRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2319, 90);
        if(owned.length < 111)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSplineJointRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSplineJointRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    integer(value["posCnt"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 2319)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSplineJointRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pos"].length, true);
    w.at += 4;
    for(const element of value["pos"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setInt8(w.at, value["posCnt"], true);
    w.at += 1;
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSplineJointRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["posCnt"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveSplineJointRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["pos"] = values;
    }
    {
        const field = value["posCnt"];
        out["posCnt"] = field;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSplineJointResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSplineJointResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSplineJointResponseSize(Ros1Dsr_msgsMoveSplineJointResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSplineJointResponseCapture(value), n = Ros1Dsr_msgsMoveSplineJointResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSplineJointResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSplineJointResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSplineJointResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSplineJointResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSplineJointResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveSplineJointResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSplineTaskRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSplineTaskRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a",
    maxWireBytes : 2257,
    minWireBytes : 49,
    cartesianMaxWireBytes : 2257n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : [],
            "posCnt" : 0,
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0,
            "ref" : 0,
            "mode" : 0,
            "opt" : 0,
            "syncType" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSplineTaskRequestSize(Ros1Dsr_msgsMoveSplineTaskRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSplineTaskRequestCapture(value), n = Ros1Dsr_msgsMoveSplineTaskRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSplineTaskRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2257, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSplineTaskRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSplineTaskRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    integer(value["posCnt"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["opt"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 2257)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSplineTaskRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pos"].length, true);
    w.at += 4;
    for(const element of value["pos"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setInt8(w.at, value["posCnt"], true);
    w.at += 1;
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["opt"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["syncType"], true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSplineTaskRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["posCnt"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["opt"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["syncType"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveSplineTaskRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["pos"] = values;
    }
    {
        const field = value["posCnt"];
        out["posCnt"] = field;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["opt"];
        out["opt"] = field;
    }
    {
        const field = value["syncType"];
        out["syncType"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveSplineTaskResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveSplineTaskResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveSplineTaskResponseSize(Ros1Dsr_msgsMoveSplineTaskResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveSplineTaskResponseCapture(value), n = Ros1Dsr_msgsMoveSplineTaskResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveSplineTaskResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveSplineTaskResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveSplineTaskResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveSplineTaskResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveSplineTaskResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveSplineTaskResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveStopRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stop_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveStopRequestSize(Ros1Dsr_msgsMoveStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveStopRequestCapture(value), n = Ros1Dsr_msgsMoveStopRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["stop_mode"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveStopRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["stop_mode"], true);
    w.at += 4;
}

function Ros1Dsr_msgsMoveStopRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["stop_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsMoveStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stop_mode"];
        out["stop_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveStopResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveStopResponseSize(Ros1Dsr_msgsMoveStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveStopResponseCapture(value), n = Ros1Dsr_msgsMoveStopResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveStopResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/MoveWaitRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveWaitRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveWaitRequestSize(Ros1Dsr_msgsMoveWaitRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveWaitRequestCapture(value), n = Ros1Dsr_msgsMoveWaitRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveWaitRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveWaitRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveWaitRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveWaitRequestWrite(value, w)
{
}

function Ros1Dsr_msgsMoveWaitRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsMoveWaitRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/MoveWaitResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsMoveWaitResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsMoveWaitResponseSize(Ros1Dsr_msgsMoveWaitResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsMoveWaitResponseCapture(value), n = Ros1Dsr_msgsMoveWaitResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsMoveWaitResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsMoveWaitResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsMoveWaitResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsMoveWaitResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsMoveWaitResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsMoveWaitResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/OverwriteUserCartCoordRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "pos" : Array.from({length : 6}, () => (0)), "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsOverwriteUserCartCoordRequestSize(Ros1Dsr_msgsOverwriteUserCartCoordRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsOverwriteUserCartCoordRequestCapture(value), n = Ros1Dsr_msgsOverwriteUserCartCoordRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsOverwriteUserCartCoordRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsOverwriteUserCartCoordRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsOverwriteUserCartCoordRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 50)
        bad(90);
    return n;
}

function Ros1Dsr_msgsOverwriteUserCartCoordRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsOverwriteUserCartCoordRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsOverwriteUserCartCoordRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/OverwriteUserCartCoordResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsOverwriteUserCartCoordResponseSize(Ros1Dsr_msgsOverwriteUserCartCoordResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsOverwriteUserCartCoordResponseCapture(value), n = Ros1Dsr_msgsOverwriteUserCartCoordResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsOverwriteUserCartCoordResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsOverwriteUserCartCoordResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsOverwriteUserCartCoordResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsOverwriteUserCartCoordResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsOverwriteUserCartCoordResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsOverwriteUserCartCoordResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ParallelAxis1Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsParallelAxis1RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe",
    maxWireBytes : 146,
    minWireBytes : 146,
    cartesianMaxWireBytes : 146n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "x1" : Array.from({length : 6}, () => (0)),
            "x2" : Array.from({length : 6}, () => (0)),
            "x3" : Array.from({length : 6}, () => (0)),
            "axis" : 0,
            "ref" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsParallelAxis1RequestSize(Ros1Dsr_msgsParallelAxis1RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsParallelAxis1RequestCapture(value), n = Ros1Dsr_msgsParallelAxis1RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsParallelAxis1RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 146, 90);
        if(owned.length < 146)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsParallelAxis1RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsParallelAxis1RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["x1"]) || value["x1"].length !== 6)
        bad();
    for(const element of value["x1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x2"]) || value["x2"].length !== 6)
        bad();
    for(const element of value["x2"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x3"]) || value["x3"].length !== 6)
        bad();
    for(const element of value["x3"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 146)
        bad(90);
    return n;
}

function Ros1Dsr_msgsParallelAxis1RequestWrite(value, w)
{
    for(const element of value["x1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x2"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x3"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsParallelAxis1RequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x2"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x3"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x3"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsParallelAxis1RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x1"] = values;
    }
    {
        const field = value["x2"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x2"] = values;
    }
    {
        const field = value["x3"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x3"] = values;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ParallelAxis1Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsParallelAxis1ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsParallelAxis1ResponseSize(Ros1Dsr_msgsParallelAxis1ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsParallelAxis1ResponseCapture(value), n = Ros1Dsr_msgsParallelAxis1ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsParallelAxis1ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsParallelAxis1ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsParallelAxis1ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsParallelAxis1ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsParallelAxis1ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsParallelAxis1ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ParallelAxis2Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsParallelAxis2RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191",
    maxWireBytes : 26,
    minWireBytes : 26,
    cartesianMaxWireBytes : 26n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vect" : Array.from({length : 3}, () => (0)), "axis" : 0, "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsParallelAxis2RequestSize(Ros1Dsr_msgsParallelAxis2RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsParallelAxis2RequestCapture(value), n = Ros1Dsr_msgsParallelAxis2RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsParallelAxis2RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 26, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsParallelAxis2RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsParallelAxis2RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vect"]) || value["vect"].length !== 3)
        bad();
    for(const element of value["vect"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["axis"], 1, true);
    n = addSize(n, 1);
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 26)
        bad(90);
    return n;
}

function Ros1Dsr_msgsParallelAxis2RequestWrite(value, w)
{
    for(const element of value["vect"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["axis"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsParallelAxis2RequestRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["vect"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vect"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["axis"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsParallelAxis2RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vect"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vect"] = values;
    }
    {
        const field = value["axis"];
        out["axis"] = field;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ParallelAxis2Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsParallelAxis2ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsParallelAxis2ResponseSize(Ros1Dsr_msgsParallelAxis2ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsParallelAxis2ResponseCapture(value), n = Ros1Dsr_msgsParallelAxis2ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsParallelAxis2ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsParallelAxis2ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsParallelAxis2ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsParallelAxis2ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsParallelAxis2ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsParallelAxis2ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReadDataRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReadDataRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsReadDataRTRequestSize(Ros1Dsr_msgsReadDataRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReadDataRTRequestCapture(value), n = Ros1Dsr_msgsReadDataRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReadDataRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReadDataRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReadDataRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReadDataRTRequestWrite(value, w)
{
}

function Ros1Dsr_msgsReadDataRTRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsReadDataRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/RobotStateRT codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotStateRTCodec = Object.freeze({
    codecIdentity : "UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232",
    maxWireBytes : 8154,
    minWireBytes : 1530,
    cartesianMaxWireBytes : 8154n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "time_stamp" : 0,
            "actual_joint_position" : Array.from({length : 6}, () => (0)),
            "actual_joint_position_abs" : Array.from({length : 6}, () => (0)),
            "actual_joint_velocity" : Array.from({length : 6}, () => (0)),
            "actual_joint_velocity_abs" : Array.from({length : 6}, () => (0)),
            "actual_tcp_position" : Array.from({length : 6}, () => (0)),
            "actual_tcp_velocity" : Array.from({length : 6}, () => (0)),
            "actual_flange_position" : Array.from({length : 6}, () => (0)),
            "actual_flange_velocity" : Array.from({length : 6}, () => (0)),
            "actual_motor_torque" : Array.from({length : 6}, () => (0)),
            "actual_joint_torque" : Array.from({length : 6}, () => (0)),
            "raw_joint_torque" : Array.from({length : 6}, () => (0)),
            "raw_force_torque" : Array.from({length : 6}, () => (0)),
            "external_joint_torque" : Array.from({length : 6}, () => (0)),
            "external_tcp_force" : Array.from({length : 6}, () => (0)),
            "target_joint_position" : Array.from({length : 6}, () => (0)),
            "target_joint_velocity" : Array.from({length : 6}, () => (0)),
            "target_joint_acceleration" : Array.from({length : 6}, () => (0)),
            "target_motor_torque" : Array.from({length : 6}, () => (0)),
            "target_tcp_position" : Array.from({length : 6}, () => (0)),
            "target_tcp_velocity" : Array.from({length : 6}, () => (0)),
            "jacobian_matrix" : [],
            "gravity_torque" : Array.from({length : 6}, () => (0)),
            "coriolis_matrix" : [],
            "mass_matrix" : [],
            "solution_space" : 0,
            "singularity" : 0,
            "operation_speed_rate" : 0,
            "joint_temperature" : Array.from({length : 6}, () => (0)),
            "controller_digital_input" : 0,
            "controller_digital_output" : 0,
            "controller_analog_input_type" : Array.from({length : 2}, () => (0)),
            "controller_analog_input" : Array.from({length : 2}, () => (0)),
            "controller_analog_output_type" : Array.from({length : 2}, () => (0)),
            "controller_analog_output" : Array.from({length : 2}, () => (0)),
            "flange_digital_input" : 0,
            "flange_digital_output" : 0,
            "flange_analog_input" : Array.from({length : 4}, () => (0)),
            "external_encoder_strobe_count" : Array.from({length : 2}, () => (0)),
            "external_encoder_count" : Array.from({length : 2}, () => (0)),
            "goal_joint_position" : Array.from({length : 6}, () => (0)),
            "goal_tcp_position" : Array.from({length : 6}, () => (0)),
            "robot_mode" : 0,
            "robot_state" : 0,
            "control_mode" : 0,
            "reserved" : Array.from({length : 256}, () => (0))
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotStateRTSize(Ros1Dsr_msgsRobotStateRTCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotStateRTCapture(value), n = Ros1Dsr_msgsRobotStateRTSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotStateRTWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8154, 90);
        if(owned.length < 1530)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotStateRTRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotStateRTSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["time_stamp"] !== "number" || !Number.isFinite(value["time_stamp"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["actual_joint_position"]) || value["actual_joint_position"].length !== 6)
        bad();
    for(const element of value["actual_joint_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_joint_position_abs"]) || value["actual_joint_position_abs"].length !== 6)
        bad();
    for(const element of value["actual_joint_position_abs"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_joint_velocity"]) || value["actual_joint_velocity"].length !== 6)
        bad();
    for(const element of value["actual_joint_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_joint_velocity_abs"]) || value["actual_joint_velocity_abs"].length !== 6)
        bad();
    for(const element of value["actual_joint_velocity_abs"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_tcp_position"]) || value["actual_tcp_position"].length !== 6)
        bad();
    for(const element of value["actual_tcp_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_tcp_velocity"]) || value["actual_tcp_velocity"].length !== 6)
        bad();
    for(const element of value["actual_tcp_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_flange_position"]) || value["actual_flange_position"].length !== 6)
        bad();
    for(const element of value["actual_flange_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_flange_velocity"]) || value["actual_flange_velocity"].length !== 6)
        bad();
    for(const element of value["actual_flange_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_motor_torque"]) || value["actual_motor_torque"].length !== 6)
        bad();
    for(const element of value["actual_motor_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_joint_torque"]) || value["actual_joint_torque"].length !== 6)
        bad();
    for(const element of value["actual_joint_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["raw_joint_torque"]) || value["raw_joint_torque"].length !== 6)
        bad();
    for(const element of value["raw_joint_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["raw_force_torque"]) || value["raw_force_torque"].length !== 6)
        bad();
    for(const element of value["raw_force_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["external_joint_torque"]) || value["external_joint_torque"].length !== 6)
        bad();
    for(const element of value["external_joint_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["external_tcp_force"]) || value["external_tcp_force"].length !== 6)
        bad();
    for(const element of value["external_tcp_force"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_joint_position"]) || value["target_joint_position"].length !== 6)
        bad();
    for(const element of value["target_joint_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_joint_velocity"]) || value["target_joint_velocity"].length !== 6)
        bad();
    for(const element of value["target_joint_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_joint_acceleration"]) || value["target_joint_acceleration"].length !== 6)
        bad();
    for(const element of value["target_joint_acceleration"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_motor_torque"]) || value["target_motor_torque"].length !== 6)
        bad();
    for(const element of value["target_motor_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_tcp_position"]) || value["target_tcp_position"].length !== 6)
        bad();
    for(const element of value["target_tcp_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_tcp_velocity"]) || value["target_tcp_velocity"].length !== 6)
        bad();
    for(const element of value["target_tcp_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["jacobian_matrix"]) || value["jacobian_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["jacobian_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["gravity_torque"]) || value["gravity_torque"].length !== 6)
        bad();
    for(const element of value["gravity_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["coriolis_matrix"]) || value["coriolis_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["coriolis_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["mass_matrix"]) || value["mass_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["mass_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    integer(value["solution_space"], 2, false);
    n = addSize(n, 2);
    if(typeof value["singularity"] !== "number" || !Number.isFinite(value["singularity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["operation_speed_rate"] !== "number" || !Number.isFinite(value["operation_speed_rate"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["joint_temperature"]) || value["joint_temperature"].length !== 6)
        bad();
    for(const element of value["joint_temperature"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["controller_digital_input"], 2, false);
    n = addSize(n, 2);
    integer(value["controller_digital_output"], 2, false);
    n = addSize(n, 2);
    if(!Array.isArray(value["controller_analog_input_type"]) || value["controller_analog_input_type"].length !== 2)
        bad();
    for(const element of value["controller_analog_input_type"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["controller_analog_input"]) || value["controller_analog_input"].length !== 2)
        bad();
    for(const element of value["controller_analog_input"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["controller_analog_output_type"]) || value["controller_analog_output_type"].length !== 2)
        bad();
    for(const element of value["controller_analog_output_type"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["controller_analog_output"]) || value["controller_analog_output"].length !== 2)
        bad();
    for(const element of value["controller_analog_output"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["flange_digital_input"], 1, false);
    n = addSize(n, 1);
    integer(value["flange_digital_output"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["flange_analog_input"]) || value["flange_analog_input"].length !== 4)
        bad();
    for(const element of value["flange_analog_input"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["external_encoder_strobe_count"]) || value["external_encoder_strobe_count"].length !== 2)
        bad();
    for(const element of value["external_encoder_strobe_count"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["external_encoder_count"]) || value["external_encoder_count"].length !== 2)
        bad();
    for(const element of value["external_encoder_count"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["goal_joint_position"]) || value["goal_joint_position"].length !== 6)
        bad();
    for(const element of value["goal_joint_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["goal_tcp_position"]) || value["goal_tcp_position"].length !== 6)
        bad();
    for(const element of value["goal_tcp_position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["robot_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["robot_state"], 1, false);
    n = addSize(n, 1);
    integer(value["control_mode"], 2, false);
    n = addSize(n, 2);
    if(!Array.isArray(value["reserved"]) || value["reserved"].length !== 256)
        bad();
    for(const element of value["reserved"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 8154)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotStateRTWrite(value, w)
{
    w.v.setFloat64(w.at, value["time_stamp"], true);
    w.at += 8;
    for(const element of value["actual_joint_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_joint_position_abs"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_joint_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_joint_velocity_abs"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_tcp_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_tcp_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_flange_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_flange_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_motor_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_joint_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["raw_joint_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["raw_force_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["external_joint_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["external_tcp_force"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_joint_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_joint_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_joint_acceleration"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_motor_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_tcp_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_tcp_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["jacobian_matrix"].length, true);
    w.at += 4;
    for(const element of value["jacobian_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["gravity_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["coriolis_matrix"].length, true);
    w.at += 4;
    for(const element of value["coriolis_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setUint32(w.at, value["mass_matrix"].length, true);
    w.at += 4;
    for(const element of value["mass_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setUint16(w.at, value["solution_space"], true);
    w.at += 2;
    w.v.setFloat64(w.at, value["singularity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["operation_speed_rate"], true);
    w.at += 8;
    for(const element of value["joint_temperature"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint16(w.at, value["controller_digital_input"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["controller_digital_output"], true);
    w.at += 2;
    for(const element of value["controller_analog_input_type"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["controller_analog_input"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["controller_analog_output_type"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["controller_analog_output"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["flange_digital_input"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["flange_digital_output"], true);
    w.at += 1;
    for(const element of value["flange_analog_input"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["external_encoder_strobe_count"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["external_encoder_count"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["goal_joint_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["goal_tcp_position"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["robot_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["robot_state"], true);
    w.at += 1;
    w.v.setUint16(w.at, value["control_mode"], true);
    w.at += 2;
    for(const element of value["reserved"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Dsr_msgsRobotStateRTRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time_stamp"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_joint_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_joint_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_joint_position_abs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_joint_position_abs"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_joint_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_joint_velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_joint_velocity_abs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_joint_velocity_abs"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_tcp_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_tcp_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_tcp_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_tcp_velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_flange_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_flange_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_flange_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_flange_velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_motor_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_motor_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_joint_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_joint_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["raw_joint_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["raw_joint_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["raw_force_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["raw_force_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["external_joint_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["external_joint_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["external_tcp_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["external_tcp_force"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_joint_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_joint_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_joint_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_joint_velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_joint_acceleration"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_joint_acceleration"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_motor_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_motor_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_tcp_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_tcp_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_tcp_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_tcp_velocity"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["jacobian_matrix"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["jacobian_matrix"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["gravity_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["gravity_torque"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["coriolis_matrix"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["coriolis_matrix"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["mass_matrix"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["mass_matrix"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["solution_space"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["singularity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["operation_speed_rate"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_temperature"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_temperature"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["controller_digital_input"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["controller_digital_output"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["controller_analog_input_type"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["controller_analog_input_type"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["controller_analog_input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["controller_analog_input"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["controller_analog_output_type"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["controller_analog_output_type"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["controller_analog_output"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["controller_analog_output"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["flange_digital_input"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["flange_digital_output"] = decoded;
    }
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["flange_analog_input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["flange_analog_input"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["external_encoder_strobe_count"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["external_encoder_strobe_count"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["external_encoder_count"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["external_encoder_count"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["goal_joint_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["goal_joint_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["goal_tcp_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["goal_tcp_position"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["robot_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["robot_state"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["control_mode"] = decoded;
    }
    {
        {
            const count = 256;
            if(count > 256)
                bad();
            value["reserved"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["reserved"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsRobotStateRTCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["time_stamp"];
        out["time_stamp"] = field;
    }
    {
        const field = value["actual_joint_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_joint_position"] = values;
    }
    {
        const field = value["actual_joint_position_abs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_joint_position_abs"] = values;
    }
    {
        const field = value["actual_joint_velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_joint_velocity"] = values;
    }
    {
        const field = value["actual_joint_velocity_abs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_joint_velocity_abs"] = values;
    }
    {
        const field = value["actual_tcp_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_tcp_position"] = values;
    }
    {
        const field = value["actual_tcp_velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_tcp_velocity"] = values;
    }
    {
        const field = value["actual_flange_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_flange_position"] = values;
    }
    {
        const field = value["actual_flange_velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_flange_velocity"] = values;
    }
    {
        const field = value["actual_motor_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_motor_torque"] = values;
    }
    {
        const field = value["actual_joint_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_joint_torque"] = values;
    }
    {
        const field = value["raw_joint_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["raw_joint_torque"] = values;
    }
    {
        const field = value["raw_force_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["raw_force_torque"] = values;
    }
    {
        const field = value["external_joint_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_joint_torque"] = values;
    }
    {
        const field = value["external_tcp_force"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_tcp_force"] = values;
    }
    {
        const field = value["target_joint_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_joint_position"] = values;
    }
    {
        const field = value["target_joint_velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_joint_velocity"] = values;
    }
    {
        const field = value["target_joint_acceleration"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_joint_acceleration"] = values;
    }
    {
        const field = value["target_motor_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_motor_torque"] = values;
    }
    {
        const field = value["target_tcp_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_tcp_position"] = values;
    }
    {
        const field = value["target_tcp_velocity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_tcp_velocity"] = values;
    }
    {
        const field = value["jacobian_matrix"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["jacobian_matrix"] = values;
    }
    {
        const field = value["gravity_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["gravity_torque"] = values;
    }
    {
        const field = value["coriolis_matrix"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["coriolis_matrix"] = values;
    }
    {
        const field = value["mass_matrix"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["mass_matrix"] = values;
    }
    {
        const field = value["solution_space"];
        out["solution_space"] = field;
    }
    {
        const field = value["singularity"];
        out["singularity"] = field;
    }
    {
        const field = value["operation_speed_rate"];
        out["operation_speed_rate"] = field;
    }
    {
        const field = value["joint_temperature"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_temperature"] = values;
    }
    {
        const field = value["controller_digital_input"];
        out["controller_digital_input"] = field;
    }
    {
        const field = value["controller_digital_output"];
        out["controller_digital_output"] = field;
    }
    {
        const field = value["controller_analog_input_type"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["controller_analog_input_type"] = values;
    }
    {
        const field = value["controller_analog_input"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["controller_analog_input"] = values;
    }
    {
        const field = value["controller_analog_output_type"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["controller_analog_output_type"] = values;
    }
    {
        const field = value["controller_analog_output"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["controller_analog_output"] = values;
    }
    {
        const field = value["flange_digital_input"];
        out["flange_digital_input"] = field;
    }
    {
        const field = value["flange_digital_output"];
        out["flange_digital_output"] = field;
    }
    {
        const field = value["flange_analog_input"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["flange_analog_input"] = values;
    }
    {
        const field = value["external_encoder_strobe_count"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_encoder_strobe_count"] = values;
    }
    {
        const field = value["external_encoder_count"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_encoder_count"] = values;
    }
    {
        const field = value["goal_joint_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["goal_joint_position"] = values;
    }
    {
        const field = value["goal_tcp_position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["goal_tcp_position"] = values;
    }
    {
        const field = value["robot_mode"];
        out["robot_mode"] = field;
    }
    {
        const field = value["robot_state"];
        out["robot_state"] = field;
    }
    {
        const field = value["control_mode"];
        out["control_mode"] = field;
    }
    {
        const field = value["reserved"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 256)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["reserved"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReadDataRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReadDataRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda",
    maxWireBytes : 8154,
    minWireBytes : 1530,
    cartesianMaxWireBytes : 8154n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : Ros1Dsr_msgsRobotStateRTCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Dsr_msgsReadDataRTResponseSize(Ros1Dsr_msgsReadDataRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReadDataRTResponseCapture(value), n = Ros1Dsr_msgsReadDataRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReadDataRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8154, 90);
        if(owned.length < 1530)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReadDataRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReadDataRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Dsr_msgsRobotStateRTSize(value["data"]));
    if(n > 8154)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReadDataRTResponseWrite(value, w)
{
    Ros1Dsr_msgsRobotStateRTWrite(value["data"], w);
}

function Ros1Dsr_msgsReadDataRTResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Dsr_msgsRobotStateRTRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsReadDataRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = Ros1Dsr_msgsRobotStateRTCapture(field);
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReleaseComplianceCtrlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseComplianceCtrlRequestSize(Ros1Dsr_msgsReleaseComplianceCtrlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseComplianceCtrlRequestCapture(value), n = Ros1Dsr_msgsReleaseComplianceCtrlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseComplianceCtrlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseComplianceCtrlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseComplianceCtrlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseComplianceCtrlRequestWrite(value, w)
{
}

function Ros1Dsr_msgsReleaseComplianceCtrlRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsReleaseComplianceCtrlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/ReleaseComplianceCtrlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseComplianceCtrlResponseSize(Ros1Dsr_msgsReleaseComplianceCtrlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseComplianceCtrlResponseCapture(value), n = Ros1Dsr_msgsReleaseComplianceCtrlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseComplianceCtrlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseComplianceCtrlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseComplianceCtrlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseComplianceCtrlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsReleaseComplianceCtrlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsReleaseComplianceCtrlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReleaseForceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseForceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseForceRequestSize(Ros1Dsr_msgsReleaseForceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseForceRequestCapture(value), n = Ros1Dsr_msgsReleaseForceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseForceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseForceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseForceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseForceRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsReleaseForceRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsReleaseForceRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/ReleaseForceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseForceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseForceResponseSize(Ros1Dsr_msgsReleaseForceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseForceResponseCapture(value), n = Ros1Dsr_msgsReleaseForceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseForceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseForceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseForceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseForceResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsReleaseForceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsReleaseForceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReleaseProtectiveStopRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseProtectiveStopRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"release_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseProtectiveStopRequestSize(Ros1Dsr_msgsReleaseProtectiveStopRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseProtectiveStopRequestCapture(value), n = Ros1Dsr_msgsReleaseProtectiveStopRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseProtectiveStopRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseProtectiveStopRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseProtectiveStopRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["release_mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseProtectiveStopRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["release_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsReleaseProtectiveStopRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["release_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsReleaseProtectiveStopRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["release_mode"];
        out["release_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ReleaseProtectiveStopResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsReleaseProtectiveStopResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsReleaseProtectiveStopResponseSize(Ros1Dsr_msgsReleaseProtectiveStopResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsReleaseProtectiveStopResponseCapture(value), n = Ros1Dsr_msgsReleaseProtectiveStopResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsReleaseProtectiveStopResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsReleaseProtectiveStopResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsReleaseProtectiveStopResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsReleaseProtectiveStopResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsReleaseProtectiveStopResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsReleaseProtectiveStopResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ResetWorkpieceWeightRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsResetWorkpieceWeightRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsResetWorkpieceWeightRequestSize(Ros1Dsr_msgsResetWorkpieceWeightRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsResetWorkpieceWeightRequestCapture(value), n = Ros1Dsr_msgsResetWorkpieceWeightRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsResetWorkpieceWeightRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsResetWorkpieceWeightRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsResetWorkpieceWeightRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsResetWorkpieceWeightRequestWrite(value, w)
{
}

function Ros1Dsr_msgsResetWorkpieceWeightRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsResetWorkpieceWeightRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/ResetWorkpieceWeightResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsResetWorkpieceWeightResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsResetWorkpieceWeightResponseSize(Ros1Dsr_msgsResetWorkpieceWeightResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsResetWorkpieceWeightResponseCapture(value), n = Ros1Dsr_msgsResetWorkpieceWeightResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsResetWorkpieceWeightResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsResetWorkpieceWeightResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsResetWorkpieceWeightResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsResetWorkpieceWeightResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsResetWorkpieceWeightResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsResetWorkpieceWeightResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/RobotError codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotErrorCodec = Object.freeze({
    codecIdentity : "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641",
    maxWireBytes : 792,
    minWireBytes : 24,
    cartesianMaxWireBytes : 792n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"level" : 0, "group" : 0, "code" : 0, "msg1" : "", "msg2" : "", "msg3" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotErrorSize(Ros1Dsr_msgsRobotErrorCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotErrorCapture(value), n = Ros1Dsr_msgsRobotErrorSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotErrorWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 792, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotErrorRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotErrorSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["level"], 4, true);
    n = addSize(n, 4);
    integer(value["group"], 4, true);
    n = addSize(n, 4);
    integer(value["code"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["msg1"], 256).length);
    n = addSize(n, 4 + textBytes(value["msg2"], 256).length);
    n = addSize(n, 4 + textBytes(value["msg3"], 256).length);
    if(n > 792)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotErrorWrite(value, w)
{
    w.v.setInt32(w.at, value["level"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["group"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["code"], true);
    w.at += 4;
    w.text(value["msg1"], 256);
    w.text(value["msg2"], 256);
    w.text(value["msg3"], 256);
}

function Ros1Dsr_msgsRobotErrorRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["level"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["group"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["code"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["msg1"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["msg2"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["msg3"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsRobotErrorCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["level"];
        out["level"] = field;
    }
    {
        const field = value["group"];
        out["group"] = field;
    }
    {
        const field = value["code"];
        out["code"] = field;
    }
    {
        const field = value["msg1"];
        out["msg1"] = field;
    }
    {
        const field = value["msg2"];
        out["msg2"] = field;
    }
    {
        const field = value["msg3"];
        out["msg3"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/RobotState codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456",
    maxWireBytes : 17004,
    minWireBytes : 1484,
    cartesianMaxWireBytes : 17004n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "robot_state" : 0,
            "robot_state_str" : "",
            "actual_mode" : 0,
            "actual_space" : 0,
            "current_posj" : Array.from({length : 6}, () => (0)),
            "current_velj" : Array.from({length : 6}, () => (0)),
            "joint_abs" : Array.from({length : 6}, () => (0)),
            "joint_err" : Array.from({length : 6}, () => (0)),
            "target_posj" : Array.from({length : 6}, () => (0)),
            "target_velj" : Array.from({length : 6}, () => (0)),
            "current_posx" : Array.from({length : 6}, () => (0)),
            "current_tool_posx" : Array.from({length : 6}, () => (0)),
            "current_velx" : Array.from({length : 6}, () => (0)),
            "task_err" : Array.from({length : 6}, () => (0)),
            "target_velx" : Array.from({length : 6}, () => (0)),
            "target_posx" : Array.from({length : 6}, () => (0)),
            "dynamic_tor" : Array.from({length : 6}, () => (0)),
            "actual_jts" : Array.from({length : 6}, () => (0)),
            "actual_ejt" : Array.from({length : 6}, () => (0)),
            "actual_ett" : Array.from({length : 6}, () => (0)),
            "actual_bk" : Array.from({length : 6}, () => (0)),
            "actual_mc" : Array.from({length : 6}, () => (0)),
            "actual_mt" : Array.from({length : 6}, () => (0)),
            "solution_space" : 0,
            "sync_time" : 0,
            "actual_bt" : Array.from({length : 5}, () => (0)),
            "rotation_matrix" : [],
            "ctrlbox_digital_input" : Array.from({length : 16}, () => (0)),
            "ctrlbox_digital_output" : Array.from({length : 16}, () => (0)),
            "flange_digital_input" : Array.from({length : 6}, () => (0)),
            "flange_digital_output" : Array.from({length : 6}, () => (0)),
            "modbus_state" : [],
            "access_control" : 0,
            "homming_completed" : false,
            "tp_initialized" : false,
            "mastering_need" : 0,
            "drl_stopped" : false,
            "disconnected" : false,
            "fActualW2B" : Array.from({length : 6}, () => (0)),
            "fCurrentPosW" : [],
            "fCurrentVelW" : Array.from({length : 6}, () => (0)),
            "fWorldETT" : Array.from({length : 6}, () => (0)),
            "fTargetPosW" : Array.from({length : 6}, () => (0)),
            "fTargetVelW" : Array.from({length : 6}, () => (0)),
            "fRotationMatrixWorld" : [],
            "iActualUCN" : 0,
            "iParent" : 0,
            "fCurrentPosU" : [],
            "fCurrentVelU" : Array.from({length : 6}, () => (0)),
            "fUserETT" : Array.from({length : 6}, () => (0)),
            "fTargetPosU" : Array.from({length : 6}, () => (0)),
            "fTargetVelU" : Array.from({length : 6}, () => (0)),
            "fRotationMatrixUser" : [],
            "fActualAI" : Array.from({length : 6}, () => (0)),
            "bActualSW" : Array.from({length : 3}, () => (false)),
            "bActualSI" : Array.from({length : 2}, () => (false)),
            "iActualAT" : Array.from({length : 2}, () => (0)),
            "fTargetAO" : Array.from({length : 2}, () => (0)),
            "iTargetAT" : Array.from({length : 2}, () => (0)),
            "bActualES" : Array.from({length : 2}, () => (false)),
            "iActualED" : Array.from({length : 2}, () => (0)),
            "bActualER" : Array.from({length : 2}, () => (false))
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotStateSize(Ros1Dsr_msgsRobotStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotStateCapture(value), n = Ros1Dsr_msgsRobotStateSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17004, 90);
        if(owned.length < 1484)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_state"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["robot_state_str"], 256).length);
    integer(value["actual_mode"], 1, true);
    n = addSize(n, 1);
    integer(value["actual_space"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["current_posj"]) || value["current_posj"].length !== 6)
        bad();
    for(const element of value["current_posj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["current_velj"]) || value["current_velj"].length !== 6)
        bad();
    for(const element of value["current_velj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["joint_abs"]) || value["joint_abs"].length !== 6)
        bad();
    for(const element of value["joint_abs"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["joint_err"]) || value["joint_err"].length !== 6)
        bad();
    for(const element of value["joint_err"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_posj"]) || value["target_posj"].length !== 6)
        bad();
    for(const element of value["target_posj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_velj"]) || value["target_velj"].length !== 6)
        bad();
    for(const element of value["target_velj"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["current_posx"]) || value["current_posx"].length !== 6)
        bad();
    for(const element of value["current_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["current_tool_posx"]) || value["current_tool_posx"].length !== 6)
        bad();
    for(const element of value["current_tool_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["current_velx"]) || value["current_velx"].length !== 6)
        bad();
    for(const element of value["current_velx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["task_err"]) || value["task_err"].length !== 6)
        bad();
    for(const element of value["task_err"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_velx"]) || value["target_velx"].length !== 6)
        bad();
    for(const element of value["target_velx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["target_posx"]) || value["target_posx"].length !== 6)
        bad();
    for(const element of value["target_posx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dynamic_tor"]) || value["dynamic_tor"].length !== 6)
        bad();
    for(const element of value["dynamic_tor"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_jts"]) || value["actual_jts"].length !== 6)
        bad();
    for(const element of value["actual_jts"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_ejt"]) || value["actual_ejt"].length !== 6)
        bad();
    for(const element of value["actual_ejt"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_ett"]) || value["actual_ett"].length !== 6)
        bad();
    for(const element of value["actual_ett"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_bk"]) || value["actual_bk"].length !== 6)
        bad();
    for(const element of value["actual_bk"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["actual_mc"]) || value["actual_mc"].length !== 6)
        bad();
    for(const element of value["actual_mc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["actual_mt"]) || value["actual_mt"].length !== 6)
        bad();
    for(const element of value["actual_mt"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["solution_space"], 1, true);
    n = addSize(n, 1);
    if(typeof value["sync_time"] !== "number" || !Number.isFinite(value["sync_time"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["actual_bt"]) || value["actual_bt"].length !== 5)
        bad();
    for(const element of value["actual_bt"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["rotation_matrix"]) || value["rotation_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["rotation_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["ctrlbox_digital_input"]) || value["ctrlbox_digital_input"].length !== 16)
        bad();
    for(const element of value["ctrlbox_digital_input"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["ctrlbox_digital_output"]) || value["ctrlbox_digital_output"].length !== 16)
        bad();
    for(const element of value["ctrlbox_digital_output"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["flange_digital_input"]) || value["flange_digital_input"].length !== 6)
        bad();
    for(const element of value["flange_digital_input"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["flange_digital_output"]) || value["flange_digital_output"].length !== 6)
        bad();
    for(const element of value["flange_digital_output"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["modbus_state"]) || value["modbus_state"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["modbus_state"])
    {
        n = addSize(n, Ros1Dsr_msgsModbusStateSize(element));
    }
    integer(value["access_control"], 4, true);
    n = addSize(n, 4);
    if(typeof value["homming_completed"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["tp_initialized"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["mastering_need"], 1, true);
    n = addSize(n, 1);
    if(typeof value["drl_stopped"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["disconnected"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["fActualW2B"]) || value["fActualW2B"].length !== 6)
        bad();
    for(const element of value["fActualW2B"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fCurrentPosW"]) || value["fCurrentPosW"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["fCurrentPosW"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["fCurrentVelW"]) || value["fCurrentVelW"].length !== 6)
        bad();
    for(const element of value["fCurrentVelW"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fWorldETT"]) || value["fWorldETT"].length !== 6)
        bad();
    for(const element of value["fWorldETT"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fTargetPosW"]) || value["fTargetPosW"].length !== 6)
        bad();
    for(const element of value["fTargetPosW"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fTargetVelW"]) || value["fTargetVelW"].length !== 6)
        bad();
    for(const element of value["fTargetVelW"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fRotationMatrixWorld"]) || value["fRotationMatrixWorld"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["fRotationMatrixWorld"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    integer(value["iActualUCN"], 1, true);
    n = addSize(n, 1);
    integer(value["iParent"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["fCurrentPosU"]) || value["fCurrentPosU"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["fCurrentPosU"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["fCurrentVelU"]) || value["fCurrentVelU"].length !== 6)
        bad();
    for(const element of value["fCurrentVelU"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fUserETT"]) || value["fUserETT"].length !== 6)
        bad();
    for(const element of value["fUserETT"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fTargetPosU"]) || value["fTargetPosU"].length !== 6)
        bad();
    for(const element of value["fTargetPosU"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fTargetVelU"]) || value["fTargetVelU"].length !== 6)
        bad();
    for(const element of value["fTargetVelU"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["fRotationMatrixUser"]) || value["fRotationMatrixUser"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["fRotationMatrixUser"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
    }
    if(!Array.isArray(value["fActualAI"]) || value["fActualAI"].length !== 6)
        bad();
    for(const element of value["fActualAI"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["bActualSW"]) || value["bActualSW"].length !== 3)
        bad();
    for(const element of value["bActualSW"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["bActualSI"]) || value["bActualSI"].length !== 2)
        bad();
    for(const element of value["bActualSI"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["iActualAT"]) || value["iActualAT"].length !== 2)
        bad();
    for(const element of value["iActualAT"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["fTargetAO"]) || value["fTargetAO"].length !== 2)
        bad();
    for(const element of value["fTargetAO"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["iTargetAT"]) || value["iTargetAT"].length !== 2)
        bad();
    for(const element of value["iTargetAT"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["bActualES"]) || value["bActualES"].length !== 2)
        bad();
    for(const element of value["bActualES"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["iActualED"]) || value["iActualED"].length !== 2)
        bad();
    for(const element of value["iActualED"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["bActualER"]) || value["bActualER"].length !== 2)
        bad();
    for(const element of value["bActualER"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(n > 17004)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotStateWrite(value, w)
{
    w.v.setInt32(w.at, value["robot_state"], true);
    w.at += 4;
    w.text(value["robot_state_str"], 256);
    w.v.setInt8(w.at, value["actual_mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["actual_space"], true);
    w.at += 1;
    for(const element of value["current_posj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["current_velj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["joint_abs"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["joint_err"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_posj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_velj"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["current_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["current_tool_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["current_velx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["task_err"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_velx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["target_posx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["dynamic_tor"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_jts"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_ejt"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_ett"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_bk"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["actual_mc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["actual_mt"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["solution_space"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["sync_time"], true);
    w.at += 8;
    for(const element of value["actual_bt"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["rotation_matrix"].length, true);
    w.at += 4;
    for(const element of value["rotation_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["ctrlbox_digital_input"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["ctrlbox_digital_output"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["flange_digital_input"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["flange_digital_output"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["modbus_state"].length, true);
    w.at += 4;
    for(const element of value["modbus_state"])
    {
        Ros1Dsr_msgsModbusStateWrite(element, w);
    }
    w.v.setInt32(w.at, value["access_control"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["homming_completed"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["tp_initialized"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt8(w.at, value["mastering_need"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["drl_stopped"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["disconnected"] ? 1 : 0, true);
    w.at += 1;
    for(const element of value["fActualW2B"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["fCurrentPosW"].length, true);
    w.at += 4;
    for(const element of value["fCurrentPosW"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["fCurrentVelW"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fWorldETT"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fTargetPosW"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fTargetVelW"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["fRotationMatrixWorld"].length, true);
    w.at += 4;
    for(const element of value["fRotationMatrixWorld"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    w.v.setInt8(w.at, value["iActualUCN"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["iParent"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["fCurrentPosU"].length, true);
    w.at += 4;
    for(const element of value["fCurrentPosU"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["fCurrentVelU"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fUserETT"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fTargetPosU"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["fTargetVelU"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["fRotationMatrixUser"].length, true);
    w.at += 4;
    for(const element of value["fRotationMatrixUser"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
    }
    for(const element of value["fActualAI"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["bActualSW"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
    for(const element of value["bActualSI"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
    for(const element of value["iActualAT"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["fTargetAO"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["iTargetAT"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["bActualES"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
    for(const element of value["iActualED"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["bActualER"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
}

function Ros1Dsr_msgsRobotStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["robot_state"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_state_str"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["actual_mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["actual_space"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["current_posj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_posj"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["current_velj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_velj"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_abs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_abs"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_err"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_posj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_posj"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_velj"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_velj"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["current_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_posx"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["current_tool_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_tool_posx"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["current_velx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["current_velx"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["task_err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["task_err"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_velx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_velx"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["target_posx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target_posx"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["dynamic_tor"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["dynamic_tor"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_jts"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_jts"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_ejt"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_ejt"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_ett"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_ett"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_bk"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["actual_bk"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_mc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_mc"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["actual_mt"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["actual_mt"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["solution_space"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["sync_time"] = decoded;
    }
    {
        {
            const count = 5;
            if(count > 5)
                bad();
            value["actual_bt"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["actual_bt"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["rotation_matrix"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["rotation_matrix"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["ctrlbox_digital_input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["ctrlbox_digital_input"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["ctrlbox_digital_output"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["ctrlbox_digital_output"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["flange_digital_input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["flange_digital_input"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["flange_digital_output"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["flange_digital_output"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["modbus_state"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Dsr_msgsModbusStateRead(r);
                value["modbus_state"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["access_control"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["homming_completed"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["tp_initialized"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mastering_need"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["drl_stopped"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["disconnected"] = decoded !== 0;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fActualW2B"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fActualW2B"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["fCurrentPosW"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["fCurrentPosW"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fCurrentVelW"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fCurrentVelW"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fWorldETT"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fWorldETT"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fTargetPosW"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fTargetPosW"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fTargetVelW"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fTargetVelW"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["fRotationMatrixWorld"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["fRotationMatrixWorld"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["iActualUCN"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["iParent"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["fCurrentPosU"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["fCurrentPosU"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fCurrentVelU"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fCurrentVelU"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fUserETT"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fUserETT"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fTargetPosU"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fTargetPosU"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fTargetVelU"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fTargetVelU"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 6)
                bad();
            value["fRotationMatrixUser"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Std_msgsFloat64MultiArrayRead(r);
                value["fRotationMatrixUser"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fActualAI"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fActualAI"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["bActualSW"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["bActualSW"].push(decoded !== 0);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["bActualSI"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["bActualSI"].push(decoded !== 0);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["iActualAT"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["iActualAT"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["fTargetAO"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fTargetAO"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["iTargetAT"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["iTargetAT"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["bActualES"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["bActualES"].push(decoded !== 0);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["iActualED"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["iActualED"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["bActualER"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["bActualER"].push(decoded !== 0);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsRobotStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_state"];
        out["robot_state"] = field;
    }
    {
        const field = value["robot_state_str"];
        out["robot_state_str"] = field;
    }
    {
        const field = value["actual_mode"];
        out["actual_mode"] = field;
    }
    {
        const field = value["actual_space"];
        out["actual_space"] = field;
    }
    {
        const field = value["current_posj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current_posj"] = values;
    }
    {
        const field = value["current_velj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current_velj"] = values;
    }
    {
        const field = value["joint_abs"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_abs"] = values;
    }
    {
        const field = value["joint_err"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["joint_err"] = values;
    }
    {
        const field = value["target_posj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_posj"] = values;
    }
    {
        const field = value["target_velj"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_velj"] = values;
    }
    {
        const field = value["current_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current_posx"] = values;
    }
    {
        const field = value["current_tool_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current_tool_posx"] = values;
    }
    {
        const field = value["current_velx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current_velx"] = values;
    }
    {
        const field = value["task_err"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["task_err"] = values;
    }
    {
        const field = value["target_velx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_velx"] = values;
    }
    {
        const field = value["target_posx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target_posx"] = values;
    }
    {
        const field = value["dynamic_tor"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dynamic_tor"] = values;
    }
    {
        const field = value["actual_jts"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_jts"] = values;
    }
    {
        const field = value["actual_ejt"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_ejt"] = values;
    }
    {
        const field = value["actual_ett"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_ett"] = values;
    }
    {
        const field = value["actual_bk"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_bk"] = values;
    }
    {
        const field = value["actual_mc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_mc"] = values;
    }
    {
        const field = value["actual_mt"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_mt"] = values;
    }
    {
        const field = value["solution_space"];
        out["solution_space"] = field;
    }
    {
        const field = value["sync_time"];
        out["sync_time"] = field;
    }
    {
        const field = value["actual_bt"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 5)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["actual_bt"] = values;
    }
    {
        const field = value["rotation_matrix"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["rotation_matrix"] = values;
    }
    {
        const field = value["ctrlbox_digital_input"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ctrlbox_digital_input"] = values;
    }
    {
        const field = value["ctrlbox_digital_output"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ctrlbox_digital_output"] = values;
    }
    {
        const field = value["flange_digital_input"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["flange_digital_input"] = values;
    }
    {
        const field = value["flange_digital_output"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["flange_digital_output"] = values;
    }
    {
        const field = value["modbus_state"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Dsr_msgsModbusStateCapture(element);
        }
        out["modbus_state"] = values;
    }
    {
        const field = value["access_control"];
        out["access_control"] = field;
    }
    {
        const field = value["homming_completed"];
        out["homming_completed"] = field;
    }
    {
        const field = value["tp_initialized"];
        out["tp_initialized"] = field;
    }
    {
        const field = value["mastering_need"];
        out["mastering_need"] = field;
    }
    {
        const field = value["drl_stopped"];
        out["drl_stopped"] = field;
    }
    {
        const field = value["disconnected"];
        out["disconnected"] = field;
    }
    {
        const field = value["fActualW2B"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fActualW2B"] = values;
    }
    {
        const field = value["fCurrentPosW"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["fCurrentPosW"] = values;
    }
    {
        const field = value["fCurrentVelW"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fCurrentVelW"] = values;
    }
    {
        const field = value["fWorldETT"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fWorldETT"] = values;
    }
    {
        const field = value["fTargetPosW"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fTargetPosW"] = values;
    }
    {
        const field = value["fTargetVelW"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fTargetVelW"] = values;
    }
    {
        const field = value["fRotationMatrixWorld"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["fRotationMatrixWorld"] = values;
    }
    {
        const field = value["iActualUCN"];
        out["iActualUCN"] = field;
    }
    {
        const field = value["iParent"];
        out["iParent"] = field;
    }
    {
        const field = value["fCurrentPosU"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["fCurrentPosU"] = values;
    }
    {
        const field = value["fCurrentVelU"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fCurrentVelU"] = values;
    }
    {
        const field = value["fUserETT"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fUserETT"] = values;
    }
    {
        const field = value["fTargetPosU"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fTargetPosU"] = values;
    }
    {
        const field = value["fTargetVelU"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fTargetVelU"] = values;
    }
    {
        const field = value["fRotationMatrixUser"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Std_msgsFloat64MultiArrayCapture(element);
        }
        out["fRotationMatrixUser"] = values;
    }
    {
        const field = value["fActualAI"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fActualAI"] = values;
    }
    {
        const field = value["bActualSW"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["bActualSW"] = values;
    }
    {
        const field = value["bActualSI"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["bActualSI"] = values;
    }
    {
        const field = value["iActualAT"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["iActualAT"] = values;
    }
    {
        const field = value["fTargetAO"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fTargetAO"] = values;
    }
    {
        const field = value["iTargetAT"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["iTargetAT"] = values;
    }
    {
        const field = value["bActualES"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["bActualES"] = values;
    }
    {
        const field = value["iActualED"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["iActualED"] = values;
    }
    {
        const field = value["bActualER"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["bActualER"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/RobotStop codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotStopCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stop_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotStopSize(Ros1Dsr_msgsRobotStopCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotStopCapture(value), n = Ros1Dsr_msgsRobotStopSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotStopWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotStopRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotStopSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["stop_mode"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotStopWrite(value, w)
{
    w.v.setInt32(w.at, value["stop_mode"], true);
    w.at += 4;
}

function Ros1Dsr_msgsRobotStopRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["stop_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsRobotStopCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stop_mode"];
        out["stop_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FCloseRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FCloseRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FCloseRequestSize(Ros1Dsr_msgsRobotiq2FCloseRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FCloseRequestCapture(value), n = Ros1Dsr_msgsRobotiq2FCloseRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FCloseRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FCloseRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FCloseRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FCloseRequestWrite(value, w)
{
}

function Ros1Dsr_msgsRobotiq2FCloseRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsRobotiq2FCloseRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FCloseResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FCloseResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FCloseResponseSize(Ros1Dsr_msgsRobotiq2FCloseResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FCloseResponseCapture(value), n = Ros1Dsr_msgsRobotiq2FCloseResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FCloseResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FCloseResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FCloseResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FCloseResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsRobotiq2FCloseResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsRobotiq2FCloseResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FMoveRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"width" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FMoveRequestSize(Ros1Dsr_msgsRobotiq2FMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FMoveRequestCapture(value), n = Ros1Dsr_msgsRobotiq2FMoveRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FMoveRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["width"] !== "number" || !Number.isFinite(value["width"]))
        bad();
    n = addSize(n, 8);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FMoveRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["width"], true);
    w.at += 8;
}

function Ros1Dsr_msgsRobotiq2FMoveRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["width"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsRobotiq2FMoveRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["width"];
        out["width"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FMoveResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FMoveResponseSize(Ros1Dsr_msgsRobotiq2FMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FMoveResponseCapture(value), n = Ros1Dsr_msgsRobotiq2FMoveResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FMoveResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FMoveResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsRobotiq2FMoveResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsRobotiq2FMoveResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FOpenRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FOpenRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FOpenRequestSize(Ros1Dsr_msgsRobotiq2FOpenRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FOpenRequestCapture(value), n = Ros1Dsr_msgsRobotiq2FOpenRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FOpenRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FOpenRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FOpenRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FOpenRequestWrite(value, w)
{
}

function Ros1Dsr_msgsRobotiq2FOpenRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsRobotiq2FOpenRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/Robotiq2FOpenResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsRobotiq2FOpenResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsRobotiq2FOpenResponseSize(Ros1Dsr_msgsRobotiq2FOpenResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsRobotiq2FOpenResponseCapture(value), n = Ros1Dsr_msgsRobotiq2FOpenResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsRobotiq2FOpenResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsRobotiq2FOpenResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsRobotiq2FOpenResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsRobotiq2FOpenResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsRobotiq2FOpenResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsRobotiq2FOpenResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SerialSendDataRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSerialSendDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsSerialSendDataRequestSize(Ros1Dsr_msgsSerialSendDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSerialSendDataRequestCapture(value), n = Ros1Dsr_msgsSerialSendDataRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSerialSendDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSerialSendDataRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSerialSendDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["data"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSerialSendDataRequestWrite(value, w)
{
    w.text(value["data"], 256);
}

function Ros1Dsr_msgsSerialSendDataRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSerialSendDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SerialSendDataResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSerialSendDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSerialSendDataResponseSize(Ros1Dsr_msgsSerialSendDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSerialSendDataResponseCapture(value), n = Ros1Dsr_msgsSerialSendDataResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSerialSendDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSerialSendDataResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSerialSendDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSerialSendDataResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSerialSendDataResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSerialSendDataResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ServoJRTStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsServoJRTStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677",
    maxWireBytes : 152,
    minWireBytes : 152,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : Array.from({length : 6}, () => (0)),
            "acc" : Array.from({length : 6}, () => (0)),
            "time" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsServoJRTStreamSize(Ros1Dsr_msgsServoJRTStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsServoJRTStreamCapture(value), n = Ros1Dsr_msgsServoJRTStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsServoJRTStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 152)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsServoJRTStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsServoJRTStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 152)
        bad(90);
    return n;
}

function Ros1Dsr_msgsServoJRTStreamWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsServoJRTStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsServoJRTStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ServoJStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsServoJStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b",
    maxWireBytes : 152,
    minWireBytes : 152,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : Array.from({length : 6}, () => (0)),
            "acc" : Array.from({length : 6}, () => (0)),
            "time" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsServoJStreamSize(Ros1Dsr_msgsServoJStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsServoJStreamCapture(value), n = Ros1Dsr_msgsServoJStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsServoJStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 152)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsServoJStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsServoJStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 152)
        bad(90);
    return n;
}

function Ros1Dsr_msgsServoJStreamWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsServoJStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsServoJStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ServoLRTStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsServoLRTStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d",
    maxWireBytes : 152,
    minWireBytes : 152,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : Array.from({length : 6}, () => (0)),
            "acc" : Array.from({length : 6}, () => (0)),
            "time" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsServoLRTStreamSize(Ros1Dsr_msgsServoLRTStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsServoLRTStreamCapture(value), n = Ros1Dsr_msgsServoLRTStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsServoLRTStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 152)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsServoLRTStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsServoLRTStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 152)
        bad(90);
    return n;
}

function Ros1Dsr_msgsServoLRTStreamWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsServoLRTStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsServoLRTStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/ServoLStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsServoLStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8",
    maxWireBytes : 88,
    minWireBytes : 88,
    cartesianMaxWireBytes : 88n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos" : Array.from({length : 6}, () => (0)),
            "vel" : Array.from({length : 2}, () => (0)),
            "acc" : Array.from({length : 2}, () => (0)),
            "time" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsServoLStreamSize(Ros1Dsr_msgsServoLStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsServoLStreamCapture(value), n = Ros1Dsr_msgsServoLStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsServoLStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 88, 90);
        if(owned.length < 88)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsServoLStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsServoLStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 2)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 88)
        bad(90);
    return n;
}

function Ros1Dsr_msgsServoLStreamWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsServoLStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsServoLStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetAccJRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetAccJRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"acc" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetAccJRTRequestSize(Ros1Dsr_msgsSetAccJRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetAccJRTRequestCapture(value), n = Ros1Dsr_msgsSetAccJRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetAccJRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetAccJRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetAccJRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetAccJRTRequestWrite(value, w)
{
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsSetAccJRTRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsSetAccJRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetAccJRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetAccJRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetAccJRTResponseSize(Ros1Dsr_msgsSetAccJRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetAccJRTResponseCapture(value), n = Ros1Dsr_msgsSetAccJRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetAccJRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetAccJRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetAccJRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetAccJRTResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetAccJRTResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetAccJRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetAccXRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetAccXRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trans" : 0, "rotation" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetAccXRTRequestSize(Ros1Dsr_msgsSetAccXRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetAccXRTRequestCapture(value), n = Ros1Dsr_msgsSetAccXRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetAccXRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetAccXRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetAccXRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["trans"] !== "number" || !Number.isFinite(value["trans"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rotation"] !== "number" || !Number.isFinite(value["rotation"]))
        bad();
    n = addSize(n, 8);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetAccXRTRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["trans"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rotation"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSetAccXRTRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["trans"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rotation"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetAccXRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trans"];
        out["trans"] = field;
    }
    {
        const field = value["rotation"];
        out["rotation"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetAccXRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetAccXRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetAccXRTResponseSize(Ros1Dsr_msgsSetAccXRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetAccXRTResponseCapture(value), n = Ros1Dsr_msgsSetAccXRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetAccXRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetAccXRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetAccXRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetAccXRTResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetAccXRTResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetAccXRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogInputTypeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channel" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestSize(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["channel"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["channel"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["channel"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channel"];
        out["channel"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogInputTypeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseSize(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channel" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestSize(Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["channel"], 1, true);
    n = addSize(n, 1);
    if(typeof value["value"] !== "number" || !Number.isFinite(value["value"]))
        bad();
    n = addSize(n, 8);
    if(n > 9)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["channel"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["channel"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channel"];
        out["channel"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseSize(Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channel" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestSize(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["channel"], 1, true);
    n = addSize(n, 1);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["channel"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["channel"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channel"];
        out["channel"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseSize(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCapture(value), n = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseSize(owned),
              w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCtrlBoxDigitalOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestSize(Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCapture(value), n = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/SetCtrlBoxDigitalOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseSize(Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCapture(value), n = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCurrentTcpRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCurrentTcpRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCurrentTcpRequestSize(Ros1Dsr_msgsSetCurrentTcpRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCurrentTcpRequestCapture(value), n = Ros1Dsr_msgsSetCurrentTcpRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCurrentTcpRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCurrentTcpRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCurrentTcpRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCurrentTcpRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsSetCurrentTcpRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCurrentTcpRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCurrentTcpResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCurrentTcpResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCurrentTcpResponseSize(Ros1Dsr_msgsSetCurrentTcpResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCurrentTcpResponseCapture(value), n = Ros1Dsr_msgsSetCurrentTcpResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCurrentTcpResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCurrentTcpResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCurrentTcpResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCurrentTcpResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCurrentTcpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCurrentTcpResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCurrentToolRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCurrentToolRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCurrentToolRequestSize(Ros1Dsr_msgsSetCurrentToolRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCurrentToolRequestCapture(value), n = Ros1Dsr_msgsSetCurrentToolRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCurrentToolRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCurrentToolRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCurrentToolRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCurrentToolRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsSetCurrentToolRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetCurrentToolRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetCurrentToolResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetCurrentToolResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetCurrentToolResponseSize(Ros1Dsr_msgsSetCurrentToolResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetCurrentToolResponseCapture(value), n = Ros1Dsr_msgsSetCurrentToolResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetCurrentToolResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetCurrentToolResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetCurrentToolResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetCurrentToolResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetCurrentToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetCurrentToolResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetDesiredForceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetDesiredForceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a",
    maxWireBytes : 64,
    minWireBytes : 64,
    cartesianMaxWireBytes : 64n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"fd" : Array.from({length : 6}, () => (0)), "dir" : Array.from({length : 6}, () => (0)), "ref" : 0, "time" : 0, "mod" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetDesiredForceRequestSize(Ros1Dsr_msgsSetDesiredForceRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetDesiredForceRequestCapture(value), n = Ros1Dsr_msgsSetDesiredForceRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetDesiredForceRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 64, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetDesiredForceRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetDesiredForceRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["fd"]) || value["fd"].length !== 6)
        bad();
    for(const element of value["fd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dir"]) || value["dir"].length !== 6)
        bad();
    for(const element of value["dir"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["mod"], 1, true);
    n = addSize(n, 1);
    if(n > 64)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetDesiredForceRequestWrite(value, w)
{
    for(const element of value["fd"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["dir"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
    w.v.setInt8(w.at, value["mod"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetDesiredForceRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["fd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["fd"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["dir"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["dir"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mod"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetDesiredForceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["fd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["fd"] = values;
    }
    {
        const field = value["dir"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dir"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    {
        const field = value["mod"];
        out["mod"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetDesiredForceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetDesiredForceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetDesiredForceResponseSize(Ros1Dsr_msgsSetDesiredForceResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetDesiredForceResponseCapture(value), n = Ros1Dsr_msgsSetDesiredForceResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetDesiredForceResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetDesiredForceResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetDesiredForceResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetDesiredForceResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetDesiredForceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetDesiredForceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetModbusOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetModbusOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "value" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetModbusOutputRequestSize(Ros1Dsr_msgsSetModbusOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetModbusOutputRequestCapture(value), n = Ros1Dsr_msgsSetModbusOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetModbusOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetModbusOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetModbusOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    integer(value["value"], 4, true);
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetModbusOutputRequestWrite(value, w)
{
    w.text(value["name"], 256);
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dsr_msgsSetModbusOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetModbusOutputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetModbusOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetModbusOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetModbusOutputResponseSize(Ros1Dsr_msgsSetModbusOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetModbusOutputResponseCapture(value), n = Ros1Dsr_msgsSetModbusOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetModbusOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetModbusOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetModbusOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetModbusOutputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetModbusOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetModbusOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRTControlInputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRTControlInputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : "", "period" : 0, "loss" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRTControlInputRequestSize(Ros1Dsr_msgsSetRTControlInputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRTControlInputRequestCapture(value), n = Ros1Dsr_msgsSetRTControlInputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRTControlInputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRTControlInputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRTControlInputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(typeof value["period"] !== "number" || !Number.isFinite(value["period"]))
        bad();
    n = addSize(n, 8);
    integer(value["loss"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRTControlInputRequestWrite(value, w)
{
    w.text(value["version"], 256);
    w.v.setFloat64(w.at, value["period"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["loss"], true);
    w.at += 4;
}

function Ros1Dsr_msgsSetRTControlInputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["period"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["loss"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRTControlInputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    {
        const field = value["period"];
        out["period"] = field;
    }
    {
        const field = value["loss"];
        out["loss"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRTControlInputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRTControlInputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRTControlInputResponseSize(Ros1Dsr_msgsSetRTControlInputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRTControlInputResponseCapture(value), n = Ros1Dsr_msgsSetRTControlInputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRTControlInputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRTControlInputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRTControlInputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRTControlInputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRTControlInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRTControlInputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRTControlOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRTControlOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : "", "period" : 0, "loss" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRTControlOutputRequestSize(Ros1Dsr_msgsSetRTControlOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRTControlOutputRequestCapture(value), n = Ros1Dsr_msgsSetRTControlOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRTControlOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRTControlOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRTControlOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(typeof value["period"] !== "number" || !Number.isFinite(value["period"]))
        bad();
    n = addSize(n, 8);
    integer(value["loss"], 4, true);
    n = addSize(n, 4);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRTControlOutputRequestWrite(value, w)
{
    w.text(value["version"], 256);
    w.v.setFloat64(w.at, value["period"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["loss"], true);
    w.at += 4;
}

function Ros1Dsr_msgsSetRTControlOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["period"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["loss"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRTControlOutputRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    {
        const field = value["period"];
        out["period"] = field;
    }
    {
        const field = value["loss"];
        out["loss"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRTControlOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRTControlOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRTControlOutputResponseSize(Ros1Dsr_msgsSetRTControlOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRTControlOutputResponseCapture(value), n = Ros1Dsr_msgsSetRTControlOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRTControlOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRTControlOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRTControlOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRTControlOutputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRTControlOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRTControlOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRefCoordRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRefCoordRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"coord" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRefCoordRequestSize(Ros1Dsr_msgsSetRefCoordRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRefCoordRequestCapture(value), n = Ros1Dsr_msgsSetRefCoordRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRefCoordRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRefCoordRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRefCoordRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["coord"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRefCoordRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["coord"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRefCoordRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["coord"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRefCoordRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRefCoordResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRefCoordResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRefCoordResponseSize(Ros1Dsr_msgsSetRefCoordResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRefCoordResponseCapture(value), n = Ros1Dsr_msgsSetRefCoordResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRefCoordResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRefCoordResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRefCoordResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRefCoordResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRefCoordResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRefCoordResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_control" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotControlRequestSize(Ros1Dsr_msgsSetRobotControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotControlRequestCapture(value), n = Ros1Dsr_msgsSetRobotControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_control"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotControlRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_control"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotControlRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_control"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_control"];
        out["robot_control"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotControlResponseSize(Ros1Dsr_msgsSetRobotControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotControlResponseCapture(value), n = Ros1Dsr_msgsSetRobotControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotModeRequestSize(Ros1Dsr_msgsSetRobotModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotModeRequestCapture(value), n = Ros1Dsr_msgsSetRobotModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotModeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_mode"];
        out["robot_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotModeResponseSize(Ros1Dsr_msgsSetRobotModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotModeResponseCapture(value), n = Ros1Dsr_msgsSetRobotModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotModeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotSpeedModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotSpeedModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed_mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotSpeedModeRequestSize(Ros1Dsr_msgsSetRobotSpeedModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotSpeedModeRequestCapture(value), n = Ros1Dsr_msgsSetRobotSpeedModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotSpeedModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotSpeedModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotSpeedModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed_mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotSpeedModeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["speed_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotSpeedModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotSpeedModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed_mode"];
        out["speed_mode"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotSpeedModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotSpeedModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotSpeedModeResponseSize(Ros1Dsr_msgsSetRobotSpeedModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotSpeedModeResponseCapture(value), n = Ros1Dsr_msgsSetRobotSpeedModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotSpeedModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotSpeedModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotSpeedModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotSpeedModeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotSpeedModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotSpeedModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotSystemRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotSystemRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_system" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotSystemRequestSize(Ros1Dsr_msgsSetRobotSystemRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotSystemRequestCapture(value), n = Ros1Dsr_msgsSetRobotSystemRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotSystemRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotSystemRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotSystemRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["robot_system"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotSystemRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_system"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotSystemRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_system"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotSystemRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["robot_system"];
        out["robot_system"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetRobotSystemResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetRobotSystemResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetRobotSystemResponseSize(Ros1Dsr_msgsSetRobotSystemResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetRobotSystemResponseCapture(value), n = Ros1Dsr_msgsSetRobotSystemResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetRobotSystemResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetRobotSystemResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetRobotSystemResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetRobotSystemResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetRobotSystemResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetRobotSystemResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetSafeStopResetTypeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reset_type" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSafeStopResetTypeRequestSize(Ros1Dsr_msgsSetSafeStopResetTypeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSafeStopResetTypeRequestCapture(value), n = Ros1Dsr_msgsSetSafeStopResetTypeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSafeStopResetTypeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSafeStopResetTypeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSafeStopResetTypeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["reset_type"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSafeStopResetTypeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["reset_type"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSafeStopResetTypeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["reset_type"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetSafeStopResetTypeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reset_type"];
        out["reset_type"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetSafeStopResetTypeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSafeStopResetTypeResponseSize(Ros1Dsr_msgsSetSafeStopResetTypeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSafeStopResetTypeResponseCapture(value), n = Ros1Dsr_msgsSetSafeStopResetTypeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSafeStopResetTypeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSafeStopResetTypeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSafeStopResetTypeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSafeStopResetTypeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSafeStopResetTypeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetSafeStopResetTypeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetSafetyModeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSafetyModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e3e42b2be7c9f0974cb0f4a4192128c06a8df4a09eecb471358e41744d85d811",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"safety_mode" : 0, "safety_mode_event" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSafetyModeRequestSize(Ros1Dsr_msgsSetSafetyModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSafetyModeRequestCapture(value), n = Ros1Dsr_msgsSetSafetyModeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSafetyModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSafetyModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSafetyModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["safety_mode"], 1, true);
    n = addSize(n, 1);
    integer(value["safety_mode_event"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSafetyModeRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["safety_mode"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["safety_mode_event"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSafetyModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["safety_mode"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["safety_mode_event"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetSafetyModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["safety_mode"];
        out["safety_mode"] = field;
    }
    {
        const field = value["safety_mode_event"];
        out["safety_mode_event"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetSafetyModeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSafetyModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_107e9a75ba6b7fa85f2a92b4595f0b55e451b2cbabb2f0035d16b6d35be69320",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSafetyModeResponseSize(Ros1Dsr_msgsSetSafetyModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSafetyModeResponseCapture(value), n = Ros1Dsr_msgsSetSafetyModeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSafetyModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSafetyModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSafetyModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSafetyModeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSafetyModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetSafetyModeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetSingularityHandlingRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSingularityHandlingRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSingularityHandlingRequestSize(Ros1Dsr_msgsSetSingularityHandlingRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSingularityHandlingRequestCapture(value), n = Ros1Dsr_msgsSetSingularityHandlingRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSingularityHandlingRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSingularityHandlingRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSingularityHandlingRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSingularityHandlingRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSingularityHandlingRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetSingularityHandlingRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/SetSingularityHandlingResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetSingularityHandlingResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetSingularityHandlingResponseSize(Ros1Dsr_msgsSetSingularityHandlingResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetSingularityHandlingResponseCapture(value), n = Ros1Dsr_msgsSetSingularityHandlingResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetSingularityHandlingResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetSingularityHandlingResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetSingularityHandlingResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetSingularityHandlingResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetSingularityHandlingResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetSingularityHandlingResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetStiffnessxRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetStiffnessxRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3",
    maxWireBytes : 57,
    minWireBytes : 57,
    cartesianMaxWireBytes : 57n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stx" : Array.from({length : 6}, () => (0)), "ref" : 0, "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetStiffnessxRequestSize(Ros1Dsr_msgsSetStiffnessxRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetStiffnessxRequestCapture(value), n = Ros1Dsr_msgsSetStiffnessxRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetStiffnessxRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 57, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetStiffnessxRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetStiffnessxRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["stx"]) || value["stx"].length !== 6)
        bad();
    for(const element of value["stx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 57)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetStiffnessxRequestWrite(value, w)
{
    for(const element of value["stx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSetStiffnessxRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["stx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["stx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetStiffnessxRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["stx"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetStiffnessxResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetStiffnessxResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetStiffnessxResponseSize(Ros1Dsr_msgsSetStiffnessxResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetStiffnessxResponseCapture(value), n = Ros1Dsr_msgsSetStiffnessxResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetStiffnessxResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetStiffnessxResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetStiffnessxResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetStiffnessxResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetStiffnessxResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetStiffnessxResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetToolDigitalOutputRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetToolDigitalOutputRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"index" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetToolDigitalOutputRequestSize(Ros1Dsr_msgsSetToolDigitalOutputRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetToolDigitalOutputRequestCapture(value), n = Ros1Dsr_msgsSetToolDigitalOutputRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetToolDigitalOutputRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetToolDigitalOutputRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetToolDigitalOutputRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["index"], 1, true);
    n = addSize(n, 1);
    integer(value["value"], 1, true);
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetToolDigitalOutputRequestWrite(value, w)
{
    w.v.setInt8(w.at, value["index"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["value"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetToolDigitalOutputRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["index"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetToolDigitalOutputRequestCapture(value)
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

/** Complete ROS1 dsr_msgs/SetToolDigitalOutputResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetToolDigitalOutputResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetToolDigitalOutputResponseSize(Ros1Dsr_msgsSetToolDigitalOutputResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetToolDigitalOutputResponseCapture(value), n = Ros1Dsr_msgsSetToolDigitalOutputResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetToolDigitalOutputResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetToolDigitalOutputResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetToolDigitalOutputResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetToolDigitalOutputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetToolDigitalOutputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetToolDigitalOutputResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetToolShapeRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetToolShapeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : ""};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetToolShapeRequestSize(Ros1Dsr_msgsSetToolShapeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetToolShapeRequestCapture(value), n = Ros1Dsr_msgsSetToolShapeRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetToolShapeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetToolShapeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetToolShapeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetToolShapeRequestWrite(value, w)
{
    w.text(value["name"], 256);
}

function Ros1Dsr_msgsSetToolShapeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetToolShapeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetToolShapeResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetToolShapeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetToolShapeResponseSize(Ros1Dsr_msgsSetToolShapeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetToolShapeResponseCapture(value), n = Ros1Dsr_msgsSetToolShapeResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetToolShapeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetToolShapeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetToolShapeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetToolShapeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetToolShapeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetToolShapeResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord1Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord1RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord1RequestSize(Ros1Dsr_msgsSetUserCartCoord1RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord1RequestCapture(value), n = Ros1Dsr_msgsSetUserCartCoord1RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord1RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord1RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord1RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord1RequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord1RequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord1RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord1Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord1ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord1ResponseSize(Ros1Dsr_msgsSetUserCartCoord1ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord1ResponseCapture(value), n = Ros1Dsr_msgsSetUserCartCoord1ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord1ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord1ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord1ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord1ResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord1ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord1ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord2Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord2RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235",
    maxWireBytes : 193,
    minWireBytes : 193,
    cartesianMaxWireBytes : 193n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "x1" : Array.from({length : 6}, () => (0)),
            "x2" : Array.from({length : 6}, () => (0)),
            "x3" : Array.from({length : 6}, () => (0)),
            "pos" : Array.from({length : 6}, () => (0)),
            "ref" : 0
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord2RequestSize(Ros1Dsr_msgsSetUserCartCoord2RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord2RequestCapture(value), n = Ros1Dsr_msgsSetUserCartCoord2RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord2RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 193, 90);
        if(owned.length < 193)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord2RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord2RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["x1"]) || value["x1"].length !== 6)
        bad();
    for(const element of value["x1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x2"]) || value["x2"].length !== 6)
        bad();
    for(const element of value["x2"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["x3"]) || value["x3"].length !== 6)
        bad();
    for(const element of value["x3"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 193)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord2RequestWrite(value, w)
{
    for(const element of value["x1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x2"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["x3"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord2RequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x2"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["x3"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["x3"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord2RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["x1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x1"] = values;
    }
    {
        const field = value["x2"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x2"] = values;
    }
    {
        const field = value["x3"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["x3"] = values;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord2Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord2ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord2ResponseSize(Ros1Dsr_msgsSetUserCartCoord2ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord2ResponseCapture(value), n = Ros1Dsr_msgsSetUserCartCoord2ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord2ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord2ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord2ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord2ResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord2ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord2ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord3Request codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord3RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c",
    maxWireBytes : 97,
    minWireBytes : 97,
    cartesianMaxWireBytes : 97n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"u1" : Array.from({length : 3}, () => (0)), "v1" : Array.from({length : 3}, () => (0)), "pos" : Array.from({length : 6}, () => (0)), "ref" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord3RequestSize(Ros1Dsr_msgsSetUserCartCoord3RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord3RequestCapture(value), n = Ros1Dsr_msgsSetUserCartCoord3RequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord3RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 97, 90);
        if(owned.length < 97)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord3RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord3RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["u1"]) || value["u1"].length !== 3)
        bad();
    for(const element of value["u1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["v1"]) || value["v1"].length !== 3)
        bad();
    for(const element of value["v1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(n > 97)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord3RequestWrite(value, w)
{
    for(const element of value["u1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["v1"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord3RequestRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["u1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["u1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["v1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["v1"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord3RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["u1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["u1"] = values;
    }
    {
        const field = value["v1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["v1"] = values;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetUserCartCoord3Response codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetUserCartCoord3ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetUserCartCoord3ResponseSize(Ros1Dsr_msgsSetUserCartCoord3ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetUserCartCoord3ResponseCapture(value), n = Ros1Dsr_msgsSetUserCartCoord3ResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetUserCartCoord3ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetUserCartCoord3ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetUserCartCoord3ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 1, true);
    n = addSize(n, 1);
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetUserCartCoord3ResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetUserCartCoord3ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetUserCartCoord3ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetVelJRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetVelJRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0))};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetVelJRTRequestSize(Ros1Dsr_msgsSetVelJRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetVelJRTRequestCapture(value), n = Ros1Dsr_msgsSetVelJRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetVelJRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetVelJRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetVelJRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetVelJRTRequestWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsSetVelJRTRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsSetVelJRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetVelJRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetVelJRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetVelJRTResponseSize(Ros1Dsr_msgsSetVelJRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetVelJRTResponseCapture(value), n = Ros1Dsr_msgsSetVelJRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetVelJRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetVelJRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetVelJRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetVelJRTResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetVelJRTResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetVelJRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetVelXRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetVelXRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trans" : 0, "rotation" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetVelXRTRequestSize(Ros1Dsr_msgsSetVelXRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetVelXRTRequestCapture(value), n = Ros1Dsr_msgsSetVelXRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetVelXRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetVelXRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetVelXRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["trans"] !== "number" || !Number.isFinite(value["trans"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rotation"] !== "number" || !Number.isFinite(value["rotation"]))
        bad();
    n = addSize(n, 8);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetVelXRTRequestWrite(value, w)
{
    w.v.setFloat64(w.at, value["trans"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rotation"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSetVelXRTRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["trans"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rotation"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSetVelXRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trans"];
        out["trans"] = field;
    }
    {
        const field = value["rotation"];
        out["rotation"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SetVelXRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSetVelXRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsSetVelXRTResponseSize(Ros1Dsr_msgsSetVelXRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSetVelXRTResponseCapture(value), n = Ros1Dsr_msgsSetVelXRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSetVelXRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSetVelXRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSetVelXRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSetVelXRTResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsSetVelXRTResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsSetVelXRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SpeedJRTStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSpeedJRTStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780",
    maxWireBytes : 104,
    minWireBytes : 104,
    cartesianMaxWireBytes : 104n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "acc" : Array.from({length : 6}, () => (0)), "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSpeedJRTStreamSize(Ros1Dsr_msgsSpeedJRTStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSpeedJRTStreamCapture(value), n = Ros1Dsr_msgsSpeedJRTStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSpeedJRTStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 104, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSpeedJRTStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSpeedJRTStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 104)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSpeedJRTStreamWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSpeedJRTStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSpeedJRTStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SpeedJStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSpeedJStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f",
    maxWireBytes : 104,
    minWireBytes : 104,
    cartesianMaxWireBytes : 104n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "acc" : Array.from({length : 6}, () => (0)), "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSpeedJStreamSize(Ros1Dsr_msgsSpeedJStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSpeedJStreamCapture(value), n = Ros1Dsr_msgsSpeedJStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSpeedJStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 104, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSpeedJStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSpeedJStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 104)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSpeedJStreamWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSpeedJStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSpeedJStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SpeedLRTStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSpeedLRTStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc",
    maxWireBytes : 104,
    minWireBytes : 104,
    cartesianMaxWireBytes : 104n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "acc" : Array.from({length : 6}, () => (0)), "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSpeedLRTStreamSize(Ros1Dsr_msgsSpeedLRTStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSpeedLRTStreamCapture(value), n = Ros1Dsr_msgsSpeedLRTStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSpeedLRTStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 104, 90);
        if(owned.length < 104)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSpeedLRTStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSpeedLRTStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 6)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 104)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSpeedLRTStreamWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSpeedLRTStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSpeedLRTStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/SpeedLStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsSpeedLStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb",
    maxWireBytes : 72,
    minWireBytes : 72,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"vel" : Array.from({length : 6}, () => (0)), "acc" : Array.from({length : 2}, () => (0)), "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsSpeedLStreamSize(Ros1Dsr_msgsSpeedLStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsSpeedLStreamCapture(value), n = Ros1Dsr_msgsSpeedLStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsSpeedLStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsSpeedLStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsSpeedLStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["vel"]) || value["vel"].length !== 6)
        bad();
    for(const element of value["vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["acc"]) || value["acc"].length !== 2)
        bad();
    for(const element of value["acc"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 72)
        bad(90);
    return n;
}

function Ros1Dsr_msgsSpeedLStreamWrite(value, w)
{
    for(const element of value["vel"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["acc"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsSpeedLStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vel"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["acc"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["acc"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsSpeedLStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["vel"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["vel"] = values;
    }
    {
        const field = value["acc"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["acc"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/StartRTControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsStartRTControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsStartRTControlRequestSize(Ros1Dsr_msgsStartRTControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsStartRTControlRequestCapture(value), n = Ros1Dsr_msgsStartRTControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsStartRTControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsStartRTControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsStartRTControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsStartRTControlRequestWrite(value, w)
{
}

function Ros1Dsr_msgsStartRTControlRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsStartRTControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/StartRTControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsStartRTControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsStartRTControlResponseSize(Ros1Dsr_msgsStartRTControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsStartRTControlResponseCapture(value), n = Ros1Dsr_msgsStartRTControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsStartRTControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsStartRTControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsStartRTControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsStartRTControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsStartRTControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsStartRTControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/StopRTControlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsStopRTControlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Dsr_msgsStopRTControlRequestSize(Ros1Dsr_msgsStopRTControlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsStopRTControlRequestCapture(value), n = Ros1Dsr_msgsStopRTControlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsStopRTControlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsStopRTControlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsStopRTControlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsStopRTControlRequestWrite(value, w)
{
}

function Ros1Dsr_msgsStopRTControlRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsStopRTControlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/StopRTControlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsStopRTControlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsStopRTControlResponseSize(Ros1Dsr_msgsStopRTControlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsStopRTControlResponseCapture(value), n = Ros1Dsr_msgsStopRTControlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsStopRTControlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsStopRTControlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsStopRTControlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsStopRTControlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsStopRTControlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsStopRTControlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/TaskComplianceCtrlRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsTaskComplianceCtrlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671",
    maxWireBytes : 57,
    minWireBytes : 57,
    cartesianMaxWireBytes : 57n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stx" : Array.from({length : 6}, () => (0)), "ref" : 0, "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsTaskComplianceCtrlRequestSize(Ros1Dsr_msgsTaskComplianceCtrlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsTaskComplianceCtrlRequestCapture(value), n = Ros1Dsr_msgsTaskComplianceCtrlRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsTaskComplianceCtrlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 57, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsTaskComplianceCtrlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsTaskComplianceCtrlRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["stx"]) || value["stx"].length !== 6)
        bad();
    for(const element of value["stx"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 57)
        bad(90);
    return n;
}

function Ros1Dsr_msgsTaskComplianceCtrlRequestWrite(value, w)
{
    for(const element of value["stx"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsTaskComplianceCtrlRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["stx"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["stx"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsTaskComplianceCtrlRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stx"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["stx"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/TaskComplianceCtrlResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsTaskComplianceCtrlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsTaskComplianceCtrlResponseSize(Ros1Dsr_msgsTaskComplianceCtrlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsTaskComplianceCtrlResponseCapture(value), n = Ros1Dsr_msgsTaskComplianceCtrlResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsTaskComplianceCtrlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsTaskComplianceCtrlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsTaskComplianceCtrlResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsTaskComplianceCtrlResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsTaskComplianceCtrlResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsTaskComplianceCtrlResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/TorqueRTStream codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsTorqueRTStreamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"tor" : Array.from({length : 6}, () => (0)), "time" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsTorqueRTStreamSize(Ros1Dsr_msgsTorqueRTStreamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsTorqueRTStreamCapture(value), n = Ros1Dsr_msgsTorqueRTStreamSize(owned), w = new Writer(n);
        Ros1Dsr_msgsTorqueRTStreamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsTorqueRTStreamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsTorqueRTStreamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["tor"]) || value["tor"].length !== 6)
        bad();
    for(const element of value["tor"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Dsr_msgsTorqueRTStreamWrite(value, w)
{
    for(const element of value["tor"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setFloat64(w.at, value["time"], true);
    w.at += 8;
}

function Ros1Dsr_msgsTorqueRTStreamRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["tor"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tor"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsTorqueRTStreamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["tor"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tor"] = values;
    }
    {
        const field = value["time"];
        out["time"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/TransRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsTransRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273",
    maxWireBytes : 98,
    minWireBytes : 98,
    cartesianMaxWireBytes : 98n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0)), "delta" : Array.from({length : 6}, () => (0)), "ref" : 0, "ref_out" : 0};
    },
    validateValue(value) {
        Ros1Dsr_msgsTransRequestSize(Ros1Dsr_msgsTransRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsTransRequestCapture(value), n = Ros1Dsr_msgsTransRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsTransRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 98, 90);
        if(owned.length < 98)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsTransRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsTransRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 6)
        bad();
    for(const element of value["pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["delta"]) || value["delta"].length !== 6)
        bad();
    for(const element of value["delta"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["ref"], 1, true);
    n = addSize(n, 1);
    integer(value["ref_out"], 1, true);
    n = addSize(n, 1);
    if(n > 98)
        bad(90);
    return n;
}

function Ros1Dsr_msgsTransRequestWrite(value, w)
{
    for(const element of value["pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["delta"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt8(w.at, value["ref"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["ref_out"], true);
    w.at += 1;
}

function Ros1Dsr_msgsTransRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["delta"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["delta"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["ref_out"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsTransRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["delta"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["delta"] = values;
    }
    {
        const field = value["ref"];
        out["ref"] = field;
    }
    {
        const field = value["ref_out"];
        out["ref_out"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/TransResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsTransResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5",
    maxWireBytes : 49,
    minWireBytes : 49,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"trans_pos" : Array.from({length : 6}, () => (0)), "success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsTransResponseSize(Ros1Dsr_msgsTransResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsTransResponseCapture(value), n = Ros1Dsr_msgsTransResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsTransResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 49)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsTransResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsTransResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["trans_pos"]) || value["trans_pos"].length !== 6)
        bad();
    for(const element of value["trans_pos"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Dsr_msgsTransResponseWrite(value, w)
{
    for(const element of value["trans_pos"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsTransResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["trans_pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["trans_pos"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsTransResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["trans_pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["trans_pos"] = values;
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/WriteDataRTRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsWriteDataRTRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e",
    maxWireBytes : 152,
    minWireBytes : 152,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "external_force_torque" : Array.from({length : 6}, () => (0)),
            "external_digital_input" : 0,
            "external_digital_output" : 0,
            "external_analog_input" : Array.from({length : 6}, () => (0)),
            "external_analog_output" : Array.from({length : 6}, () => (0))
        };
    },
    validateValue(value) {
        Ros1Dsr_msgsWriteDataRTRequestSize(Ros1Dsr_msgsWriteDataRTRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsWriteDataRTRequestCapture(value), n = Ros1Dsr_msgsWriteDataRTRequestSize(owned), w = new Writer(n);
        Ros1Dsr_msgsWriteDataRTRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 152)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsWriteDataRTRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsWriteDataRTRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["external_force_torque"]) || value["external_force_torque"].length !== 6)
        bad();
    for(const element of value["external_force_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    integer(value["external_digital_input"], 4, true);
    n = addSize(n, 4);
    integer(value["external_digital_output"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["external_analog_input"]) || value["external_analog_input"].length !== 6)
        bad();
    for(const element of value["external_analog_input"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["external_analog_output"]) || value["external_analog_output"].length !== 6)
        bad();
    for(const element of value["external_analog_output"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 152)
        bad(90);
    return n;
}

function Ros1Dsr_msgsWriteDataRTRequestWrite(value, w)
{
    for(const element of value["external_force_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setInt32(w.at, value["external_digital_input"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["external_digital_output"], true);
    w.at += 4;
    for(const element of value["external_analog_input"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["external_analog_output"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsWriteDataRTRequestRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["external_force_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["external_force_torque"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["external_digital_input"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["external_digital_output"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["external_analog_input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["external_analog_input"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["external_analog_output"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["external_analog_output"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsWriteDataRTRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["external_force_torque"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_force_torque"] = values;
    }
    {
        const field = value["external_digital_input"];
        out["external_digital_input"] = field;
    }
    {
        const field = value["external_digital_output"];
        out["external_digital_output"] = field;
    }
    {
        const field = value["external_analog_input"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_analog_input"] = values;
    }
    {
        const field = value["external_analog_output"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 6)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["external_analog_output"] = values;
    }
    return out;
}

/** Complete ROS1 dsr_msgs/WriteDataRTResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsWriteDataRTResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Dsr_msgsWriteDataRTResponseSize(Ros1Dsr_msgsWriteDataRTResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Dsr_msgsWriteDataRTResponseCapture(value), n = Ros1Dsr_msgsWriteDataRTResponseSize(owned), w = new Writer(n);
        Ros1Dsr_msgsWriteDataRTResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Dsr_msgsWriteDataRTResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Dsr_msgsWriteDataRTResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsWriteDataRTResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsWriteDataRTResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    return value;
}

function Ros1Dsr_msgsWriteDataRTResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    return out;
}
