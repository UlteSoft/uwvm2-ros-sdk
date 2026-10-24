// @file bounded_records.mjs
// @brief Full agibot js codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in js. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
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

/** Complete ROS2 builtin_interfaces/msg/Time codec; maxima are not actual lengths. */
export const Ros2Builtin_interfacesMsgTimeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nanosec" : 0};
    },
    validateValue(value) {
        Ros2Builtin_interfacesMsgTimeSize(Ros2Builtin_interfacesMsgTimeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Builtin_interfacesMsgTimeCapture(value), n = Ros2Builtin_interfacesMsgTimeSize(owned), w = new Writer(n);
        Ros2Builtin_interfacesMsgTimeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Builtin_interfacesMsgTimeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Builtin_interfacesMsgTimeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, true);
    n = addSize(n, 4);
    integer(value["nanosec"], 4, false);
    n = addSize(n, 4);
    if(value["nanosec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Builtin_interfacesMsgTimeWrite(value, w)
{
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nanosec"], true);
    w.at += 4;
}

function Ros2Builtin_interfacesMsgTimeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nanosec"] = decoded;
    }
    if(value["nanosec"] >= 1000000000)
        bad();
    return value;
}

function Ros2Builtin_interfacesMsgTimeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nanosec"];
        out["nanosec"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/RequestHeader codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgRequestHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgRequestHeaderSize(Ros2Aimdk_msgsMsgRequestHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgRequestHeaderCapture(value), n = Ros2Aimdk_msgsMsgRequestHeaderSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgRequestHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgRequestHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgRequestHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgRequestHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
}

function Ros2Aimdk_msgsMsgRequestHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgRequestHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamp"];
        out["stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/CommonRequest codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgCommonRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgRequestHeaderCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgCommonRequestSize(Ros2Aimdk_msgsMsgCommonRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgCommonRequestCapture(value), n = Ros2Aimdk_msgsMsgCommonRequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgCommonRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgCommonRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgRequestHeaderSize(value["header"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgCommonRequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgRequestHeaderWrite(value["header"], w);
}

function Ros2Aimdk_msgsMsgCommonRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgRequestHeaderRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgCommonRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgRequestHeaderCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ResponseHeader codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgResponseHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(), "code" : 0n};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgResponseHeaderSize(Ros2Aimdk_msgsMsgResponseHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgResponseHeaderCapture(value), n = Ros2Aimdk_msgsMsgResponseHeaderSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgResponseHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgResponseHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgResponseHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    integer(value["code"], 8, true);
    n = addSize(n, 8);
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgResponseHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.v.setBigInt64(w.at, value["code"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgResponseHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.v.getBigInt64(r.take(8), true);
        value["code"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgResponseHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamp"];
        out["stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["code"];
        out["code"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/CommonState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgCommonStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "UNKNOWN" : 0,
        "SUCCESS" : 1,
        "FAILURE" : 2,
        "ABORTED" : 3,
        "TIMEOUT" : 4,
        "INVALID" : 5,
        "IN_MANUAL" : 6,
        "NOT_READY" : 100,
        "PENDING" : 200,
        "CREATED" : 300,
        "RUNNING" : 400
    }),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgCommonStateSize(Ros2Aimdk_msgsMsgCommonStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgCommonStateCapture(value), n = Ros2Aimdk_msgsMsgCommonStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgCommonStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgCommonStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgCommonStateSize(value)
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

function Ros2Aimdk_msgsMsgCommonStateWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgCommonStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgCommonStateCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/CommonResponse codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgCommonResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgResponseHeaderCodec.defaultValue(), "status" : Ros2Aimdk_msgsMsgCommonStateCodec.defaultValue(), "message" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgCommonResponseSize(Ros2Aimdk_msgsMsgCommonResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgCommonResponseCapture(value), n = Ros2Aimdk_msgsMsgCommonResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgCommonResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgCommonResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgResponseHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgCommonStateSize(value["status"]));
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgCommonResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgResponseHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgCommonStateWrite(value["status"], w);
    w.text(value["message"], 128);
}

function Ros2Aimdk_msgsMsgCommonResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgResponseHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgCommonStateRead(r);
        value["status"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgCommonResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgResponseHeaderCapture(field);
    }
    {
        const field = value["status"];
        out["status"] = Ros2Aimdk_msgsMsgCommonStateCapture(field);
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/CommonTaskResponse codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgCommonTaskResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgResponseHeaderCodec.defaultValue(), "task_id" : 0n, "state" : Ros2Aimdk_msgsMsgCommonStateCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgCommonTaskResponseSize(Ros2Aimdk_msgsMsgCommonTaskResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgCommonTaskResponseCapture(value), n = Ros2Aimdk_msgsMsgCommonTaskResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgCommonTaskResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgCommonTaskResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgCommonTaskResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgResponseHeaderSize(value["header"]));
    integer(value["task_id"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, Ros2Aimdk_msgsMsgCommonStateSize(value["state"]));
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgCommonTaskResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgResponseHeaderWrite(value["header"], w);
    w.v.setBigUint64(w.at, value["task_id"], true);
    w.at += 8;
    Ros2Aimdk_msgsMsgCommonStateWrite(value["state"], w);
}

function Ros2Aimdk_msgsMsgCommonTaskResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgResponseHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["task_id"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgCommonStateRead(r);
        value["state"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgCommonTaskResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgResponseHeaderCapture(field);
    }
    {
        const field = value["task_id"];
        out["task_id"] = field;
    }
    {
        const field = value["state"];
        out["state"] = Ros2Aimdk_msgsMsgCommonStateCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/DomainErrorState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgDomainErrorStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"NONE" : 0, "DAMPING" : 1, "POWERDOWN" : 2, "DISABLE" : 3, "DISCONNECT" : 4}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgDomainErrorStateSize(Ros2Aimdk_msgsMsgDomainErrorStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgDomainErrorStateCapture(value), n = Ros2Aimdk_msgsMsgDomainErrorStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgDomainErrorStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgDomainErrorStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgDomainErrorStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["value"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgDomainErrorStateWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgDomainErrorStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgDomainErrorStateCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/JointCommand codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgJointCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f",
    maxWireBytes : 172,
    minWireBytes : 44,
    cartesianMaxWireBytes : 172n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "position" : 0, "velocity" : 0, "effort" : 0, "stiffness" : 0, "damping" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgJointCommandSize(Ros2Aimdk_msgsMsgJointCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgJointCommandCapture(value), n = Ros2Aimdk_msgsMsgJointCommandSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgJointCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 172, 90);
        if(owned.length < 44)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgJointCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgJointCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["effort"] !== "number" || !Number.isFinite(value["effort"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["stiffness"] !== "number" || !Number.isFinite(value["stiffness"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["damping"] !== "number" || !Number.isFinite(value["damping"]))
        bad();
    n = addSize(n, 8);
    if(n > 172)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgJointCommandWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat64(w.at, value["position"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["effort"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["stiffness"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["damping"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgJointCommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["effort"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["stiffness"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["damping"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgJointCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["effort"];
        out["effort"] = field;
    }
    {
        const field = value["stiffness"];
        out["stiffness"] = field;
    }
    {
        const field = value["damping"];
        out["damping"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/MessageHeader codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMessageHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(),
            "frame_id" : "",
            "sequence" : 0,
            "meas_stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMessageHeaderSize(Ros2Aimdk_msgsMsgMessageHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMessageHeaderCapture(value), n = Ros2Aimdk_msgsMsgMessageHeaderSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMessageHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMessageHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    n = addSize(n, 4 + textBytes(value["frame_id"], 128).length);
    integer(value["sequence"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["meas_stamp"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgMessageHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 128);
    w.v.setUint32(w.at, value["sequence"], true);
    w.at += 4;
    Ros2Builtin_interfacesMsgTimeWrite(value["meas_stamp"], w);
}

function Ros2Aimdk_msgsMsgMessageHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["frame_id"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sequence"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["meas_stamp"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMessageHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamp"];
        out["stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["frame_id"];
        out["frame_id"] = field;
    }
    {
        const field = value["sequence"];
        out["sequence"] = field;
    }
    {
        const field = value["meas_stamp"];
        out["meas_stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/JointCommandArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgJointCommandArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6",
    maxWireBytes : 11164,
    minWireBytes : 28,
    cartesianMaxWireBytes : 11164n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(), "joints" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgJointCommandArraySize(Ros2Aimdk_msgsMsgJointCommandArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgJointCommandArrayCapture(value), n = Ros2Aimdk_msgsMsgJointCommandArraySize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgJointCommandArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 11164, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgJointCommandArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgJointCommandArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    if(!Array.isArray(value["joints"]) || value["joints"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointCommandSize(element));
    }
    if(n > 11164)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgJointCommandArrayWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joints"].length, true);
    w.at += 4;
    for(const element of value["joints"])
    {
        Ros2Aimdk_msgsMsgJointCommandWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgJointCommandArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointCommandRead(r);
                value["joints"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgJointCommandArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointCommandCapture(element);
        }
        out["joints"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/JointState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgJointStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53",
    maxWireBytes : 158,
    minWireBytes : 30,
    cartesianMaxWireBytes : 158n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "position" : 0, "velocity" : 0, "effort" : 0, "error_code" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgJointStateSize(Ros2Aimdk_msgsMsgJointStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgJointStateCapture(value), n = Ros2Aimdk_msgsMsgJointStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgJointStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 158, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgJointStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgJointStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["effort"] !== "number" || !Number.isFinite(value["effort"]))
        bad();
    n = addSize(n, 8);
    integer(value["error_code"], 2, false);
    n = addSize(n, 2);
    if(n > 158)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgJointStateWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat64(w.at, value["position"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["effort"], true);
    w.at += 8;
    w.v.setUint16(w.at, value["error_code"], true);
    w.at += 2;
}

function Ros2Aimdk_msgsMsgJointStateRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["effort"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["error_code"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgJointStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["effort"];
        out["effort"] = field;
    }
    {
        const field = value["error_code"];
        out["error_code"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/JointStateArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgJointStateArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e",
    maxWireBytes : 10269,
    minWireBytes : 29,
    cartesianMaxWireBytes : 10269n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(), "state" : Ros2Aimdk_msgsMsgDomainErrorStateCodec.defaultValue(), "joints" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgJointStateArraySize(Ros2Aimdk_msgsMsgJointStateArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgJointStateArrayCapture(value), n = Ros2Aimdk_msgsMsgJointStateArraySize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgJointStateArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10269, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgJointStateArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgJointStateArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgDomainErrorStateSize(value["state"]));
    if(!Array.isArray(value["joints"]) || value["joints"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(n > 10269)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgJointStateArrayWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgDomainErrorStateWrite(value["state"], w);
    w.v.setUint32(w.at, value["joints"].length, true);
    w.at += 4;
    for(const element of value["joints"])
    {
        Ros2Aimdk_msgsMsgJointStateWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgJointStateArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgDomainErrorStateRead(r);
        value["state"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointStateRead(r);
                value["joints"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgJointStateArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["state"];
        out["state"] = Ros2Aimdk_msgsMsgDomainErrorStateCapture(field);
    }
    {
        const field = value["joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 64)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointStateCapture(element);
        }
        out["joints"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ModuleChannelInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgModuleChannelInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696",
    maxWireBytes : 586,
    minWireBytes : 58,
    cartesianMaxWireBytes : 586n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "name" : "",
            "type" : "",
            "frequency" : 0,
            "min_time_diff" : 0,
            "max_time_diff" : 0,
            "std_dev" : 0,
            "window_size" : 0,
            "timeout_threshold" : 0,
            "is_active" : false,
            "is_timeout" : false,
            "backends" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgModuleChannelInfoSize(Ros2Aimdk_msgsMsgModuleChannelInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgModuleChannelInfoCapture(value), n = Ros2Aimdk_msgsMsgModuleChannelInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgModuleChannelInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 586, 90);
        if(owned.length < 58)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgModuleChannelInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgModuleChannelInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["type"], 128).length);
    if(typeof value["frequency"] !== "number" || !Number.isFinite(value["frequency"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["min_time_diff"] !== "number" || !Number.isFinite(value["min_time_diff"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["max_time_diff"] !== "number" || !Number.isFinite(value["max_time_diff"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["std_dev"] !== "number" || !Number.isFinite(value["std_dev"]))
        bad();
    n = addSize(n, 8);
    integer(value["window_size"], 4, true);
    n = addSize(n, 4);
    if(typeof value["timeout_threshold"] !== "number" || !Number.isFinite(value["timeout_threshold"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["is_active"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["is_timeout"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["backends"]) || value["backends"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["backends"])
    {
        n = addSize(n, 4 + textBytes(element, 64).length);
    }
    if(n > 586)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgModuleChannelInfoWrite(value, w)
{
    w.text(value["name"], 128);
    w.text(value["type"], 128);
    w.v.setFloat64(w.at, value["frequency"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["min_time_diff"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["max_time_diff"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["std_dev"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["window_size"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["timeout_threshold"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["is_active"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_timeout"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["backends"].length, true);
    w.at += 4;
    for(const element of value["backends"])
    {
        w.text(element, 64);
    }
}

function Ros2Aimdk_msgsMsgModuleChannelInfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["frequency"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["min_time_diff"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["max_time_diff"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["std_dev"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["window_size"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout_threshold"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_active"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_timeout"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["backends"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(64);
                value["backends"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgModuleChannelInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["frequency"];
        out["frequency"] = field;
    }
    {
        const field = value["min_time_diff"];
        out["min_time_diff"] = field;
    }
    {
        const field = value["max_time_diff"];
        out["max_time_diff"] = field;
    }
    {
        const field = value["std_dev"];
        out["std_dev"] = field;
    }
    {
        const field = value["window_size"];
        out["window_size"] = field;
    }
    {
        const field = value["timeout_threshold"];
        out["timeout_threshold"] = field;
    }
    {
        const field = value["is_active"];
        out["is_active"] = field;
    }
    {
        const field = value["is_timeout"];
        out["is_timeout"] = field;
    }
    {
        const field = value["backends"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["backends"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ModuleRpcInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgModuleRpcInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8",
    maxWireBytes : 672,
    minWireBytes : 16,
    cartesianMaxWireBytes : 672n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "req_type" : "", "res_type" : "", "backends" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgModuleRpcInfoSize(Ros2Aimdk_msgsMsgModuleRpcInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgModuleRpcInfoCapture(value), n = Ros2Aimdk_msgsMsgModuleRpcInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgModuleRpcInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 672, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgModuleRpcInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgModuleRpcInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, 4 + textBytes(value["req_type"], 128).length);
    n = addSize(n, 4 + textBytes(value["res_type"], 128).length);
    if(!Array.isArray(value["backends"]) || value["backends"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["backends"])
    {
        n = addSize(n, 4 + textBytes(element, 64).length);
    }
    if(n > 672)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgModuleRpcInfoWrite(value, w)
{
    w.text(value["name"], 128);
    w.text(value["req_type"], 128);
    w.text(value["res_type"], 128);
    w.v.setUint32(w.at, value["backends"].length, true);
    w.at += 4;
    for(const element of value["backends"])
    {
        w.text(element, 64);
    }
}

function Ros2Aimdk_msgsMsgModuleRpcInfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["req_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["res_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["backends"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(64);
                value["backends"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgModuleRpcInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["req_type"];
        out["req_type"] = field;
    }
    {
        const field = value["res_type"];
        out["res_type"] = field;
    }
    {
        const field = value["backends"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["backends"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ModuleResourceInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgModuleResourceInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f",
    maxWireBytes : 5180,
    minWireBytes : 20,
    cartesianMaxWireBytes : 5180n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"module_name" : "", "rpc_clients" : [], "rpc_services" : [], "pub_channels" : [], "sub_channels" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgModuleResourceInfoSize(Ros2Aimdk_msgsMsgModuleResourceInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgModuleResourceInfoCapture(value), n = Ros2Aimdk_msgsMsgModuleResourceInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgModuleResourceInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5180, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgModuleResourceInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgModuleResourceInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["module_name"], 128).length);
    if(!Array.isArray(value["rpc_clients"]) || value["rpc_clients"].length > 2)
        bad();
    n = addSize(n, 4);
    for(const element of value["rpc_clients"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgModuleRpcInfoSize(element));
    }
    if(!Array.isArray(value["rpc_services"]) || value["rpc_services"].length > 2)
        bad();
    n = addSize(n, 4);
    for(const element of value["rpc_services"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgModuleRpcInfoSize(element));
    }
    if(!Array.isArray(value["pub_channels"]) || value["pub_channels"].length > 2)
        bad();
    n = addSize(n, 4);
    for(const element of value["pub_channels"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgModuleChannelInfoSize(element));
    }
    if(!Array.isArray(value["sub_channels"]) || value["sub_channels"].length > 2)
        bad();
    n = addSize(n, 4);
    for(const element of value["sub_channels"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgModuleChannelInfoSize(element));
    }
    if(n > 5180)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgModuleResourceInfoWrite(value, w)
{
    w.text(value["module_name"], 128);
    w.v.setUint32(w.at, value["rpc_clients"].length, true);
    w.at += 4;
    for(const element of value["rpc_clients"])
    {
        Ros2Aimdk_msgsMsgModuleRpcInfoWrite(element, w);
    }
    w.v.setUint32(w.at, value["rpc_services"].length, true);
    w.at += 4;
    for(const element of value["rpc_services"])
    {
        Ros2Aimdk_msgsMsgModuleRpcInfoWrite(element, w);
    }
    w.v.setUint32(w.at, value["pub_channels"].length, true);
    w.at += 4;
    for(const element of value["pub_channels"])
    {
        Ros2Aimdk_msgsMsgModuleChannelInfoWrite(element, w);
    }
    w.v.setUint32(w.at, value["sub_channels"].length, true);
    w.at += 4;
    for(const element of value["sub_channels"])
    {
        Ros2Aimdk_msgsMsgModuleChannelInfoWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgModuleResourceInfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["module_name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 2)
                bad();
            value["rpc_clients"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleRpcInfoRead(r);
                value["rpc_clients"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 2)
                bad();
            value["rpc_services"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleRpcInfoRead(r);
                value["rpc_services"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 2)
                bad();
            value["pub_channels"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleChannelInfoRead(r);
                value["pub_channels"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 2)
                bad();
            value["sub_channels"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleChannelInfoRead(r);
                value["sub_channels"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgModuleResourceInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["module_name"];
        out["module_name"] = field;
    }
    {
        const field = value["rpc_clients"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgModuleRpcInfoCapture(element);
        }
        out["rpc_clients"] = values;
    }
    {
        const field = value["rpc_services"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgModuleRpcInfoCapture(element);
        }
        out["rpc_services"] = values;
    }
    {
        const field = value["pub_channels"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgModuleChannelInfoCapture(element);
        }
        out["pub_channels"] = values;
    }
    {
        const field = value["sub_channels"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgModuleChannelInfoCapture(element);
        }
        out["sub_channels"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ThreadResourceInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgThreadResourceInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15",
    maxWireBytes : 352,
    minWireBytes : 32,
    cartesianMaxWireBytes : 352n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"thread_id" : 0n, "thread_name" : "", "cpu_usage_ratio" : 0, "cpu_sched_policy" : "", "cpu_sched_priority" : 0, "bounding_cpus" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgThreadResourceInfoSize(Ros2Aimdk_msgsMsgThreadResourceInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgThreadResourceInfoCapture(value), n = Ros2Aimdk_msgsMsgThreadResourceInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgThreadResourceInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 352, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgThreadResourceInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgThreadResourceInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["thread_id"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["thread_name"], 128).length);
    if(typeof value["cpu_usage_ratio"] !== "number" || !Number.isFinite(value["cpu_usage_ratio"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["cpu_sched_policy"], 128).length);
    integer(value["cpu_sched_priority"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["bounding_cpus"]) || value["bounding_cpus"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["bounding_cpus"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 352)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgThreadResourceInfoWrite(value, w)
{
    w.v.setBigUint64(w.at, value["thread_id"], true);
    w.at += 8;
    w.text(value["thread_name"], 128);
    w.v.setFloat64(w.at, value["cpu_usage_ratio"], true);
    w.at += 8;
    w.text(value["cpu_sched_policy"], 128);
    w.v.setInt32(w.at, value["cpu_sched_priority"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["bounding_cpus"].length, true);
    w.at += 4;
    for(const element of value["bounding_cpus"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Aimdk_msgsMsgThreadResourceInfoRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["thread_id"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["thread_name"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["cpu_usage_ratio"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["cpu_sched_policy"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["cpu_sched_priority"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["bounding_cpus"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["bounding_cpus"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgThreadResourceInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["thread_id"];
        out["thread_id"] = field;
    }
    {
        const field = value["thread_name"];
        out["thread_name"] = field;
    }
    {
        const field = value["cpu_usage_ratio"];
        out["cpu_usage_ratio"] = field;
    }
    {
        const field = value["cpu_sched_policy"];
        out["cpu_sched_policy"] = field;
    }
    {
        const field = value["cpu_sched_priority"];
        out["cpu_sched_priority"] = field;
    }
    {
        const field = value["bounding_cpus"];
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
        out["bounding_cpus"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ProcessResourceInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgProcessResourceInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550",
    maxWireBytes : 1584,
    minWireBytes : 48,
    cartesianMaxWireBytes : 1584n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "process_id" : 0n,
            "process_name" : "",
            "process_mem_usage" : 0n,
            "process_mem_usage_ratio" : 0,
            "process_cpu_usage_ratio" : 0,
            "thread_count" : 0n,
            "threads" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgProcessResourceInfoSize(Ros2Aimdk_msgsMsgProcessResourceInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgProcessResourceInfoCapture(value), n = Ros2Aimdk_msgsMsgProcessResourceInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgProcessResourceInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1584, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgProcessResourceInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgProcessResourceInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["process_id"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["process_name"], 128).length);
    integer(value["process_mem_usage"], 8, false);
    n = addSize(n, 8);
    if(typeof value["process_mem_usage_ratio"] !== "number" || !Number.isFinite(value["process_mem_usage_ratio"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["process_cpu_usage_ratio"] !== "number" || !Number.isFinite(value["process_cpu_usage_ratio"]))
        bad();
    n = addSize(n, 8);
    integer(value["thread_count"], 8, false);
    n = addSize(n, 8);
    if(!Array.isArray(value["threads"]) || value["threads"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["threads"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgThreadResourceInfoSize(element));
    }
    if(n > 1584)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgProcessResourceInfoWrite(value, w)
{
    w.v.setBigUint64(w.at, value["process_id"], true);
    w.at += 8;
    w.text(value["process_name"], 128);
    w.v.setBigUint64(w.at, value["process_mem_usage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["process_mem_usage_ratio"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["process_cpu_usage_ratio"], true);
    w.at += 8;
    w.v.setBigUint64(w.at, value["thread_count"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["threads"].length, true);
    w.at += 4;
    for(const element of value["threads"])
    {
        Ros2Aimdk_msgsMsgThreadResourceInfoWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgProcessResourceInfoRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["process_id"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["process_name"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["process_mem_usage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["process_mem_usage_ratio"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["process_cpu_usage_ratio"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["thread_count"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["threads"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgThreadResourceInfoRead(r);
                value["threads"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgProcessResourceInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["process_id"];
        out["process_id"] = field;
    }
    {
        const field = value["process_name"];
        out["process_name"] = field;
    }
    {
        const field = value["process_mem_usage"];
        out["process_mem_usage"] = field;
    }
    {
        const field = value["process_mem_usage_ratio"];
        out["process_mem_usage_ratio"] = field;
    }
    {
        const field = value["process_cpu_usage_ratio"];
        out["process_cpu_usage_ratio"] = field;
    }
    {
        const field = value["thread_count"];
        out["thread_count"] = field;
    }
    {
        const field = value["threads"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgThreadResourceInfoCapture(element);
        }
        out["threads"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ProcessInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgProcessInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996",
    maxWireBytes : 12232,
    minWireBytes : 80,
    cartesianMaxWireBytes : 12232n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "app_name" : "",
            "resource" : Ros2Aimdk_msgsMsgProcessResourceInfoCodec.defaultValue(),
            "modules" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgProcessInfoSize(Ros2Aimdk_msgsMsgProcessInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgProcessInfoCapture(value), n = Ros2Aimdk_msgsMsgProcessInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgProcessInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12232, 90);
        if(owned.length < 80)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgProcessInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgProcessInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["app_name"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgProcessResourceInfoSize(value["resource"]));
    if(!Array.isArray(value["modules"]) || value["modules"].length > 2)
        bad();
    n = addSize(n, 4);
    for(const element of value["modules"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgModuleResourceInfoSize(element));
    }
    if(n > 12232)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgProcessInfoWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.text(value["app_name"], 128);
    Ros2Aimdk_msgsMsgProcessResourceInfoWrite(value["resource"], w);
    w.v.setUint32(w.at, value["modules"].length, true);
    w.at += 4;
    for(const element of value["modules"])
    {
        Ros2Aimdk_msgsMsgModuleResourceInfoWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgProcessInfoRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["app_name"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgProcessResourceInfoRead(r);
        value["resource"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 2)
                bad();
            value["modules"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgModuleResourceInfoRead(r);
                value["modules"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgProcessInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["app_name"];
        out["app_name"] = field;
    }
    {
        const field = value["resource"];
        out["resource"] = Ros2Aimdk_msgsMsgProcessResourceInfoCapture(field);
    }
    {
        const field = value["modules"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 2)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgModuleResourceInfoCapture(element);
        }
        out["modules"] = values;
    }
    return out;
}
