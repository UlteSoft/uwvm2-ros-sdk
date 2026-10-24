// @file bounded_records.mjs
// @brief Full agibot js codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_1_main values in js. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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

/** Complete ROS2 aimdk_msgs/msg/AgentPropertyIdType codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "AGENT_PROPERTY_UNDEFINED" : 0,
        "AGENT_PROPERTY_LANGUAGE" : 1,
        "AGENT_PROPERTY_RUN_MODE" : 2,
        "AGENT_PROPERTY_GREET" : 3,
        "AGENT_PROPERTY_HEAD_FOLLOW" : 4,
        "AGENT_PROPERTY_DUPLEX_TIMEOUT" : 5,
        "AGENT_PROPERTY_ENVIRONMENT_SWITCH" : 6,
        "AGENT_PROPERTY_WELCOME_STATUS" : 7
    }),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAgentPropertyIdTypeSize(Ros2Aimdk_msgsMsgAgentPropertyIdTypeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAgentPropertyIdTypeCapture(value), n = Ros2Aimdk_msgsMsgAgentPropertyIdTypeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAgentPropertyIdTypeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAgentPropertyIdTypeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAgentPropertyIdTypeSize(value)
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

function Ros2Aimdk_msgsMsgAgentPropertyIdTypeWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgAgentPropertyIdTypeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAgentPropertyIdTypeCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/AgentPropertiesValue codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAgentPropertiesValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"key" : Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec.defaultValue(), "value" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAgentPropertiesValueSize(Ros2Aimdk_msgsMsgAgentPropertiesValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAgentPropertiesValueCapture(value), n = Ros2Aimdk_msgsMsgAgentPropertiesValueSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAgentPropertiesValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAgentPropertiesValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAgentPropertiesValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgAgentPropertyIdTypeSize(value["key"]));
    n = addSize(n, 4 + textBytes(value["value"], 128).length);
    if(n > 133)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAgentPropertiesValueWrite(value, w)
{
    Ros2Aimdk_msgsMsgAgentPropertyIdTypeWrite(value["key"], w);
    w.text(value["value"], 128);
}

function Ros2Aimdk_msgsMsgAgentPropertiesValueRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgAgentPropertyIdTypeRead(r);
        value["key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAgentPropertiesValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["key"];
        out["key"] = Ros2Aimdk_msgsMsgAgentPropertyIdTypeCapture(field);
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AgentProperties codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAgentPropertiesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f",
    maxWireBytes : 536,
    minWireBytes : 4,
    cartesianMaxWireBytes : 536n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"properties" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAgentPropertiesSize(Ros2Aimdk_msgsMsgAgentPropertiesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAgentPropertiesCapture(value), n = Ros2Aimdk_msgsMsgAgentPropertiesSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAgentPropertiesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 536, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAgentPropertiesRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAgentPropertiesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["properties"]) || value["properties"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["properties"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgAgentPropertiesValueSize(element));
    }
    if(n > 536)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAgentPropertiesWrite(value, w)
{
    w.v.setUint32(w.at, value["properties"].length, true);
    w.at += 4;
    for(const element of value["properties"])
    {
        Ros2Aimdk_msgsMsgAgentPropertiesValueWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgAgentPropertiesRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["properties"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgAgentPropertiesValueRead(r);
                value["properties"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgAgentPropertiesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["properties"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgAgentPropertiesValueCapture(element);
        }
        out["properties"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AudioVadStateType codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioVadStateTypeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"AUDIO_VAD_STATE_NONE" : 0, "AUDIO_VAD_STATE_BEGIN" : 1, "AUDIO_VAD_STATE_PROCESSING" : 2, "AUDIO_VAD_STATE_END" : 3}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioVadStateTypeSize(Ros2Aimdk_msgsMsgAudioVadStateTypeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioVadStateTypeCapture(value), n = Ros2Aimdk_msgsMsgAudioVadStateTypeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioVadStateTypeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioVadStateTypeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioVadStateTypeSize(value)
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

function Ros2Aimdk_msgsMsgAudioVadStateTypeWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgAudioVadStateTypeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioVadStateTypeCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/FaceEmojiStatus codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgFaceEmojiStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7",
    maxWireBytes : 2415,
    minWireBytes : 47,
    cartesianMaxWireBytes : 2415n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"STATUS_IDLE" : 0, "STATUS_START" : 1, "STATUS_RUNNING" : 2, "STATUS_FINISHED" : 3, "STATUS_STOPPED" : 4}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "e_path" : "",
            "e_path_list" : [],
            "e_id" : 0,
            "mode" : 0,
            "priority" : 0,
            "status" : 0,
            "time_to_end_ms" : 0
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgFaceEmojiStatusSize(Ros2Aimdk_msgsMsgFaceEmojiStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgFaceEmojiStatusCapture(value), n = Ros2Aimdk_msgsMsgFaceEmojiStatusSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgFaceEmojiStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2415, 90);
        if(owned.length < 47)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgFaceEmojiStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgFaceEmojiStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["e_path"], 128).length);
    if(!Array.isArray(value["e_path_list"]) || value["e_path_list"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["e_path_list"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    integer(value["e_id"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    integer(value["status"], 1, false);
    n = addSize(n, 1);
    if(typeof value["time_to_end_ms"] !== "number" || !Number.isFinite(value["time_to_end_ms"]))
        bad();
    n = addSize(n, 8);
    if(n > 2415)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgFaceEmojiStatusWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.text(value["e_path"], 128);
    w.v.setUint32(w.at, value["e_path_list"].length, true);
    w.at += 4;
    for(const element of value["e_path_list"])
    {
        w.text(element, 128);
    }
    w.v.setUint8(w.at, value["e_id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["status"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["time_to_end_ms"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgFaceEmojiStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["e_path"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["e_path_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["e_path_list"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["e_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["time_to_end_ms"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgFaceEmojiStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["e_path"];
        out["e_path"] = field;
    }
    {
        const field = value["e_path_list"];
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
        out["e_path_list"] = values;
    }
    {
        const field = value["e_id"];
        out["e_id"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["time_to_end_ms"];
        out["time_to_end_ms"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HandCommand codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8",
    maxWireBytes : 172,
    minWireBytes : 44,
    cartesianMaxWireBytes : 172n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "position" : 0, "velocity" : 0, "acceleration" : 0, "deceleration" : 0, "effort" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandCommandSize(Ros2Aimdk_msgsMsgHandCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandCommandCapture(value), n = Ros2Aimdk_msgsMsgHandCommandSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 172, 90);
        if(owned.length < 44)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandCommandSize(value)
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
    if(typeof value["acceleration"] !== "number" || !Number.isFinite(value["acceleration"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["deceleration"] !== "number" || !Number.isFinite(value["deceleration"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["effort"] !== "number" || !Number.isFinite(value["effort"]))
        bad();
    n = addSize(n, 8);
    if(n > 172)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHandCommandWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat64(w.at, value["position"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["acceleration"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["deceleration"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["effort"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgHandCommandRead(r)
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
        value["acceleration"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["deceleration"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["effort"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandCommandCapture(value)
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
        const field = value["acceleration"];
        out["acceleration"] = field;
    }
    {
        const field = value["deceleration"];
        out["deceleration"] = field;
    }
    {
        const field = value["effort"];
        out["effort"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HandType codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandTypeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"NONE" : 0, "NIMBLE_HANDS" : 1, "CLAW" : 2, "ERROR" : 255}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandTypeSize(Ros2Aimdk_msgsMsgHandTypeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandTypeCapture(value), n = Ros2Aimdk_msgsMsgHandTypeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandTypeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandTypeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandTypeSize(value)
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

function Ros2Aimdk_msgsMsgHandTypeWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgHandTypeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandTypeCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/HandCommandArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandCommandArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e",
    maxWireBytes : 1538,
    minWireBytes : 34,
    cartesianMaxWireBytes : 1538n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "left_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "left_hands" : [],
            "right_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "right_hands" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandCommandArraySize(Ros2Aimdk_msgsMsgHandCommandArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandCommandArrayCapture(value), n = Ros2Aimdk_msgsMsgHandCommandArraySize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandCommandArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1538, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandCommandArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandCommandArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["left_hand_type"]));
    if(!Array.isArray(value["left_hands"]) || value["left_hands"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["left_hands"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHandCommandSize(element));
    }
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["right_hand_type"]));
    if(!Array.isArray(value["right_hands"]) || value["right_hands"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["right_hands"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHandCommandSize(element));
    }
    if(n > 1538)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHandCommandArrayWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgHandTypeWrite(value["left_hand_type"], w);
    w.v.setUint32(w.at, value["left_hands"].length, true);
    w.at += 4;
    for(const element of value["left_hands"])
    {
        Ros2Aimdk_msgsMsgHandCommandWrite(element, w);
    }
    Ros2Aimdk_msgsMsgHandTypeWrite(value["right_hand_type"], w);
    w.v.setUint32(w.at, value["right_hands"].length, true);
    w.at += 4;
    for(const element of value["right_hands"])
    {
        Ros2Aimdk_msgsMsgHandCommandWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgHandCommandArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["left_hand_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["left_hands"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandCommandRead(r);
                value["left_hands"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["right_hand_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["right_hands"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandCommandRead(r);
                value["right_hands"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandCommandArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["left_hand_type"];
        out["left_hand_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    {
        const field = value["left_hands"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgHandCommandCapture(element);
        }
        out["left_hands"] = values;
    }
    {
        const field = value["right_hand_type"];
        out["right_hand_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    {
        const field = value["right_hands"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgHandCommandCapture(element);
        }
        out["right_hands"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HandState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c",
    maxWireBytes : 164,
    minWireBytes : 36,
    cartesianMaxWireBytes : 164n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "position" : 0, "velocity" : 0, "effort" : 0, "state" : 0, "faultcode" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandStateSize(Ros2Aimdk_msgsMsgHandStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandStateCapture(value), n = Ros2Aimdk_msgsMsgHandStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 164, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandStateSize(value)
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
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    integer(value["faultcode"], 4, true);
    n = addSize(n, 4);
    if(n > 164)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHandStateWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setFloat64(w.at, value["position"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["effort"], true);
    w.at += 8;
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["faultcode"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgHandStateRead(r)
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
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["faultcode"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandStateCapture(value)
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
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["faultcode"];
        out["faultcode"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HandStateArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandStateArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d",
    maxWireBytes : 1474,
    minWireBytes : 34,
    cartesianMaxWireBytes : 1474n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "left_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "left_hands" : [],
            "right_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "right_hands" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandStateArraySize(Ros2Aimdk_msgsMsgHandStateArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandStateArrayCapture(value), n = Ros2Aimdk_msgsMsgHandStateArraySize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandStateArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1474, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandStateArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandStateArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["left_hand_type"]));
    if(!Array.isArray(value["left_hands"]) || value["left_hands"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["left_hands"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHandStateSize(element));
    }
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["right_hand_type"]));
    if(!Array.isArray(value["right_hands"]) || value["right_hands"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["right_hands"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHandStateSize(element));
    }
    if(n > 1474)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHandStateArrayWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgHandTypeWrite(value["left_hand_type"], w);
    w.v.setUint32(w.at, value["left_hands"].length, true);
    w.at += 4;
    for(const element of value["left_hands"])
    {
        Ros2Aimdk_msgsMsgHandStateWrite(element, w);
    }
    Ros2Aimdk_msgsMsgHandTypeWrite(value["right_hand_type"], w);
    w.v.setUint32(w.at, value["right_hands"].length, true);
    w.at += 4;
    for(const element of value["right_hands"])
    {
        Ros2Aimdk_msgsMsgHandStateWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgHandStateArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["left_hand_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["left_hands"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandStateRead(r);
                value["left_hands"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["right_hand_type"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["right_hands"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHandStateRead(r);
                value["right_hands"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandStateArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["left_hand_type"];
        out["left_hand_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    {
        const field = value["left_hands"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgHandStateCapture(element);
        }
        out["left_hands"] = values;
    }
    {
        const field = value["right_hand_type"];
        out["right_hand_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    {
        const field = value["right_hands"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgHandStateCapture(element);
        }
        out["right_hands"] = values;
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
    codecIdentity : "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f",
    maxWireBytes : 159,
    minWireBytes : 31,
    cartesianMaxWireBytes : 159n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "position" : 0, "velocity" : 0, "effort" : 0, "coil_temp" : 0, "motor_temp" : 0, "motor_vol" : 0};
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
        const owned = copyRaw(bytes, 159, 90);
        if(owned.length < 31)
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
    integer(value["coil_temp"], 1, false);
    n = addSize(n, 1);
    integer(value["motor_temp"], 1, false);
    n = addSize(n, 1);
    integer(value["motor_vol"], 1, false);
    n = addSize(n, 1);
    if(n > 159)
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
    w.v.setUint8(w.at, value["coil_temp"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["motor_temp"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["motor_vol"], true);
    w.at += 1;
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
        const decoded = r.v.getUint8(r.take(1), true);
        value["coil_temp"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["motor_temp"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["motor_vol"] = decoded;
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
        const field = value["coil_temp"];
        out["coil_temp"] = field;
    }
    {
        const field = value["motor_temp"];
        out["motor_temp"] = field;
    }
    {
        const field = value["motor_vol"];
        out["motor_vol"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/JointStateArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgJointStateArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa",
    maxWireBytes : 10332,
    minWireBytes : 28,
    cartesianMaxWireBytes : 10332n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(), "joints" : []};
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
        const owned = copyRaw(bytes, 10332, 90);
        if(owned.length < 28)
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
    if(!Array.isArray(value["joints"]) || value["joints"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(n > 10332)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgJointStateArrayWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
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

/** Complete ROS2 aimdk_msgs/msg/McAction codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcActionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "PASSIVE_DEFAULT" : 1,
        "SOFT_EMERGENCY_STOP" : 2,
        "DAMPING_DEFAULT" : 3,
        "ZERO_TORQUE_DEFAULT" : 4,
        "JOINT_DEFAULT" : 100,
        "JOINT_FREEZE" : 101,
        "STAND_DEFAULT" : 200,
        "STAND_BODY_CONTROL" : 201,
        "LOCOMOTION_DEFAULT" : 300,
        "RUN_DEFAULT" : 301,
        "LOCOMOTION_STEP" : 302,
        "VR_REMOTE_CONTROLLER" : 400,
        "SIT_DOWN_DEFAULT" : 2000,
        "CROUCH_DOWN_DEFAULT" : 2002,
        "LIE_DOWN_DEFAULT" : 2004,
        "STAND_UP_DEFAULT" : 2005,
        "ASCEND_STAIRS" : 2006,
        "DESCEND_STAIRS" : 2008
    }),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcActionSize(Ros2Aimdk_msgsMsgMcActionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcActionCapture(value), n = Ros2Aimdk_msgsMsgMcActionSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcActionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcActionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcActionSize(value)
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

function Ros2Aimdk_msgsMsgMcActionWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcActionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcActionCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/McActionCommand codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcActionCommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"action" : Ros2Aimdk_msgsMsgMcActionCodec.defaultValue(), "action_desc" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcActionCommandSize(Ros2Aimdk_msgsMsgMcActionCommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcActionCommandCapture(value), n = Ros2Aimdk_msgsMsgMcActionCommandSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcActionCommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcActionCommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcActionCommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionSize(value["action"]));
    n = addSize(n, 4 + textBytes(value["action_desc"], 128).length);
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgMcActionCommandWrite(value, w)
{
    Ros2Aimdk_msgsMsgMcActionWrite(value["action"], w);
    w.text(value["action_desc"], 128);
}

function Ros2Aimdk_msgsMsgMcActionCommandRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMcActionRead(r);
        value["action"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["action_desc"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcActionCommandCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["action"];
        out["action"] = Ros2Aimdk_msgsMsgMcActionCapture(field);
    }
    {
        const field = value["action_desc"];
        out["action_desc"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/McActionStatus codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcActionStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"IDLE" : 0, "RUNNING" : 100, "TRANSITION" : 200}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcActionStatusSize(Ros2Aimdk_msgsMsgMcActionStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcActionStatusCapture(value), n = Ros2Aimdk_msgsMsgMcActionStatusSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcActionStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcActionStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcActionStatusSize(value)
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

function Ros2Aimdk_msgsMsgMcActionStatusWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcActionStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcActionStatusCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/McActionInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcActionInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "current_action" : Ros2Aimdk_msgsMsgMcActionCodec.defaultValue(),
            "action_desc" : "",
            "status" : Ros2Aimdk_msgsMsgMcActionStatusCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcActionInfoSize(Ros2Aimdk_msgsMsgMcActionInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcActionInfoCapture(value), n = Ros2Aimdk_msgsMsgMcActionInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcActionInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcActionInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcActionInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionSize(value["current_action"]));
    n = addSize(n, 4 + textBytes(value["action_desc"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionStatusSize(value["status"]));
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgMcActionInfoWrite(value, w)
{
    Ros2Aimdk_msgsMsgMcActionWrite(value["current_action"], w);
    w.text(value["action_desc"], 128);
    Ros2Aimdk_msgsMsgMcActionStatusWrite(value["status"], w);
}

function Ros2Aimdk_msgsMsgMcActionInfoRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMcActionRead(r);
        value["current_action"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["action_desc"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcActionStatusRead(r);
        value["status"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcActionInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["current_action"];
        out["current_action"] = Ros2Aimdk_msgsMsgMcActionCapture(field);
    }
    {
        const field = value["action_desc"];
        out["action_desc"] = field;
    }
    {
        const field = value["status"];
        out["status"] = Ros2Aimdk_msgsMsgMcActionStatusCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/McControlArea codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcControlAreaCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"NONE" : 0, "LEFT_HAND" : 1, "RIGHT_HAND" : 2, "HEAD" : 4, "WAIST" : 8}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcControlAreaSize(Ros2Aimdk_msgsMsgMcControlAreaCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcControlAreaCapture(value), n = Ros2Aimdk_msgsMsgMcControlAreaSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcControlAreaWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcControlAreaRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcControlAreaSize(value)
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

function Ros2Aimdk_msgsMsgMcControlAreaWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcControlAreaRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcControlAreaCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/McInputAction codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcInputActionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze(
        {"INPUTACTION_ADD" : 1001, "INPUTACTION_MODIFY" : 1002, "INPUTACTION_DELETE" : 1003, "INPUTACTION_ENABLE" : 2001, "INPUTACTION_DISABLE" : 2002}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcInputActionSize(Ros2Aimdk_msgsMsgMcInputActionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcInputActionCapture(value), n = Ros2Aimdk_msgsMsgMcInputActionSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcInputActionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcInputActionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcInputActionSize(value)
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

function Ros2Aimdk_msgsMsgMcInputActionWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcInputActionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcInputActionCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/McInputSource codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcInputSourceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "priority" : 0, "timeout" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcInputSourceSize(Ros2Aimdk_msgsMsgMcInputSourceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcInputSourceCapture(value), n = Ros2Aimdk_msgsMsgMcInputSourceSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcInputSourceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcInputSourceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcInputSourceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    integer(value["timeout"], 4, true);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgMcInputSourceWrite(value, w)
{
    w.text(value["name"], 128);
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcInputSourceRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcInputSourceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/McLocomotionVelocity codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00",
    maxWireBytes : 308,
    minWireBytes : 52,
    cartesianMaxWireBytes : 308n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "source" : "",
            "forward_velocity" : 0,
            "lateral_velocity" : 0,
            "angular_velocity" : 0
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcLocomotionVelocitySize(Ros2Aimdk_msgsMsgMcLocomotionVelocityCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcLocomotionVelocityCapture(value), n = Ros2Aimdk_msgsMsgMcLocomotionVelocitySize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcLocomotionVelocityWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 308, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcLocomotionVelocityRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcLocomotionVelocitySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["source"], 128).length);
    if(typeof value["forward_velocity"] !== "number" || !Number.isFinite(value["forward_velocity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["lateral_velocity"] !== "number" || !Number.isFinite(value["lateral_velocity"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["angular_velocity"] !== "number" || !Number.isFinite(value["angular_velocity"]))
        bad();
    n = addSize(n, 8);
    if(n > 308)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgMcLocomotionVelocityWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.text(value["source"], 128);
    w.v.setFloat64(w.at, value["forward_velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["lateral_velocity"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["angular_velocity"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgMcLocomotionVelocityRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["source"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["forward_velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["lateral_velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angular_velocity"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcLocomotionVelocityCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["source"];
        out["source"] = field;
    }
    {
        const field = value["forward_velocity"];
        out["forward_velocity"] = field;
    }
    {
        const field = value["lateral_velocity"];
        out["lateral_velocity"] = field;
    }
    {
        const field = value["angular_velocity"];
        out["angular_velocity"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/McPresetMotion codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgMcPresetMotionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "RAISE_HAND" : 1001,
        "WAVE_HAND" : 1002,
        "SHAKE_HAND" : 1003,
        "FLYING_KISS_HAND" : 1004,
        "CLAP_HAND" : 1008,
        "TURN_WAVE_HAND" : 2001,
        "INTERACTION_BOW" : 3001,
        "INTERACTION_LIKE" : 3002,
        "INTERACTION_YE" : 3003,
        "INTERACTION_SWEATHEART" : 3004,
        "SALUTE" : 1013,
        "INTERACTION_SAD" : 3006,
        "INTERACTION_LIGHTWAVE" : 3007,
        "INTERACTION_HUG" : 3008,
        "INTERACTION_HANDX" : 3009,
        "INTERACTION_CHESTWAVE" : 3010,
        "INTERACTION_CHEER" : 3011,
        "INTERACTION_BLOWKISS" : 3012,
        "INTERACTION_BASSDANCE1" : 3013,
        "INTERACTION_BASSDANCE2" : 3014,
        "HITCLAP" : 3015,
        "INTERACTION_SPEAK" : 3016,
        "CLIPFIST" : 1009,
        "INTERACTION_PHOTOPOSTURE" : 3018,
        "INTERACTION_PHOTOTRIPPLEPOSTURE" : 3019,
        "POINT_HEAD" : 4001,
        "SHAKE_HEAD" : 4002
    }),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgMcPresetMotionSize(Ros2Aimdk_msgsMsgMcPresetMotionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgMcPresetMotionCapture(value), n = Ros2Aimdk_msgsMsgMcPresetMotionSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgMcPresetMotionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgMcPresetMotionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgMcPresetMotionSize(value)
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

function Ros2Aimdk_msgsMsgMcPresetMotionWrite(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgMcPresetMotionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgMcPresetMotionCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/TtsPriorityLevel codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgTtsPriorityLevelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants :
        Object.freeze({"UNKNOWN" : 0, "BACKGROUND_L1" : 1, "SERVICE_L2" : 2, "MISSION_L4" : 4, "INTERACTION_L6" : 6, "WARNING_L8" : 8, "SAFETY_L10" : 10}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgTtsPriorityLevelSize(Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(value), n = Ros2Aimdk_msgsMsgTtsPriorityLevelSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgTtsPriorityLevelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgTtsPriorityLevelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgTtsPriorityLevelSize(value)
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

function Ros2Aimdk_msgsMsgTtsPriorityLevelWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgTtsPriorityLevelRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/PlayMediaFileRequest codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254",
    maxWireBytes : 406,
    minWireBytes : 22,
    cartesianMaxWireBytes : 406n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "file_name" : "",
            "sample_rate" : 0,
            "priority_level" : Ros2Aimdk_msgsMsgTtsPriorityLevelCodec.defaultValue(),
            "priority_weight" : 0,
            "domain" : "",
            "trace_id" : "",
            "is_interrupted" : false
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPlayMediaFileRequestSize(Ros2Aimdk_msgsMsgPlayMediaFileRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPlayMediaFileRequestCapture(value), n = Ros2Aimdk_msgsMsgPlayMediaFileRequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPlayMediaFileRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 406, 90);
        if(owned.length < 22)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPlayMediaFileRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPlayMediaFileRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["file_name"], 128).length);
    integer(value["sample_rate"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros2Aimdk_msgsMsgTtsPriorityLevelSize(value["priority_level"]));
    integer(value["priority_weight"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["domain"], 128).length);
    n = addSize(n, 4 + textBytes(value["trace_id"], 128).length);
    if(typeof value["is_interrupted"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 406)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPlayMediaFileRequestWrite(value, w)
{
    w.text(value["file_name"], 128);
    w.v.setUint32(w.at, value["sample_rate"], true);
    w.at += 4;
    Ros2Aimdk_msgsMsgTtsPriorityLevelWrite(value["priority_level"], w);
    w.v.setUint32(w.at, value["priority_weight"], true);
    w.at += 4;
    w.text(value["domain"], 128);
    w.text(value["trace_id"], 128);
    w.v.setUint8(w.at, value["is_interrupted"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgPlayMediaFileRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["file_name"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sample_rate"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgTtsPriorityLevelRead(r);
        value["priority_level"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority_weight"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["domain"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["trace_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_interrupted"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPlayMediaFileRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["file_name"];
        out["file_name"] = field;
    }
    {
        const field = value["sample_rate"];
        out["sample_rate"] = field;
    }
    {
        const field = value["priority_level"];
        out["priority_level"] = Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(field);
    }
    {
        const field = value["priority_weight"];
        out["priority_weight"] = field;
    }
    {
        const field = value["domain"];
        out["domain"] = field;
    }
    {
        const field = value["trace_id"];
        out["trace_id"] = field;
    }
    {
        const field = value["is_interrupted"];
        out["is_interrupted"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/PlayTtsRequest codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayTtsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd",
    maxWireBytes : 402,
    minWireBytes : 18,
    cartesianMaxWireBytes : 402n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "text" : "",
            "priority_level" : Ros2Aimdk_msgsMsgTtsPriorityLevelCodec.defaultValue(),
            "priority_weight" : 0,
            "domain" : "",
            "trace_id" : "",
            "is_interrupted" : false
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPlayTtsRequestSize(Ros2Aimdk_msgsMsgPlayTtsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPlayTtsRequestCapture(value), n = Ros2Aimdk_msgsMsgPlayTtsRequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPlayTtsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 402, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPlayTtsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPlayTtsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgTtsPriorityLevelSize(value["priority_level"]));
    integer(value["priority_weight"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["domain"], 128).length);
    n = addSize(n, 4 + textBytes(value["trace_id"], 128).length);
    if(typeof value["is_interrupted"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 402)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPlayTtsRequestWrite(value, w)
{
    w.text(value["text"], 128);
    Ros2Aimdk_msgsMsgTtsPriorityLevelWrite(value["priority_level"], w);
    w.v.setUint32(w.at, value["priority_weight"], true);
    w.at += 4;
    w.text(value["domain"], 128);
    w.text(value["trace_id"], 128);
    w.v.setUint8(w.at, value["is_interrupted"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgPlayTtsRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgTtsPriorityLevelRead(r);
        value["priority_level"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority_weight"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["domain"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["trace_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_interrupted"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPlayTtsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["priority_level"];
        out["priority_level"] = Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(field);
    }
    {
        const field = value["priority_weight"];
        out["priority_weight"] = field;
    }
    {
        const field = value["domain"];
        out["domain"] = field;
    }
    {
        const field = value["trace_id"];
        out["trace_id"] = field;
    }
    {
        const field = value["is_interrupted"];
        out["is_interrupted"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/PlayTtsResponse codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayTtsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3",
    maxWireBytes : 538,
    minWireBytes : 26,
    cartesianMaxWireBytes : 538n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "text" : "",
            "priority_level" : Ros2Aimdk_msgsMsgTtsPriorityLevelCodec.defaultValue(),
            "priority_weight" : 0,
            "domain" : "",
            "trace_id" : "",
            "is_success" : false,
            "error_message" : "",
            "estimated_duration" : 0
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPlayTtsResponseSize(Ros2Aimdk_msgsMsgPlayTtsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPlayTtsResponseCapture(value), n = Ros2Aimdk_msgsMsgPlayTtsResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPlayTtsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 538, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPlayTtsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPlayTtsResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["text"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgTtsPriorityLevelSize(value["priority_level"]));
    integer(value["priority_weight"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["domain"], 128).length);
    n = addSize(n, 4 + textBytes(value["trace_id"], 128).length);
    if(typeof value["is_success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["error_message"], 128).length);
    integer(value["estimated_duration"], 4, false);
    n = addSize(n, 4);
    if(n > 538)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPlayTtsResponseWrite(value, w)
{
    w.text(value["text"], 128);
    Ros2Aimdk_msgsMsgTtsPriorityLevelWrite(value["priority_level"], w);
    w.v.setUint32(w.at, value["priority_weight"], true);
    w.at += 4;
    w.text(value["domain"], 128);
    w.text(value["trace_id"], 128);
    w.v.setUint8(w.at, value["is_success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["error_message"], 128);
    w.v.setUint32(w.at, value["estimated_duration"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgPlayTtsResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["text"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgTtsPriorityLevelRead(r);
        value["priority_level"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority_weight"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["domain"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["trace_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_success"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["error_message"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["estimated_duration"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPlayTtsResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["text"];
        out["text"] = field;
    }
    {
        const field = value["priority_level"];
        out["priority_level"] = Ros2Aimdk_msgsMsgTtsPriorityLevelCapture(field);
    }
    {
        const field = value["priority_weight"];
        out["priority_weight"] = field;
    }
    {
        const field = value["domain"];
        out["domain"] = field;
    }
    {
        const field = value["trace_id"];
        out["trace_id"] = field;
    }
    {
        const field = value["is_success"];
        out["is_success"] = field;
    }
    {
        const field = value["error_message"];
        out["error_message"] = field;
    }
    {
        const field = value["estimated_duration"];
        out["estimated_duration"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/PmuState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPmuStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c",
    maxWireBytes : 1097,
    minWireBytes : 201,
    cartesianMaxWireBytes : 1097n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pmu_software_version" : "",
            "pmu_hardware_version" : "",
            "pmu_protocol_version" : "",
            "pmu_bool_status" : 0,
            "head_power_current" : 0,
            "output_48v_current" : 0,
            "rk3588_current" : 0,
            "output_12v_current" : 0,
            "bus_48v_current" : 0,
            "orin_current" : 0,
            "bus_48v_pmos_voltage" : 0,
            "battery_voltage" : 0,
            "fan_voltage" : 0,
            "output_12v_voltage" : 0,
            "output_48v_voltage" : 0,
            "bus_48v_voltage" : 0,
            "head_power_voltage" : 0,
            "orin_voltage" : 0,
            "rk3588_voltage" : 0,
            "bms_manufacturer" : "",
            "bms_serial_number" : "",
            "bms_hardware_version" : "",
            "bms_software_version" : "",
            "bms_status_bits" : 0,
            "battery_balance_line_resistance" : 0,
            "battery_pack_voltage" : 0,
            "battery_current" : 0,
            "battery_output_power" : 0,
            "battery_temperature" : 0,
            "battery_remaining_capacity" : 0,
            "battery_remaining_capacity_percentage" : 0,
            "battery_cycle_count" : 0,
            "battery_cycle_total_capacity" : 0
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPmuStateSize(Ros2Aimdk_msgsMsgPmuStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPmuStateCapture(value), n = Ros2Aimdk_msgsMsgPmuStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPmuStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1097, 90);
        if(owned.length < 201)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPmuStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPmuStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pmu_software_version"], 128).length);
    n = addSize(n, 4 + textBytes(value["pmu_hardware_version"], 128).length);
    n = addSize(n, 4 + textBytes(value["pmu_protocol_version"], 128).length);
    integer(value["pmu_bool_status"], 4, false);
    n = addSize(n, 4);
    if(typeof value["head_power_current"] !== "number" || !Number.isFinite(value["head_power_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["output_48v_current"] !== "number" || !Number.isFinite(value["output_48v_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rk3588_current"] !== "number" || !Number.isFinite(value["rk3588_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["output_12v_current"] !== "number" || !Number.isFinite(value["output_12v_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["bus_48v_current"] !== "number" || !Number.isFinite(value["bus_48v_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["orin_current"] !== "number" || !Number.isFinite(value["orin_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["bus_48v_pmos_voltage"] !== "number" || !Number.isFinite(value["bus_48v_pmos_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["battery_voltage"] !== "number" || !Number.isFinite(value["battery_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["fan_voltage"] !== "number" || !Number.isFinite(value["fan_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["output_12v_voltage"] !== "number" || !Number.isFinite(value["output_12v_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["output_48v_voltage"] !== "number" || !Number.isFinite(value["output_48v_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["bus_48v_voltage"] !== "number" || !Number.isFinite(value["bus_48v_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["head_power_voltage"] !== "number" || !Number.isFinite(value["head_power_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["orin_voltage"] !== "number" || !Number.isFinite(value["orin_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["rk3588_voltage"] !== "number" || !Number.isFinite(value["rk3588_voltage"]))
        bad();
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["bms_manufacturer"], 128).length);
    n = addSize(n, 4 + textBytes(value["bms_serial_number"], 128).length);
    n = addSize(n, 4 + textBytes(value["bms_hardware_version"], 128).length);
    n = addSize(n, 4 + textBytes(value["bms_software_version"], 128).length);
    integer(value["bms_status_bits"], 4, false);
    n = addSize(n, 4);
    integer(value["battery_balance_line_resistance"], 2, false);
    n = addSize(n, 2);
    if(typeof value["battery_pack_voltage"] !== "number" || !Number.isFinite(value["battery_pack_voltage"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["battery_current"] !== "number" || !Number.isFinite(value["battery_current"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["battery_output_power"] !== "number" || !Number.isFinite(value["battery_output_power"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["battery_temperature"] !== "number" || !Number.isFinite(value["battery_temperature"]))
        bad();
    n = addSize(n, 8);
    integer(value["battery_remaining_capacity"], 4, false);
    n = addSize(n, 4);
    integer(value["battery_remaining_capacity_percentage"], 1, false);
    n = addSize(n, 1);
    integer(value["battery_cycle_count"], 2, false);
    n = addSize(n, 2);
    integer(value["battery_cycle_total_capacity"], 4, false);
    n = addSize(n, 4);
    if(n > 1097)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPmuStateWrite(value, w)
{
    w.text(value["pmu_software_version"], 128);
    w.text(value["pmu_hardware_version"], 128);
    w.text(value["pmu_protocol_version"], 128);
    w.v.setUint32(w.at, value["pmu_bool_status"], true);
    w.at += 4;
    w.v.setFloat64(w.at, value["head_power_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["output_48v_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rk3588_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["output_12v_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["bus_48v_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["orin_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["bus_48v_pmos_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["battery_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["fan_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["output_12v_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["output_48v_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["bus_48v_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["head_power_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["orin_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["rk3588_voltage"], true);
    w.at += 8;
    w.text(value["bms_manufacturer"], 128);
    w.text(value["bms_serial_number"], 128);
    w.text(value["bms_hardware_version"], 128);
    w.text(value["bms_software_version"], 128);
    w.v.setUint32(w.at, value["bms_status_bits"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["battery_balance_line_resistance"], true);
    w.at += 2;
    w.v.setFloat64(w.at, value["battery_pack_voltage"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["battery_current"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["battery_output_power"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["battery_temperature"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["battery_remaining_capacity"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["battery_remaining_capacity_percentage"], true);
    w.at += 1;
    w.v.setUint16(w.at, value["battery_cycle_count"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["battery_cycle_total_capacity"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgPmuStateRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["pmu_software_version"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["pmu_hardware_version"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["pmu_protocol_version"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["pmu_bool_status"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["head_power_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["output_48v_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rk3588_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["output_12v_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["bus_48v_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["orin_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["bus_48v_pmos_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["fan_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["output_12v_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["output_48v_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["bus_48v_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["head_power_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["orin_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["rk3588_voltage"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["bms_manufacturer"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["bms_serial_number"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["bms_hardware_version"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["bms_software_version"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["bms_status_bits"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["battery_balance_line_resistance"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_pack_voltage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_current"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_output_power"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_temperature"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["battery_remaining_capacity"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["battery_remaining_capacity_percentage"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["battery_cycle_count"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["battery_cycle_total_capacity"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPmuStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pmu_software_version"];
        out["pmu_software_version"] = field;
    }
    {
        const field = value["pmu_hardware_version"];
        out["pmu_hardware_version"] = field;
    }
    {
        const field = value["pmu_protocol_version"];
        out["pmu_protocol_version"] = field;
    }
    {
        const field = value["pmu_bool_status"];
        out["pmu_bool_status"] = field;
    }
    {
        const field = value["head_power_current"];
        out["head_power_current"] = field;
    }
    {
        const field = value["output_48v_current"];
        out["output_48v_current"] = field;
    }
    {
        const field = value["rk3588_current"];
        out["rk3588_current"] = field;
    }
    {
        const field = value["output_12v_current"];
        out["output_12v_current"] = field;
    }
    {
        const field = value["bus_48v_current"];
        out["bus_48v_current"] = field;
    }
    {
        const field = value["orin_current"];
        out["orin_current"] = field;
    }
    {
        const field = value["bus_48v_pmos_voltage"];
        out["bus_48v_pmos_voltage"] = field;
    }
    {
        const field = value["battery_voltage"];
        out["battery_voltage"] = field;
    }
    {
        const field = value["fan_voltage"];
        out["fan_voltage"] = field;
    }
    {
        const field = value["output_12v_voltage"];
        out["output_12v_voltage"] = field;
    }
    {
        const field = value["output_48v_voltage"];
        out["output_48v_voltage"] = field;
    }
    {
        const field = value["bus_48v_voltage"];
        out["bus_48v_voltage"] = field;
    }
    {
        const field = value["head_power_voltage"];
        out["head_power_voltage"] = field;
    }
    {
        const field = value["orin_voltage"];
        out["orin_voltage"] = field;
    }
    {
        const field = value["rk3588_voltage"];
        out["rk3588_voltage"] = field;
    }
    {
        const field = value["bms_manufacturer"];
        out["bms_manufacturer"] = field;
    }
    {
        const field = value["bms_serial_number"];
        out["bms_serial_number"] = field;
    }
    {
        const field = value["bms_hardware_version"];
        out["bms_hardware_version"] = field;
    }
    {
        const field = value["bms_software_version"];
        out["bms_software_version"] = field;
    }
    {
        const field = value["bms_status_bits"];
        out["bms_status_bits"] = field;
    }
    {
        const field = value["battery_balance_line_resistance"];
        out["battery_balance_line_resistance"] = field;
    }
    {
        const field = value["battery_pack_voltage"];
        out["battery_pack_voltage"] = field;
    }
    {
        const field = value["battery_current"];
        out["battery_current"] = field;
    }
    {
        const field = value["battery_output_power"];
        out["battery_output_power"] = field;
    }
    {
        const field = value["battery_temperature"];
        out["battery_temperature"] = field;
    }
    {
        const field = value["battery_remaining_capacity"];
        out["battery_remaining_capacity"] = field;
    }
    {
        const field = value["battery_remaining_capacity_percentage"];
        out["battery_remaining_capacity_percentage"] = field;
    }
    {
        const field = value["battery_cycle_count"];
        out["battery_cycle_count"] = field;
    }
    {
        const field = value["battery_cycle_total_capacity"];
        out["battery_cycle_total_capacity"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/ProcessedAudioOutput codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgProcessedAudioOutputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30",
    maxWireBytes : 417,
    minWireBytes : 33,
    cartesianMaxWireBytes : 417n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "stream_id" : 0,
            "audio_vad_state" : Ros2Aimdk_msgsMsgAudioVadStateTypeCodec.defaultValue(),
            "audio_data" : []
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgProcessedAudioOutputSize(Ros2Aimdk_msgsMsgProcessedAudioOutputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgProcessedAudioOutputCapture(value), n = Ros2Aimdk_msgsMsgProcessedAudioOutputSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgProcessedAudioOutputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 417, 90);
        if(owned.length < 33)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgProcessedAudioOutputRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgProcessedAudioOutputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    integer(value["stream_id"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros2Aimdk_msgsMsgAudioVadStateTypeSize(value["audio_vad_state"]));
    if(!Array.isArray(value["audio_data"]) || value["audio_data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["audio_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 417)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgProcessedAudioOutputWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["stream_id"], true);
    w.at += 4;
    Ros2Aimdk_msgsMsgAudioVadStateTypeWrite(value["audio_vad_state"], w);
    w.v.setUint32(w.at, value["audio_data"].length, true);
    w.at += 4;
    for(const element of value["audio_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Aimdk_msgsMsgProcessedAudioOutputRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["stream_id"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioVadStateTypeRead(r);
        value["audio_vad_state"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["audio_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["audio_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgProcessedAudioOutputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["stream_id"];
        out["stream_id"] = field;
    }
    {
        const field = value["audio_vad_state"];
        out["audio_vad_state"] = Ros2Aimdk_msgsMsgAudioVadStateTypeCapture(field);
    }
    {
        const field = value["audio_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 256)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["audio_data"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/TouchState codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgTouchStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564",
    maxWireBytes : 225,
    minWireBytes : 97,
    cartesianMaxWireBytes : 225n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"UNKNOWN" : 0, "IDLE" : 1, "TOUCH" : 2, "SLIDE" : 3, "PAT_ONCE" : 4, "PAT_TWICE" : 5, "PAT_TRIPLE" : 6}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "event_type" : 0,
            "data" : Array.from({length : 8}, () => (0)),
            "threshold" : Array.from({length : 8}, () => (0)),
            "is_touched" : Array.from({length : 8}, () => (false))
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgTouchStateSize(Ros2Aimdk_msgsMsgTouchStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgTouchStateCapture(value), n = Ros2Aimdk_msgsMsgTouchStateSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgTouchStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 225, 90);
        if(owned.length < 97)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgTouchStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgTouchStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgMessageHeaderSize(value["header"]));
    integer(value["event_type"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["data"]) || value["data"].length !== 8)
        bad();
    for(const element of value["data"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["threshold"]) || value["threshold"].length !== 8)
        bad();
    for(const element of value["threshold"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["is_touched"]) || value["is_touched"].length !== 8)
        bad();
    for(const element of value["is_touched"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(n > 225)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgTouchStateWrite(value, w)
{
    Ros2Aimdk_msgsMsgMessageHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["event_type"], true);
    w.at += 1;
    for(const element of value["data"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["threshold"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["is_touched"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
}

function Ros2Aimdk_msgsMsgTouchStateRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgMessageHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["event_type"] = decoded;
    }
    {
        {
            const count = 8;
            if(count > 8)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 8;
            if(count > 8)
                bad();
            value["threshold"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["threshold"].push(decoded);
            }
        }
    }
    {
        {
            const count = 8;
            if(count > 8)
                bad();
            value["is_touched"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["is_touched"].push(decoded !== 0);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgTouchStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgMessageHeaderCapture(field);
    }
    {
        const field = value["event_type"];
        out["event_type"] = field;
    }
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["data"] = values;
    }
    {
        const field = value["threshold"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["threshold"] = values;
    }
    {
        const field = value["is_touched"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["is_touched"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetAllJointState_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetAllJointState_RequestSize(Ros2Aimdk_msgsSrvGetAllJointState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetAllJointState_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetAllJointState_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetAllJointState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetAllJointState_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetAllJointState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetAllJointState_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetAllJointState_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetAllJointState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetAllJointState_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793",
    maxWireBytes : 2712,
    minWireBytes : 40,
    cartesianMaxWireBytes : 2712n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "head_joints" : [], "arm_joints" : [], "waist_joints" : [], "leg_joints" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetAllJointState_ResponseSize(Ros2Aimdk_msgsSrvGetAllJointState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetAllJointState_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetAllJointState_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetAllJointState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2712, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetAllJointState_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetAllJointState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    if(!Array.isArray(value["head_joints"]) || value["head_joints"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["head_joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(!Array.isArray(value["arm_joints"]) || value["arm_joints"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["arm_joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(!Array.isArray(value["waist_joints"]) || value["waist_joints"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["waist_joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(!Array.isArray(value["leg_joints"]) || value["leg_joints"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["leg_joints"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgJointStateSize(element));
    }
    if(n > 2712)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetAllJointState_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    w.v.setUint32(w.at, value["head_joints"].length, true);
    w.at += 4;
    for(const element of value["head_joints"])
    {
        Ros2Aimdk_msgsMsgJointStateWrite(element, w);
    }
    w.v.setUint32(w.at, value["arm_joints"].length, true);
    w.at += 4;
    for(const element of value["arm_joints"])
    {
        Ros2Aimdk_msgsMsgJointStateWrite(element, w);
    }
    w.v.setUint32(w.at, value["waist_joints"].length, true);
    w.at += 4;
    for(const element of value["waist_joints"])
    {
        Ros2Aimdk_msgsMsgJointStateWrite(element, w);
    }
    w.v.setUint32(w.at, value["leg_joints"].length, true);
    w.at += 4;
    for(const element of value["leg_joints"])
    {
        Ros2Aimdk_msgsMsgJointStateWrite(element, w);
    }
}

function Ros2Aimdk_msgsSrvGetAllJointState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["head_joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointStateRead(r);
                value["head_joints"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["arm_joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointStateRead(r);
                value["arm_joints"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["waist_joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointStateRead(r);
                value["waist_joints"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["leg_joints"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgJointStateRead(r);
                value["leg_joints"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetAllJointState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["head_joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointStateCapture(element);
        }
        out["head_joints"] = values;
    }
    {
        const field = value["arm_joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointStateCapture(element);
        }
        out["arm_joints"] = values;
    }
    {
        const field = value["waist_joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointStateCapture(element);
        }
        out["waist_joints"] = values;
    }
    {
        const field = value["leg_joints"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgJointStateCapture(element);
        }
        out["leg_joints"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetCurrentInputSource_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestSize(Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetCurrentInputSource_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e",
    maxWireBytes : 168,
    minWireBytes : 40,
    cartesianMaxWireBytes : 168n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : Ros2Aimdk_msgsMsgCommonTaskResponseCodec.defaultValue(), "input_source" : Ros2Aimdk_msgsMsgMcInputSourceCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseSize(Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 168, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonTaskResponseSize(value["response"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcInputSourceSize(value["input_source"]));
    if(n > 168)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonTaskResponseWrite(value["response"], w);
    Ros2Aimdk_msgsMsgMcInputSourceWrite(value["input_source"], w);
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonTaskResponseRead(r);
        value["response"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcInputSourceRead(r);
        value["input_source"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = Ros2Aimdk_msgsMsgCommonTaskResponseCapture(field);
    }
    {
        const field = value["input_source"];
        out["input_source"] = Ros2Aimdk_msgsMsgMcInputSourceCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetHandType_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetHandType_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetHandType_RequestSize(Ros2Aimdk_msgsSrvGetHandType_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetHandType_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetHandType_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetHandType_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetHandType_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetHandType_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetHandType_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetHandType_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetHandType_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetHandType_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetHandType_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c",
    maxWireBytes : 154,
    minWireBytes : 26,
    cartesianMaxWireBytes : 154n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(),
            "left_hands_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "right_hands_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetHandType_ResponseSize(Ros2Aimdk_msgsSrvGetHandType_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetHandType_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetHandType_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetHandType_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 154, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetHandType_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetHandType_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["left_hands_type"]));
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["right_hands_type"]));
    if(n > 154)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetHandType_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    Ros2Aimdk_msgsMsgHandTypeWrite(value["left_hands_type"], w);
    Ros2Aimdk_msgsMsgHandTypeWrite(value["right_hands_type"], w);
}

function Ros2Aimdk_msgsSrvGetHandType_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["left_hands_type"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgHandTypeRead(r);
        value["right_hands_type"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetHandType_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["left_hands_type"];
        out["left_hands_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    {
        const field = value["right_hands_type"];
        out["right_hands_type"] = Ros2Aimdk_msgsMsgHandTypeCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetMcAction_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMcAction_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMcAction_RequestSize(Ros2Aimdk_msgsSrvGetMcAction_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMcAction_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetMcAction_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMcAction_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMcAction_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMcAction_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMcAction_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetMcAction_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMcAction_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetMcAction_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f",
    maxWireBytes : 156,
    minWireBytes : 28,
    cartesianMaxWireBytes : 156n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgResponseHeaderCodec.defaultValue(), "info" : Ros2Aimdk_msgsMsgMcActionInfoCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMcAction_ResponseSize(Ros2Aimdk_msgsSrvGetMcAction_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMcAction_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetMcAction_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMcAction_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 156, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMcAction_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMcAction_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgResponseHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionInfoSize(value["info"]));
    if(n > 156)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMcAction_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgResponseHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgMcActionInfoWrite(value["info"], w);
}

function Ros2Aimdk_msgsSrvGetMcAction_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgResponseHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcActionInfoRead(r);
        value["info"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMcAction_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgResponseHeaderCapture(field);
    }
    {
        const field = value["info"];
        out["info"] = Ros2Aimdk_msgsMsgMcActionInfoCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetMute_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMute_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMute_RequestSize(Ros2Aimdk_msgsSrvGetMute_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMute_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetMute_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMute_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMute_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMute_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMute_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetMute_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMute_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetMute_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMute_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42",
    maxWireBytes : 153,
    minWireBytes : 25,
    cartesianMaxWireBytes : 153n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "is_mute" : false};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMute_ResponseSize(Ros2Aimdk_msgsSrvGetMute_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMute_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetMute_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMute_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 153, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMute_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMute_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    if(typeof value["is_mute"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 153)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMute_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    w.v.setUint8(w.at, value["is_mute"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsSrvGetMute_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_mute"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMute_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["is_mute"];
        out["is_mute"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetVolume_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetVolume_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetVolume_RequestSize(Ros2Aimdk_msgsSrvGetVolume_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetVolume_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetVolume_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetVolume_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetVolume_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetVolume_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetVolume_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
}

function Ros2Aimdk_msgsSrvGetVolume_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetVolume_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetVolume_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetVolume_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266",
    maxWireBytes : 156,
    minWireBytes : 28,
    cartesianMaxWireBytes : 156n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "audio_volume" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetVolume_ResponseSize(Ros2Aimdk_msgsSrvGetVolume_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetVolume_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetVolume_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetVolume_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 156, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetVolume_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetVolume_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    integer(value["audio_volume"], 4, false);
    n = addSize(n, 4);
    if(n > 156)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetVolume_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    w.v.setUint32(w.at, value["audio_volume"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvGetVolume_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["audio_volume"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetVolume_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["audio_volume"];
        out["audio_volume"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/LedStripCommand_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze(
        {"LED_STRIP_MODE_CONSTANT" : 0, "LED_STRIP_MODE_BREATH" : 1, "LED_STRIP_MODE_FLASH" : 2, "LED_STRIP_MODE_FLOW" : 3, "LED_STRIP_MODE_MAX" : 4}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "led_strip_mode" : 0, "r" : 0, "g" : 0, "b" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvLedStripCommand_RequestSize(Ros2Aimdk_msgsSrvLedStripCommand_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvLedStripCommand_RequestCapture(value), n = Ros2Aimdk_msgsSrvLedStripCommand_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvLedStripCommand_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvLedStripCommand_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvLedStripCommand_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    integer(value["led_strip_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["r"], 1, false);
    n = addSize(n, 1);
    integer(value["g"], 1, false);
    n = addSize(n, 1);
    integer(value["b"], 1, false);
    n = addSize(n, 1);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvLedStripCommand_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    w.v.setUint8(w.at, value["led_strip_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["r"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["g"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["b"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsSrvLedStripCommand_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["led_strip_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["r"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["g"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["b"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvLedStripCommand_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["led_strip_mode"];
        out["led_strip_mode"] = field;
    }
    {
        const field = value["r"];
        out["r"] = field;
    }
    {
        const field = value["g"];
        out["g"] = field;
    }
    {
        const field = value["b"];
        out["b"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/LedStripCommand_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9",
    maxWireBytes : 18,
    minWireBytes : 18,
    cartesianMaxWireBytes : 18n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgResponseHeaderCodec.defaultValue(), "status_code" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvLedStripCommand_ResponseSize(Ros2Aimdk_msgsSrvLedStripCommand_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvLedStripCommand_ResponseCapture(value), n = Ros2Aimdk_msgsSrvLedStripCommand_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvLedStripCommand_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 18, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvLedStripCommand_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvLedStripCommand_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgResponseHeaderSize(value["header"]));
    integer(value["status_code"], 2, false);
    n = addSize(n, 2);
    if(n > 18)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvLedStripCommand_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgResponseHeaderWrite(value["header"], w);
    w.v.setUint16(w.at, value["status_code"], true);
    w.at += 2;
}

function Ros2Aimdk_msgsSrvLedStripCommand_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgResponseHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["status_code"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvLedStripCommand_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgResponseHeaderCapture(field);
    }
    {
        const field = value["status_code"];
        out["status_code"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayEmoji_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43",
    maxWireBytes : 14,
    minWireBytes : 14,
    cartesianMaxWireBytes : 14n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "EMOTION_UNKNOWN" : 0,
        "EMOTION_IDLE_BLINK" : 1,
        "EMOTION_IDLE_CALM_1" : 10,
        "EMOTION_IDLE_CALM_2" : 11,
        "EMOTION_IDLE_GAME" : 20,
        "EMOTION_IDLE_CUTE_1" : 30,
        "EMOTION_IDLE_CUTE_2" : 31,
        "EMOTION_IDLE_CUTE_3" : 32,
        "EMOTION_IDLE_CUTE_4" : 33,
        "EMOTION_EYE_CLOSE" : 40,
        "EMOTION_EYE_OPEN" : 50,
        "EMOTION_EYE_BORING_1" : 60,
        "EMOTION_EYE_ABNORMAL" : 70,
        "EMOTION_EYE_SLEEPY" : 80,
        "EMOTION_EYE_HAPPY" : 90,
        "EMOTION_EYE_EXTREMEHAPPY_1" : 100,
        "EMOTION_EYE_EXTREMEHAPPY_2" : 101,
        "EMOTION_EYE_SAD" : 110,
        "EMOTION_EYE_SYMPATHY" : 120,
        "EMOTION_EYE_CONFUSE" : 130,
        "EMOTION_EYE_SHOCK" : 140,
        "EMOTION_EYE_ACTCUTE" : 150,
        "EMOTION_EYE_SERIOUS" : 160,
        "EMOTION_EYE_THINKING" : 170,
        "EMOTION_EYE_ANGRY" : 180,
        "EMOTION_EYE_EXTREMEANGRY" : 190,
        "EMOTION_EYE_ADORE" : 200,
        "EMOTION_EYE_EXTREMEADORE" : 210,
        "EMOTION_EYE_CHARGE" : 220,
        "EMOTION_MODE_ONCE" : 1,
        "EMOTION_MODE_LOOP" : 2
    }),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "emotion_id" : 0, "mode" : 0, "priority" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayEmoji_RequestSize(Ros2Aimdk_msgsSrvPlayEmoji_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayEmoji_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayEmoji_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayEmoji_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayEmoji_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayEmoji_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    integer(value["emotion_id"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    if(n > 14)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayEmoji_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.v.setUint8(w.at, value["emotion_id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvPlayEmoji_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["emotion_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayEmoji_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["emotion_id"];
        out["emotion_id"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayEmoji_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "success" : false, "message" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayEmoji_ResponseSize(Ros2Aimdk_msgsSrvPlayEmoji_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayEmoji_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayEmoji_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayEmoji_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayEmoji_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayEmoji_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 285)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayEmoji_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 128);
}

function Ros2Aimdk_msgsSrvPlayEmoji_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayEmoji_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayMediaFile_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c",
    maxWireBytes : 414,
    minWireBytes : 30,
    cartesianMaxWireBytes : 414n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "media_file_req" : Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayMediaFile_RequestSize(Ros2Aimdk_msgsSrvPlayMediaFile_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayMediaFile_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayMediaFile_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayMediaFile_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 414, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayMediaFile_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayMediaFile_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgPlayMediaFileRequestSize(value["media_file_req"]));
    if(n > 414)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayMediaFile_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    Ros2Aimdk_msgsMsgPlayMediaFileRequestWrite(value["media_file_req"], w);
}

function Ros2Aimdk_msgsSrvPlayMediaFile_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgPlayMediaFileRequestRead(r);
        value["media_file_req"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayMediaFile_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["media_file_req"];
        out["media_file_req"] = Ros2Aimdk_msgsMsgPlayMediaFileRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayMediaFile_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099",
    maxWireBytes : 690,
    minWireBytes : 50,
    cartesianMaxWireBytes : 690n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "tts_resp" : Ros2Aimdk_msgsMsgPlayTtsResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayMediaFile_ResponseSize(Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayMediaFile_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayMediaFile_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 690, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayMediaFile_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayMediaFile_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgPlayTtsResponseSize(value["tts_resp"]));
    if(n > 690)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayMediaFile_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    Ros2Aimdk_msgsMsgPlayTtsResponseWrite(value["tts_resp"], w);
}

function Ros2Aimdk_msgsSrvPlayMediaFile_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgPlayTtsResponseRead(r);
        value["tts_resp"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["tts_resp"];
        out["tts_resp"] = Ros2Aimdk_msgsMsgPlayTtsResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayTts_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayTts_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7",
    maxWireBytes : 410,
    minWireBytes : 26,
    cartesianMaxWireBytes : 410n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "tts_req" : Ros2Aimdk_msgsMsgPlayTtsRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayTts_RequestSize(Ros2Aimdk_msgsSrvPlayTts_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayTts_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayTts_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayTts_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 410, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayTts_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayTts_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgPlayTtsRequestSize(value["tts_req"]));
    if(n > 410)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayTts_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    Ros2Aimdk_msgsMsgPlayTtsRequestWrite(value["tts_req"], w);
}

function Ros2Aimdk_msgsSrvPlayTts_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgPlayTtsRequestRead(r);
        value["tts_req"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayTts_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["tts_req"];
        out["tts_req"] = Ros2Aimdk_msgsMsgPlayTtsRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayTts_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayTts_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a",
    maxWireBytes : 690,
    minWireBytes : 50,
    cartesianMaxWireBytes : 690n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "tts_resp" : Ros2Aimdk_msgsMsgPlayTtsResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayTts_ResponseSize(Ros2Aimdk_msgsSrvPlayTts_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayTts_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayTts_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayTts_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 690, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayTts_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayTts_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgPlayTtsResponseSize(value["tts_resp"]));
    if(n > 690)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayTts_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    Ros2Aimdk_msgsMsgPlayTtsResponseWrite(value["tts_resp"], w);
}

function Ros2Aimdk_msgsSrvPlayTts_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgPlayTtsResponseRead(r);
        value["tts_resp"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayTts_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["tts_resp"];
        out["tts_resp"] = Ros2Aimdk_msgsMsgPlayTtsResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayVideo_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayVideo_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878",
    maxWireBytes : 145,
    minWireBytes : 17,
    cartesianMaxWireBytes : 145n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"EMOTION_MODE_ONCE" : 1, "EMOTION_MODE_LOOP" : 2}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "video_path" : "", "mode" : 0, "priority" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayVideo_RequestSize(Ros2Aimdk_msgsSrvPlayVideo_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayVideo_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayVideo_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayVideo_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 145, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayVideo_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayVideo_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["video_path"], 128).length);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    if(n > 145)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayVideo_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.text(value["video_path"], 128);
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvPlayVideo_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["video_path"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayVideo_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["video_path"];
        out["video_path"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayVideo_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "success" : false, "message" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayVideo_ResponseSize(Ros2Aimdk_msgsSrvPlayVideo_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayVideo_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayVideo_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayVideo_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayVideo_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayVideo_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["message"], 128).length);
    if(n > 285)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayVideo_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 128);
}

function Ros2Aimdk_msgsSrvPlayVideo_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayVideo_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec",
    maxWireBytes : 544,
    minWireBytes : 12,
    cartesianMaxWireBytes : 544n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "contents" : Ros2Aimdk_msgsMsgAgentPropertiesCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestSize(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 544, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgAgentPropertiesSize(value["contents"]));
    if(n > 544)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    Ros2Aimdk_msgsMsgAgentPropertiesWrite(value["contents"], w);
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAgentPropertiesRead(r);
        value["contents"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["contents"];
        out["contents"] = Ros2Aimdk_msgsMsgAgentPropertiesCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseSize(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcAction_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcAction_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5",
    maxWireBytes : 144,
    minWireBytes : 16,
    cartesianMaxWireBytes : 144n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgRequestHeaderCodec.defaultValue(), "command" : Ros2Aimdk_msgsMsgMcActionCommandCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcAction_RequestSize(Ros2Aimdk_msgsSrvSetMcAction_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcAction_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetMcAction_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcAction_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 144, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcAction_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcAction_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgRequestHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionCommandSize(value["command"]));
    if(n > 144)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcAction_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgRequestHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgMcActionCommandWrite(value["command"], w);
}

function Ros2Aimdk_msgsSrvSetMcAction_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgRequestHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcActionCommandRead(r);
        value["command"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcAction_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgRequestHeaderCapture(field);
    }
    {
        const field = value["command"];
        out["command"] = Ros2Aimdk_msgsMsgMcActionCommandCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcAction_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcAction_ResponseSize(Ros2Aimdk_msgsSrvSetMcAction_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcAction_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetMcAction_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcAction_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcAction_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcAction_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["response"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcAction_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["response"], w);
}

function Ros2Aimdk_msgsSrvSetMcAction_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["response"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcAction_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcInputSource_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(),
            "action" : Ros2Aimdk_msgsMsgMcInputActionCodec.defaultValue(),
            "input_source" : Ros2Aimdk_msgsMsgMcInputSourceCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcInputSource_RequestSize(Ros2Aimdk_msgsSrvSetMcInputSource_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcInputSource_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetMcInputSource_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcInputSource_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcInputSource_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcInputSource_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcInputActionSize(value["action"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcInputSourceSize(value["input_source"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcInputSource_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    Ros2Aimdk_msgsMsgMcInputActionWrite(value["action"], w);
    Ros2Aimdk_msgsMsgMcInputSourceWrite(value["input_source"], w);
}

function Ros2Aimdk_msgsSrvSetMcInputSource_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcInputActionRead(r);
        value["action"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcInputSourceRead(r);
        value["input_source"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcInputSource_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["action"];
        out["action"] = Ros2Aimdk_msgsMsgMcInputActionCapture(field);
    }
    {
        const field = value["input_source"];
        out["input_source"] = Ros2Aimdk_msgsMsgMcInputSourceCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcInputSource_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : Ros2Aimdk_msgsMsgCommonTaskResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcInputSource_ResponseSize(Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetMcInputSource_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcInputSource_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcInputSource_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcInputSource_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonTaskResponseSize(value["response"]));
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcInputSource_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonTaskResponseWrite(value["response"], w);
}

function Ros2Aimdk_msgsSrvSetMcInputSource_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonTaskResponseRead(r);
        value["response"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = Ros2Aimdk_msgsMsgCommonTaskResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcPresetMotion_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea",
    maxWireBytes : 149,
    minWireBytes : 21,
    cartesianMaxWireBytes : 149n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgRequestHeaderCodec.defaultValue(),
            "area" : Ros2Aimdk_msgsMsgMcControlAreaCodec.defaultValue(),
            "motion" : Ros2Aimdk_msgsMsgMcPresetMotionCodec.defaultValue(),
            "interrupt" : false,
            "ani_path" : ""
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestSize(Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 149, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgRequestHeaderSize(value["header"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcControlAreaSize(value["area"]));
    n = addSize(n, Ros2Aimdk_msgsMsgMcPresetMotionSize(value["motion"]));
    if(typeof value["interrupt"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["ani_path"], 128).length);
    if(n > 149)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgRequestHeaderWrite(value["header"], w);
    Ros2Aimdk_msgsMsgMcControlAreaWrite(value["area"], w);
    Ros2Aimdk_msgsMsgMcPresetMotionWrite(value["motion"], w);
    w.v.setUint8(w.at, value["interrupt"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["ani_path"], 128);
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgRequestHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcControlAreaRead(r);
        value["area"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgMcPresetMotionRead(r);
        value["motion"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["interrupt"] = decoded !== 0;
    }
    {
        const decoded = r.text(128);
        value["ani_path"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgRequestHeaderCapture(field);
    }
    {
        const field = value["area"];
        out["area"] = Ros2Aimdk_msgsMsgMcControlAreaCapture(field);
    }
    {
        const field = value["motion"];
        out["motion"] = Ros2Aimdk_msgsMsgMcPresetMotionCapture(field);
    }
    {
        const field = value["interrupt"];
        out["interrupt"] = field;
    }
    {
        const field = value["ani_path"];
        out["ani_path"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMcPresetMotion_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"response" : Ros2Aimdk_msgsMsgCommonTaskResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseSize(Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonTaskResponseSize(value["response"]));
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonTaskResponseWrite(value["response"], w);
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonTaskResponseRead(r);
        value["response"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["response"];
        out["response"] = Ros2Aimdk_msgsMsgCommonTaskResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMute_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMute_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "is_mute" : false};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMute_RequestSize(Ros2Aimdk_msgsSrvSetMute_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMute_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetMute_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMute_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMute_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMute_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    if(typeof value["is_mute"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMute_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    w.v.setUint8(w.at, value["is_mute"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsSrvSetMute_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_mute"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMute_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["is_mute"];
        out["is_mute"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMute_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMute_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50",
    maxWireBytes : 153,
    minWireBytes : 25,
    cartesianMaxWireBytes : 153n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "is_mute" : false};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMute_ResponseSize(Ros2Aimdk_msgsSrvSetMute_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMute_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetMute_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMute_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 153, 90);
        if(owned.length < 25)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMute_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMute_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    if(typeof value["is_mute"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 153)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMute_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    w.v.setUint8(w.at, value["is_mute"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsSrvSetMute_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_mute"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMute_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["is_mute"];
        out["is_mute"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetVolume_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetVolume_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "audio_volume" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetVolume_RequestSize(Ros2Aimdk_msgsSrvSetVolume_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetVolume_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetVolume_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetVolume_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetVolume_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetVolume_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    integer(value["audio_volume"], 4, false);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetVolume_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    w.v.setUint32(w.at, value["audio_volume"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvSetVolume_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["audio_volume"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetVolume_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["audio_volume"];
        out["audio_volume"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetVolume_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetVolume_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e",
    maxWireBytes : 156,
    minWireBytes : 28,
    cartesianMaxWireBytes : 156n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "audio_volume" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetVolume_ResponseSize(Ros2Aimdk_msgsSrvSetVolume_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetVolume_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetVolume_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetVolume_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 156, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetVolume_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetVolume_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    integer(value["audio_volume"], 4, false);
    n = addSize(n, 4);
    if(n > 156)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetVolume_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    w.v.setUint32(w.at, value["audio_volume"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvSetVolume_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["audio_volume"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetVolume_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["audio_volume"];
        out["audio_volume"] = field;
    }
    return out;
}
