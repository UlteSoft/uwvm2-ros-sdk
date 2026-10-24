// @file bounded_records.mjs
// @brief Full leju js codecs and original record metadata.
// @details Complete leju ros1_master_unregistered_dtos values in js. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
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

/** Complete ROS1 kuavo_sdk/qv codec; maxima are not actual lengths. */
export const Ros1Kuavo_sdkQvCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : []};
    },
    validateValue(value) {
        Ros1Kuavo_sdkQvSize(Ros1Kuavo_sdkQvCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Kuavo_sdkQvCapture(value), n = Ros1Kuavo_sdkQvSize(owned), w = new Writer(n);
        Ros1Kuavo_sdkQvWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Kuavo_sdkQvRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Kuavo_sdkQvSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["value"]) || value["value"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["value"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 132)
        bad(90);
    return n;
}

function Ros1Kuavo_sdkQvWrite(value, w)
{
    w.v.setUint32(w.at, value["value"].length, true);
    w.at += 4;
    for(const element of value["value"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Kuavo_sdkQvRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["value"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["value"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Kuavo_sdkQvCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["value"];
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
        out["value"] = values;
    }
    return out;
}

/** Complete ROS1 kuavo_sdk/fullBodyTargetTrajectories codec; maxima are not actual lengths. */
export const Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
    maxWireBytes : 2320,
    minWireBytes : 16,
    cartesianMaxWireBytes : 2320n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"timeTrajectory" : [], "footIndexTrajectory" : [], "fullBodyQTrajectory" : [], "fullBodyVTrajectory" : []};
    },
    validateValue(value) {
        Ros1Kuavo_sdkFullBodyTargetTrajectoriesSize(Ros1Kuavo_sdkFullBodyTargetTrajectoriesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Kuavo_sdkFullBodyTargetTrajectoriesCapture(value), n = Ros1Kuavo_sdkFullBodyTargetTrajectoriesSize(owned), w = new Writer(n);
        Ros1Kuavo_sdkFullBodyTargetTrajectoriesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2320, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Kuavo_sdkFullBodyTargetTrajectoriesRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Kuavo_sdkFullBodyTargetTrajectoriesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["timeTrajectory"]) || value["timeTrajectory"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["timeTrajectory"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["footIndexTrajectory"]) || value["footIndexTrajectory"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["footIndexTrajectory"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["fullBodyQTrajectory"]) || value["fullBodyQTrajectory"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["fullBodyQTrajectory"])
    {
        n = addSize(n, Ros1Kuavo_sdkQvSize(element));
    }
    if(!Array.isArray(value["fullBodyVTrajectory"]) || value["fullBodyVTrajectory"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["fullBodyVTrajectory"])
    {
        n = addSize(n, Ros1Kuavo_sdkQvSize(element));
    }
    if(n > 2320)
        bad(90);
    return n;
}

function Ros1Kuavo_sdkFullBodyTargetTrajectoriesWrite(value, w)
{
    w.v.setUint32(w.at, value["timeTrajectory"].length, true);
    w.at += 4;
    for(const element of value["timeTrajectory"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["footIndexTrajectory"].length, true);
    w.at += 4;
    for(const element of value["footIndexTrajectory"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["fullBodyQTrajectory"].length, true);
    w.at += 4;
    for(const element of value["fullBodyQTrajectory"])
    {
        Ros1Kuavo_sdkQvWrite(element, w);
    }
    w.v.setUint32(w.at, value["fullBodyVTrajectory"].length, true);
    w.at += 4;
    for(const element of value["fullBodyVTrajectory"])
    {
        Ros1Kuavo_sdkQvWrite(element, w);
    }
}

function Ros1Kuavo_sdkFullBodyTargetTrajectoriesRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["timeTrajectory"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["timeTrajectory"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["footIndexTrajectory"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["footIndexTrajectory"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["fullBodyQTrajectory"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Kuavo_sdkQvRead(r);
                value["fullBodyQTrajectory"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["fullBodyVTrajectory"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Kuavo_sdkQvRead(r);
                value["fullBodyVTrajectory"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Kuavo_sdkFullBodyTargetTrajectoriesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["timeTrajectory"];
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
        out["timeTrajectory"] = values;
    }
    {
        const field = value["footIndexTrajectory"];
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
        out["footIndexTrajectory"] = values;
    }
    {
        const field = value["fullBodyQTrajectory"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Kuavo_sdkQvCapture(element);
        }
        out["fullBodyQTrajectory"] = values;
    }
    {
        const field = value["fullBodyVTrajectory"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros1Kuavo_sdkQvCapture(element);
        }
        out["fullBodyVTrajectory"] = values;
    }
    return out;
}
