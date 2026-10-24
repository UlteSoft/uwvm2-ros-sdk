/**
 * @file bounded_records.mjs
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
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
    codecIdentity : "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
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
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
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
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseWrite(value, w)
{
    w.v.setFloat64(w.at, value["value"], true);
    w.at += 8;
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
    codecIdentity : "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : false};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(typeof value["value"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["value"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["value"] = decoded !== 0;
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
    codecIdentity : "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : Array.from({length : 6}, () => (0))};
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
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
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
    if(n > 48)
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
    codecIdentity : "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"solution_space" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    integer(value["solution_space"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["solution_space"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["solution_space"] = decoded;
    }
    return value;
}

function Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["solution_space"];
        out["solution_space"] = field;
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
    codecIdentity : "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"info" : ""};
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
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
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
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentTcpResponseWrite(value, w)
{
    w.text(value["info"], 256);
}

function Ros1Dsr_msgsGetCurrentTcpResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["info"] = decoded;
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
    codecIdentity : "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"info" : ""};
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
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
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
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetCurrentToolResponseWrite(value, w)
{
    w.text(value["info"], 256);
}

function Ros1Dsr_msgsGetCurrentToolResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["info"] = decoded;
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
    codecIdentity : "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"drl_state" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetDrlStateResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["drl_state"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetDrlStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["drl_state"] = decoded;
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
    codecIdentity : "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ext_torque" : Array.from({length : 6}, () => (0))};
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
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
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
    if(n > 48)
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
    codecIdentity : "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_torque" : Array.from({length : 6}, () => (0))};
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
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
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
    if(!Array.isArray(value["joint_torque"]) || value["joint_torque"].length !== 6)
        bad();
    for(const element of value["joint_torque"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetJointTorqueResponseWrite(value, w)
{
    for(const element of value["joint_torque"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Dsr_msgsGetJointTorqueResponseRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint_torque"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_torque"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Dsr_msgsGetJointTorqueResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_torque"];
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
        out["joint_torque"] = values;
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
    codecIdentity : "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c",
    maxWireBytes : 792,
    minWireBytes : 24,
    cartesianMaxWireBytes : 792n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"log_alarm" : Ros1Dsr_msgsLogAlarmCodec.defaultValue()};
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
        const owned = copyRaw(bytes, 792, 90);
        if(owned.length < 24)
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
    if(n > 792)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetLastAlarmResponseWrite(value, w)
{
    Ros1Dsr_msgsLogAlarmWrite(value["log_alarm"], w);
}

function Ros1Dsr_msgsGetLastAlarmResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Dsr_msgsLogAlarmRead(r);
        value["log_alarm"] = decoded;
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
    codecIdentity : "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
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
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
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
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetModbusInputResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros1Dsr_msgsGetModbusInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
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
    codecIdentity : "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_mode" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotModeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_mode"] = decoded;
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
    codecIdentity : "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed_mode" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSpeedModeResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["speed_mode"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotSpeedModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["speed_mode"] = decoded;
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
    codecIdentity : "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_state" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotStateResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_state"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotStateResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_state"] = decoded;
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
    codecIdentity : "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"robot_system" : 0};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetRobotSystemResponseWrite(value, w)
{
    w.v.setInt8(w.at, value["robot_system"], true);
    w.at += 1;
}

function Ros1Dsr_msgsGetRobotSystemResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["robot_system"] = decoded;
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
    codecIdentity : "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : false};
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
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
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
    if(typeof value["value"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolDigitalInputResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["value"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Dsr_msgsGetToolDigitalInputResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["value"] = decoded !== 0;
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
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolForceRequest codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolForceRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
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
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
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
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Dsr_msgsGetToolForceRequestWrite(value, w)
{
}

function Ros1Dsr_msgsGetToolForceRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Dsr_msgsGetToolForceRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 dsr_msgs/GetToolForceResponse codec; maxima are not actual lengths. */
export const Ros1Dsr_msgsGetToolForceResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"tool_force" : Array.from({length : 6}, () => (0))};
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
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
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
    if(n > 48)
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
    codecIdentity : "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33",
    maxWireBytes : 2239,
    minWireBytes : 31,
    cartesianMaxWireBytes : 2239n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : [], "posCnt" : 0, "vel" : 0, "acc" : 0, "time" : 0, "mode" : 0, "syncType" : 0};
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
        const owned = copyRaw(bytes, 2239, 90);
        if(owned.length < 31)
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
    if(typeof value["vel"] !== "number" || !Number.isFinite(value["vel"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["time"] !== "number" || !Number.isFinite(value["time"]))
        bad();
    n = addSize(n, 8);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["syncType"], 1, true);
    n = addSize(n, 1);
    if(n > 2239)
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
    w.v.setFloat64(w.at, value["vel"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["acc"], true);
    w.at += 8;
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
    codecIdentity : "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574",
    maxWireBytes : 7595,
    minWireBytes : 907,
    cartesianMaxWireBytes : 7595n,
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
            "current_velx" : Array.from({length : 6}, () => (0)),
            "task_err" : Array.from({length : 6}, () => (0)),
            "target_velx" : Array.from({length : 6}, () => (0)),
            "target_posx" : Array.from({length : 6}, () => (0)),
            "solution_space" : 0,
            "rotation_matrix" : [],
            "dynamic_tor" : Array.from({length : 6}, () => (0)),
            "actual_jts" : Array.from({length : 6}, () => (0)),
            "actual_ejt" : Array.from({length : 6}, () => (0)),
            "actual_ett" : Array.from({length : 6}, () => (0)),
            "sync_time" : 0,
            "actual_bk" : Array.from({length : 6}, () => (0)),
            "actual_bt" : Array.from({length : 5}, () => (0)),
            "actual_mc" : Array.from({length : 6}, () => (0)),
            "actual_mt" : Array.from({length : 6}, () => (0)),
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
            "disconnected" : false
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
        const owned = copyRaw(bytes, 7595, 90);
        if(owned.length < 907)
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
    integer(value["solution_space"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["rotation_matrix"]) || value["rotation_matrix"].length > 6)
        bad();
    n = addSize(n, 4);
    for(const element of value["rotation_matrix"])
    {
        n = addSize(n, Ros1Std_msgsFloat64MultiArraySize(element));
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
    if(typeof value["sync_time"] !== "number" || !Number.isFinite(value["sync_time"]))
        bad();
    n = addSize(n, 8);
    if(!Array.isArray(value["actual_bk"]) || value["actual_bk"].length !== 6)
        bad();
    for(const element of value["actual_bk"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["actual_bt"]) || value["actual_bt"].length !== 5)
        bad();
    for(const element of value["actual_bt"])
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
    if(n > 7595)
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
    w.v.setInt8(w.at, value["solution_space"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["rotation_matrix"].length, true);
    w.at += 4;
    for(const element of value["rotation_matrix"])
    {
        Ros1Std_msgsFloat64MultiArrayWrite(element, w);
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
    w.v.setFloat64(w.at, value["sync_time"], true);
    w.at += 8;
    for(const element of value["actual_bk"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["actual_bt"])
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
        const decoded = r.v.getInt8(r.take(1), true);
        value["solution_space"] = decoded;
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
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["sync_time"] = decoded;
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
        const field = value["solution_space"];
        out["solution_space"] = field;
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
        const field = value["sync_time"];
        out["sync_time"] = field;
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
