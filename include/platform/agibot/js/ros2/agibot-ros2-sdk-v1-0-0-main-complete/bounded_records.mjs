// @file bounded_records.mjs
// @brief Full agibot js codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_0_0_main values in js. 120 original records retain 366 fields and 93
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
    codecIdentity : "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c",
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
        "AGENT_PROPERTY_WELCOME_STATUS" : 7,
        "AGENT_PROPERTY_SITE_SWITCH" : 8,
        "AGENT_PROPERTY_LANGUAGE_LIST" : 9
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
    codecIdentity : "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb",
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
    codecIdentity : "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa",
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

/** Complete ROS2 aimdk_msgs/msg/AudioInfo codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be",
    maxWireBytes : 273,
    minWireBytes : 17,
    cartesianMaxWireBytes : 273n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"channels" : 0, "sample_rate" : 0, "size" : 0, "sample_format" : "", "coding_format" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioInfoSize(Ros2Aimdk_msgsMsgAudioInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioInfoCapture(value), n = Ros2Aimdk_msgsMsgAudioInfoSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 273, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["channels"], 1, false);
    n = addSize(n, 1);
    integer(value["sample_rate"], 4, false);
    n = addSize(n, 4);
    integer(value["size"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["sample_format"], 128).length);
    n = addSize(n, 4 + textBytes(value["coding_format"], 128).length);
    if(n > 273)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAudioInfoWrite(value, w)
{
    w.v.setUint8(w.at, value["channels"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["sample_rate"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["size"], true);
    w.at += 4;
    w.text(value["sample_format"], 128);
    w.text(value["coding_format"], 128);
}

function Ros2Aimdk_msgsMsgAudioInfoRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["channels"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sample_rate"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["size"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["sample_format"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["coding_format"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["channels"];
        out["channels"] = field;
    }
    {
        const field = value["sample_rate"];
        out["sample_rate"] = field;
    }
    {
        const field = value["size"];
        out["size"] = field;
    }
    {
        const field = value["sample_format"];
        out["sample_format"] = field;
    }
    {
        const field = value["coding_format"];
        out["coding_format"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AudioData codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioDataSize(Ros2Aimdk_msgsMsgAudioDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioDataCapture(value), n = Ros2Aimdk_msgsMsgAudioDataSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["data"]) || value["data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAudioDataWrite(value, w)
{
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Aimdk_msgsMsgAudioDataRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AudioCapture codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioCaptureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c",
    maxWireBytes : 675,
    minWireBytes : 35,
    cartesianMaxWireBytes : 675n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "stamps" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(),
            "mic_channels" : 0,
            "ref_channels" : 0,
            "info" : Ros2Aimdk_msgsMsgAudioInfoCodec.defaultValue(),
            "data" : Ros2Aimdk_msgsMsgAudioDataCodec.defaultValue(),
            "pkg_name" : ""
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioCaptureSize(Ros2Aimdk_msgsMsgAudioCaptureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioCaptureCapture(value), n = Ros2Aimdk_msgsMsgAudioCaptureSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioCaptureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 675, 90);
        if(owned.length < 35)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioCaptureRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioCaptureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamps"]));
    integer(value["mic_channels"], 1, false);
    n = addSize(n, 1);
    integer(value["ref_channels"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, Ros2Aimdk_msgsMsgAudioInfoSize(value["info"]));
    n = addSize(n, Ros2Aimdk_msgsMsgAudioDataSize(value["data"]));
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    if(n > 675)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAudioCaptureWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamps"], w);
    w.v.setUint8(w.at, value["mic_channels"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["ref_channels"], true);
    w.at += 1;
    Ros2Aimdk_msgsMsgAudioInfoWrite(value["info"], w);
    Ros2Aimdk_msgsMsgAudioDataWrite(value["data"], w);
    w.text(value["pkg_name"], 128);
}

function Ros2Aimdk_msgsMsgAudioCaptureRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamps"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mic_channels"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["ref_channels"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioInfoRead(r);
        value["info"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioDataRead(r);
        value["data"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioCaptureCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamps"];
        out["stamps"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["mic_channels"];
        out["mic_channels"] = field;
    }
    {
        const field = value["ref_channels"];
        out["ref_channels"] = field;
    }
    {
        const field = value["info"];
        out["info"] = Ros2Aimdk_msgsMsgAudioInfoCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2Aimdk_msgsMsgAudioDataCapture(field);
    }
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AudioFile codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioFileCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d",
    maxWireBytes : 677,
    minWireBytes : 37,
    cartesianMaxWireBytes : 677n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pkg_name" : "",
            "file_name" : "",
            "file_path" : "",
            "info" : Ros2Aimdk_msgsMsgAudioInfoCodec.defaultValue(),
            "priority" : 0,
            "priority_weight" : 0
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioFileSize(Ros2Aimdk_msgsMsgAudioFileCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioFileCapture(value), n = Ros2Aimdk_msgsMsgAudioFileSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioFileWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 677, 90);
        if(owned.length < 37)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioFileRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioFileSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    n = addSize(n, 4 + textBytes(value["file_name"], 128).length);
    n = addSize(n, 4 + textBytes(value["file_path"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgAudioInfoSize(value["info"]));
    integer(value["priority"], 4, false);
    n = addSize(n, 4);
    integer(value["priority_weight"], 4, false);
    n = addSize(n, 4);
    if(n > 677)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAudioFileWrite(value, w)
{
    w.text(value["pkg_name"], 128);
    w.text(value["file_name"], 128);
    w.text(value["file_path"], 128);
    Ros2Aimdk_msgsMsgAudioInfoWrite(value["info"], w);
    w.v.setUint32(w.at, value["priority"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["priority_weight"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgAudioFileRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["file_name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["file_path"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioInfoRead(r);
        value["info"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority_weight"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioFileCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    {
        const field = value["file_name"];
        out["file_name"] = field;
    }
    {
        const field = value["file_path"];
        out["file_path"] = field;
    }
    {
        const field = value["info"];
        out["info"] = Ros2Aimdk_msgsMsgAudioInfoCapture(field);
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["priority_weight"];
        out["priority_weight"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/AudioPlayback codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgAudioPlaybackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499",
    maxWireBytes : 805,
    minWireBytes : 37,
    cartesianMaxWireBytes : 805n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "stamps" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(),
            "info" : Ros2Aimdk_msgsMsgAudioInfoCodec.defaultValue(),
            "data" : Ros2Aimdk_msgsMsgAudioDataCodec.defaultValue(),
            "pkg_name" : "",
            "token_id" : ""
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgAudioPlaybackSize(Ros2Aimdk_msgsMsgAudioPlaybackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgAudioPlaybackCapture(value), n = Ros2Aimdk_msgsMsgAudioPlaybackSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgAudioPlaybackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 805, 90);
        if(owned.length < 37)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgAudioPlaybackRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgAudioPlaybackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamps"]));
    n = addSize(n, Ros2Aimdk_msgsMsgAudioInfoSize(value["info"]));
    n = addSize(n, Ros2Aimdk_msgsMsgAudioDataSize(value["data"]));
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    n = addSize(n, 4 + textBytes(value["token_id"], 128).length);
    if(n > 805)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgAudioPlaybackWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamps"], w);
    Ros2Aimdk_msgsMsgAudioInfoWrite(value["info"], w);
    Ros2Aimdk_msgsMsgAudioDataWrite(value["data"], w);
    w.text(value["pkg_name"], 128);
    w.text(value["token_id"], 128);
}

function Ros2Aimdk_msgsMsgAudioPlaybackRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamps"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioInfoRead(r);
        value["info"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioDataRead(r);
        value["data"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["token_id"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgAudioPlaybackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["stamps"];
        out["stamps"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["info"];
        out["info"] = Ros2Aimdk_msgsMsgAudioInfoCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2Aimdk_msgsMsgAudioDataCapture(field);
    }
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    {
        const field = value["token_id"];
        out["token_id"] = field;
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

/** Complete ROS2 aimdk_msgs/msg/CurrentVersion codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgCurrentVersionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd",
    maxWireBytes : 2388,
    minWireBytes : 20,
    cartesianMaxWireBytes : 2388n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : "", "name" : "", "files" : [], "download_timestamp_seconds" : 0n};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgCurrentVersionSize(Ros2Aimdk_msgsMsgCurrentVersionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgCurrentVersionCapture(value), n = Ros2Aimdk_msgsMsgCurrentVersionSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgCurrentVersionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2388, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgCurrentVersionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgCurrentVersionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 128).length);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    if(!Array.isArray(value["files"]) || value["files"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["files"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    integer(value["download_timestamp_seconds"], 8, false);
    n = addSize(n, 8);
    if(n > 2388)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgCurrentVersionWrite(value, w)
{
    w.text(value["version"], 128);
    w.text(value["name"], 128);
    w.v.setUint32(w.at, value["files"].length, true);
    w.at += 4;
    for(const element of value["files"])
    {
        w.text(element, 128);
    }
    w.v.setBigUint64(w.at, value["download_timestamp_seconds"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsMsgCurrentVersionRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["version"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["files"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["files"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["download_timestamp_seconds"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgCurrentVersionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["files"];
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
        out["files"] = values;
    }
    {
        const field = value["download_timestamp_seconds"];
        out["download_timestamp_seconds"] = field;
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

/** Complete ROS2 aimdk_msgs/msg/FocusRequester codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgFocusRequesterCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pkg_name" : "", "priority" : 0, "priority_weight" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgFocusRequesterSize(Ros2Aimdk_msgsMsgFocusRequesterCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgFocusRequesterCapture(value), n = Ros2Aimdk_msgsMsgFocusRequesterSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgFocusRequesterWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgFocusRequesterRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgFocusRequesterSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    integer(value["priority"], 4, false);
    n = addSize(n, 4);
    integer(value["priority_weight"], 4, false);
    n = addSize(n, 4);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgFocusRequesterWrite(value, w)
{
    w.text(value["pkg_name"], 128);
    w.v.setUint32(w.at, value["priority"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["priority_weight"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsMsgFocusRequesterRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["priority_weight"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgFocusRequesterCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["priority_weight"];
        out["priority_weight"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/FocusResponse codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgFocusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pkg_name" : "", "focus_gain" : false};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgFocusResponseSize(Ros2Aimdk_msgsMsgFocusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgFocusResponseCapture(value), n = Ros2Aimdk_msgsMsgFocusResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgFocusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgFocusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgFocusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    if(typeof value["focus_gain"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 133)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgFocusResponseWrite(value, w)
{
    w.text(value["pkg_name"], 128);
    w.v.setUint8(w.at, value["focus_gain"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgFocusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["focus_gain"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsMsgFocusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    {
        const field = value["focus_gain"];
        out["focus_gain"] = field;
    }
    return out;
}

/** Complete ROS2 geometry_msgs/msg/Point codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPointSize(Ros2Geometry_msgsMsgPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPointCapture(value), n = Ros2Geometry_msgsMsgPointSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgPointSize(value)
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

function Ros2Geometry_msgsMsgPointWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgPointRead(r)
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

function Ros2Geometry_msgsMsgPointCapture(value)
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

/** Complete ROS2 geometry_msgs/msg/Quaternion codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgQuaternionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0.0, "y" : 0.0, "z" : 0.0, "w" : 1.0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgQuaternionSize(Ros2Geometry_msgsMsgQuaternionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgQuaternionCapture(value), n = Ros2Geometry_msgsMsgQuaternionSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgQuaternionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgQuaternionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgQuaternionSize(value)
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
    if(typeof value["w"] !== "number" || !Number.isFinite(value["w"]))
        bad();
    n = addSize(n, 8);
    if(n > 32)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgQuaternionWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["w"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgQuaternionRead(r)
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
        value["w"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgQuaternionCapture(value)
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
        const field = value["w"];
        out["w"] = field;
    }
    return out;
}

/** Complete ROS2 geometry_msgs/msg/Pose codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : Ros2Geometry_msgsMsgPointCodec.defaultValue(), "orientation" : Ros2Geometry_msgsMsgQuaternionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPoseSize(Ros2Geometry_msgsMsgPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPoseCapture(value), n = Ros2Geometry_msgsMsgPoseSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPointSize(value["position"]));
    n = addSize(n, Ros2Geometry_msgsMsgQuaternionSize(value["orientation"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPoseWrite(value, w)
{
    Ros2Geometry_msgsMsgPointWrite(value["position"], w);
    Ros2Geometry_msgsMsgQuaternionWrite(value["orientation"], w);
}

function Ros2Geometry_msgsMsgPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPointRead(r);
        value["position"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgQuaternionRead(r);
        value["orientation"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = Ros2Geometry_msgsMsgPointCapture(field);
    }
    {
        const field = value["orientation"];
        out["orientation"] = Ros2Geometry_msgsMsgQuaternionCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/QRCode codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgQRCodeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd",
    maxWireBytes : 60,
    minWireBytes : 60,
    cartesianMaxWireBytes : 60n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"code" : 0, "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgQRCodeSize(Ros2Aimdk_msgsMsgQRCodeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgQRCodeCapture(value), n = Ros2Aimdk_msgsMsgQRCodeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgQRCodeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 60, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgQRCodeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgQRCodeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["code"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(n > 60)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgQRCodeWrite(value, w)
{
    w.v.setInt32(w.at, value["code"], true);
    w.at += 4;
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
}

function Ros2Aimdk_msgsMsgQRCodeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["code"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgQRCodeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["code"];
        out["code"] = field;
    }
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HRPoint codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHRPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645",
    maxWireBytes : 305,
    minWireBytes : 65,
    cartesianMaxWireBytes : 305n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"point_id" : 0, "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "qr_list" : [], "use_head" : false};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHRPointSize(Ros2Aimdk_msgsMsgHRPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHRPointCapture(value), n = Ros2Aimdk_msgsMsgHRPointSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHRPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 305, 90);
        if(owned.length < 65)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHRPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHRPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["point_id"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(!Array.isArray(value["qr_list"]) || value["qr_list"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["qr_list"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgQRCodeSize(element));
    }
    if(typeof value["use_head"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 305)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHRPointWrite(value, w)
{
    w.v.setInt32(w.at, value["point_id"], true);
    w.at += 4;
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint32(w.at, value["qr_list"].length, true);
    w.at += 4;
    for(const element of value["qr_list"])
    {
        Ros2Aimdk_msgsMsgQRCodeWrite(element, w);
    }
    w.v.setUint8(w.at, value["use_head"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgHRPointRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["point_id"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["qr_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgQRCodeRead(r);
                value["qr_list"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["use_head"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsMsgHRPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point_id"];
        out["point_id"] = field;
    }
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["qr_list"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgQRCodeCapture(element);
        }
        out["qr_list"] = values;
    }
    {
        const field = value["use_head"];
        out["use_head"] = field;
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
    codecIdentity : "UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"NONE" : 0, "NIMBLE_HANDS" : 1, "CLAW" : 2, "LEISAI_NIMBLE_HANDS" : 3, "ERROR" : 255}),
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
    codecIdentity : "UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5",
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

/** Complete ROS2 aimdk_msgs/msg/HandTouchSensorData codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandTouchSensorDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0",
    maxWireBytes : 152,
    minWireBytes : 152,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "palm_touch_data" : Array.from({length : 36}, () => (0)),
            "back_of_hand_touch_data" : Array.from({length : 36}, () => (0)),
            "thumb_touch_data" : Array.from({length : 16}, () => (0)),
            "index_finger_touch_data" : Array.from({length : 16}, () => (0)),
            "middle_finger_touch_data" : Array.from({length : 16}, () => (0)),
            "ring_finger_touch_data" : Array.from({length : 16}, () => (0)),
            "little_finger_touch_data" : Array.from({length : 16}, () => (0))
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgHandTouchSensorDataSize(Ros2Aimdk_msgsMsgHandTouchSensorDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgHandTouchSensorDataCapture(value), n = Ros2Aimdk_msgsMsgHandTouchSensorDataSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgHandTouchSensorDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 152)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgHandTouchSensorDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgHandTouchSensorDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["palm_touch_data"]) || value["palm_touch_data"].length !== 36)
        bad();
    for(const element of value["palm_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["back_of_hand_touch_data"]) || value["back_of_hand_touch_data"].length !== 36)
        bad();
    for(const element of value["back_of_hand_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["thumb_touch_data"]) || value["thumb_touch_data"].length !== 16)
        bad();
    for(const element of value["thumb_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["index_finger_touch_data"]) || value["index_finger_touch_data"].length !== 16)
        bad();
    for(const element of value["index_finger_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["middle_finger_touch_data"]) || value["middle_finger_touch_data"].length !== 16)
        bad();
    for(const element of value["middle_finger_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["ring_finger_touch_data"]) || value["ring_finger_touch_data"].length !== 16)
        bad();
    for(const element of value["ring_finger_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["little_finger_touch_data"]) || value["little_finger_touch_data"].length !== 16)
        bad();
    for(const element of value["little_finger_touch_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgHandTouchSensorDataWrite(value, w)
{
    for(const element of value["palm_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["back_of_hand_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["thumb_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["index_finger_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["middle_finger_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["ring_finger_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["little_finger_touch_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Aimdk_msgsMsgHandTouchSensorDataRead(r)
{
    const value = {};
    {
        {
            const count = 36;
            if(count > 36)
                bad();
            value["palm_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["palm_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 36;
            if(count > 36)
                bad();
            value["back_of_hand_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["back_of_hand_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["thumb_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["thumb_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["index_finger_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["index_finger_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["middle_finger_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["middle_finger_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["ring_finger_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ring_finger_touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["little_finger_touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["little_finger_touch_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgHandTouchSensorDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["palm_touch_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 36)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["palm_touch_data"] = values;
    }
    {
        const field = value["back_of_hand_touch_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 36)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["back_of_hand_touch_data"] = values;
    }
    {
        const field = value["thumb_touch_data"];
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
        out["thumb_touch_data"] = values;
    }
    {
        const field = value["index_finger_touch_data"];
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
        out["index_finger_touch_data"] = values;
    }
    {
        const field = value["middle_finger_touch_data"];
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
        out["middle_finger_touch_data"] = values;
    }
    {
        const field = value["ring_finger_touch_data"];
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
        out["ring_finger_touch_data"] = values;
    }
    {
        const field = value["little_finger_touch_data"];
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
        out["little_finger_touch_data"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/HandStateArray codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgHandStateArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3",
    maxWireBytes : 1778,
    minWireBytes : 338,
    cartesianMaxWireBytes : 1778n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgMessageHeaderCodec.defaultValue(),
            "left_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "left_hands" : [],
            "left_touch_sensors" : Ros2Aimdk_msgsMsgHandTouchSensorDataCodec.defaultValue(),
            "right_hand_type" : Ros2Aimdk_msgsMsgHandTypeCodec.defaultValue(),
            "right_hands" : [],
            "right_touch_sensors" : Ros2Aimdk_msgsMsgHandTouchSensorDataCodec.defaultValue()
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
        const owned = copyRaw(bytes, 1778, 90);
        if(owned.length < 338)
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
    n = addSize(n, Ros2Aimdk_msgsMsgHandTouchSensorDataSize(value["left_touch_sensors"]));
    n = addSize(n, Ros2Aimdk_msgsMsgHandTypeSize(value["right_hand_type"]));
    if(!Array.isArray(value["right_hands"]) || value["right_hands"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["right_hands"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHandStateSize(element));
    }
    n = addSize(n, Ros2Aimdk_msgsMsgHandTouchSensorDataSize(value["right_touch_sensors"]));
    if(n > 1778)
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
    Ros2Aimdk_msgsMsgHandTouchSensorDataWrite(value["left_touch_sensors"], w);
    Ros2Aimdk_msgsMsgHandTypeWrite(value["right_hand_type"], w);
    w.v.setUint32(w.at, value["right_hands"].length, true);
    w.at += 4;
    for(const element of value["right_hands"])
    {
        Ros2Aimdk_msgsMsgHandStateWrite(element, w);
    }
    Ros2Aimdk_msgsMsgHandTouchSensorDataWrite(value["right_touch_sensors"], w);
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
        const decoded = Ros2Aimdk_msgsMsgHandTouchSensorDataRead(r);
        value["left_touch_sensors"] = decoded;
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
    {
        const decoded = Ros2Aimdk_msgsMsgHandTouchSensorDataRead(r);
        value["right_touch_sensors"] = decoded;
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
        const field = value["left_touch_sensors"];
        out["left_touch_sensors"] = Ros2Aimdk_msgsMsgHandTouchSensorDataCapture(field);
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
    {
        const field = value["right_touch_sensors"];
        out["right_touch_sensors"] = Ros2Aimdk_msgsMsgHandTouchSensorDataCapture(field);
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

/** Complete ROS2 geometry_msgs/msg/Pose2D codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPose2DCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "theta" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPose2DSize(Ros2Geometry_msgsMsgPose2DCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPose2DCapture(value), n = Ros2Geometry_msgsMsgPose2DSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPose2DWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPose2DRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgPose2DSize(value)
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
    if(typeof value["theta"] !== "number" || !Number.isFinite(value["theta"]))
        bad();
    n = addSize(n, 8);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPose2DWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["theta"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgPose2DRead(r)
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
        value["theta"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPose2DCapture(value)
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
        const field = value["theta"];
        out["theta"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/NaviPoint codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgNaviPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"point_id" : 0, "navi_point" : Ros2Geometry_msgsMsgPose2DCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgNaviPointSize(Ros2Aimdk_msgsMsgNaviPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgNaviPointCapture(value), n = Ros2Aimdk_msgsMsgNaviPointSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgNaviPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgNaviPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgNaviPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["point_id"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, Ros2Geometry_msgsMsgPose2DSize(value["navi_point"]));
    if(n > 28)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgNaviPointWrite(value, w)
{
    w.v.setInt32(w.at, value["point_id"], true);
    w.at += 4;
    Ros2Geometry_msgsMsgPose2DWrite(value["navi_point"], w);
}

function Ros2Aimdk_msgsMsgNaviPointRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["point_id"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPose2DRead(r);
        value["navi_point"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgNaviPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point_id"];
        out["point_id"] = field;
    }
    {
        const field = value["navi_point"];
        out["navi_point"] = Ros2Geometry_msgsMsgPose2DCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/Path codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPathCodec = Object.freeze({
    codecIdentity : "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d",
    maxWireBytes : 104,
    minWireBytes : 8,
    cartesianMaxWireBytes : 104n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"path_id" : 0, "points" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPathSize(Ros2Aimdk_msgsMsgPathCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPathCapture(value), n = Ros2Aimdk_msgsMsgPathSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPathWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 104, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPathRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPathSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["path_id"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["points"]) || value["points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros2Geometry_msgsMsgPose2DSize(element));
    }
    if(n > 104)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPathWrite(value, w)
{
    w.v.setInt32(w.at, value["path_id"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros2Geometry_msgsMsgPose2DWrite(element, w);
    }
}

function Ros2Aimdk_msgsMsgPathRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["path_id"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPose2DRead(r);
                value["points"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsMsgPathCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["path_id"];
        out["path_id"] = field;
    }
    {
        const field = value["points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Geometry_msgsMsgPose2DCapture(element);
        }
        out["points"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/PlayStateType codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayStateTypeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"PLAYER_STATE_CLOSED" : 0, "PLAYER_STATE_PLAYING" : 1, "PLAYER_STATE_STOPED" : 2}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPlayStateTypeSize(Ros2Aimdk_msgsMsgPlayStateTypeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPlayStateTypeCapture(value), n = Ros2Aimdk_msgsMsgPlayStateTypeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPlayStateTypeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPlayStateTypeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPlayStateTypeSize(value)
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

function Ros2Aimdk_msgsMsgPlayStateTypeWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgPlayStateTypeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPlayStateTypeCapture(value)
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

/** Complete ROS2 aimdk_msgs/msg/PlayStateChange codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayStateChangeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pkg_name" : "", "state" : Ros2Aimdk_msgsMsgPlayStateTypeCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgPlayStateChangeSize(Ros2Aimdk_msgsMsgPlayStateChangeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgPlayStateChangeCapture(value), n = Ros2Aimdk_msgsMsgPlayStateChangeSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgPlayStateChangeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgPlayStateChangeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgPlayStateChangeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pkg_name"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgPlayStateTypeSize(value["state"]));
    if(n > 133)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgPlayStateChangeWrite(value, w)
{
    w.text(value["pkg_name"], 128);
    Ros2Aimdk_msgsMsgPlayStateTypeWrite(value["state"], w);
}

function Ros2Aimdk_msgsMsgPlayStateChangeRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["pkg_name"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgPlayStateTypeRead(r);
        value["state"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgPlayStateChangeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pkg_name"];
        out["pkg_name"] = field;
    }
    {
        const field = value["state"];
        out["state"] = Ros2Aimdk_msgsMsgPlayStateTypeCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/TtsPriorityLevel codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgTtsPriorityLevelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze(
        {"UNKNOWN" : 0, "BACKGROUND_L1" : 1, "SERVICE_L2" : 2, "MISSION_L4" : 4, "INTERACTION_L6" : 6, "SYSTEM_L7" : 7, "WARNING_L8" : 8, "SAFETY_L10" : 10}),
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

/** Complete ROS2 aimdk_msgs/msg/PlayTtsRequest codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgPlayTtsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72",
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
    codecIdentity : "UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82",
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
    codecIdentity : "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd",
    maxWireBytes : 1114,
    minWireBytes : 218,
    cartesianMaxWireBytes : 1114n,
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
            "fan_speed" : 0,
            "fan_pecentage" : 0,
            "pmu_temperature" : 0,
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
        const owned = copyRaw(bytes, 1114, 90);
        if(owned.length < 218)
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
    if(typeof value["fan_speed"] !== "number" || !Number.isFinite(value["fan_speed"]))
        bad();
    n = addSize(n, 8);
    integer(value["fan_pecentage"], 1, false);
    n = addSize(n, 1);
    if(typeof value["pmu_temperature"] !== "number" || !Number.isFinite(value["pmu_temperature"]))
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
    if(n > 1114)
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
    w.v.setFloat64(w.at, value["fan_speed"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["fan_pecentage"], true);
    w.at += 1;
    w.v.setFloat64(w.at, value["pmu_temperature"], true);
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
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["fan_speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["fan_pecentage"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pmu_temperature"] = decoded;
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
        const field = value["fan_speed"];
        out["fan_speed"] = field;
    }
    {
        const field = value["fan_pecentage"];
        out["fan_pecentage"] = field;
    }
    {
        const field = value["pmu_temperature"];
        out["pmu_temperature"] = field;
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

/** Complete ROS2 aimdk_msgs/msg/QRPoint codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgQRPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e",
    maxWireBytes : 64,
    minWireBytes : 64,
    cartesianMaxWireBytes : 64n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"point_id" : 0, "qr_code" : Ros2Aimdk_msgsMsgQRCodeCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgQRPointSize(Ros2Aimdk_msgsMsgQRPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgQRPointCapture(value), n = Ros2Aimdk_msgsMsgQRPointSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgQRPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 64, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgQRPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgQRPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["point_id"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, Ros2Aimdk_msgsMsgQRCodeSize(value["qr_code"]));
    if(n > 64)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgQRPointWrite(value, w)
{
    w.v.setInt32(w.at, value["point_id"], true);
    w.at += 4;
    Ros2Aimdk_msgsMsgQRCodeWrite(value["qr_code"], w);
}

function Ros2Aimdk_msgsMsgQRPointRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["point_id"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgQRCodeRead(r);
        value["qr_code"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgQRPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["point_id"];
        out["point_id"] = field;
    }
    {
        const field = value["qr_code"];
        out["qr_code"] = Ros2Aimdk_msgsMsgQRCodeCapture(field);
    }
    return out;
}

/** Complete ROS2 geometry_msgs/msg/Point32 codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPoint32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPoint32Size(Ros2Geometry_msgsMsgPoint32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPoint32Capture(value), n = Ros2Geometry_msgsMsgPoint32Size(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPoint32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPoint32Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgPoint32Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]) || !Number.isFinite(Math.fround(value["x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]) || !Number.isFinite(Math.fround(value["y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]) || !Number.isFinite(Math.fround(value["z"])))
        bad();
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPoint32Write(value, w)
{
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["z"], true);
    w.at += 4;
}

function Ros2Geometry_msgsMsgPoint32Read(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["y"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["z"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgPoint32Capture(value)
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

/** Complete ROS2 geometry_msgs/msg/Polygon codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgPolygonCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8",
    maxWireBytes : 52,
    minWireBytes : 4,
    cartesianMaxWireBytes : 52n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"points" : []};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgPolygonSize(Ros2Geometry_msgsMsgPolygonCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgPolygonCapture(value), n = Ros2Geometry_msgsMsgPolygonSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgPolygonWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 52, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgPolygonRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgPolygonSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["points"]) || value["points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros2Geometry_msgsMsgPoint32Size(element));
    }
    if(n > 52)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgPolygonWrite(value, w)
{
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros2Geometry_msgsMsgPoint32Write(element, w);
    }
}

function Ros2Geometry_msgsMsgPolygonRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Geometry_msgsMsgPoint32Read(r);
                value["points"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Geometry_msgsMsgPolygonCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Geometry_msgsMsgPoint32Capture(element);
        }
        out["points"] = values;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/Region codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgRegionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce",
    maxWireBytes : 186,
    minWireBytes : 10,
    cartesianMaxWireBytes : 186n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "REGION_UNDEFINED" : 0,
        "REGION_WORKING_SPACE" : 1,
        "REGION_VIRTUAL_WALL" : 2,
        "REGION_DRAWING_UNDEFINED" : 0,
        "REGION_DRAWING_CLOSURE" : 1,
        "REGION_DRAWING_LINES" : 2
    }),
    defaultValue() {
        return {"type" : 0, "drawing_type" : 0, "name" : "", "polygon" : Ros2Geometry_msgsMsgPolygonCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgRegionSize(Ros2Aimdk_msgsMsgRegionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgRegionCapture(value), n = Ros2Aimdk_msgsMsgRegionSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgRegionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 186, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgRegionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgRegionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    integer(value["drawing_type"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["name"], 128).length);
    n = addSize(n, Ros2Geometry_msgsMsgPolygonSize(value["polygon"]));
    if(n > 186)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgRegionWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["drawing_type"], true);
    w.at += 1;
    w.text(value["name"], 128);
    Ros2Geometry_msgsMsgPolygonWrite(value["polygon"], w);
}

function Ros2Aimdk_msgsMsgRegionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["drawing_type"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["name"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPolygonRead(r);
        value["polygon"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgRegionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["drawing_type"];
        out["drawing_type"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["polygon"];
        out["polygon"] = Ros2Geometry_msgsMsgPolygonCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/RobotResource codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgRobotResourceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d",
    maxWireBytes : 2520,
    minWireBytes : 24,
    cartesianMaxWireBytes : 2520n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"resource_key" : "", "current_version" : Ros2Aimdk_msgsMsgCurrentVersionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgRobotResourceSize(Ros2Aimdk_msgsMsgRobotResourceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgRobotResourceCapture(value), n = Ros2Aimdk_msgsMsgRobotResourceSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgRobotResourceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2520, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgRobotResourceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgRobotResourceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["resource_key"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgCurrentVersionSize(value["current_version"]));
    if(n > 2520)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgRobotResourceWrite(value, w)
{
    w.text(value["resource_key"], 128);
    Ros2Aimdk_msgsMsgCurrentVersionWrite(value["current_version"], w);
}

function Ros2Aimdk_msgsMsgRobotResourceRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["resource_key"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgCurrentVersionRead(r);
        value["current_version"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgRobotResourceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["resource_key"];
        out["resource_key"] = field;
    }
    {
        const field = value["current_version"];
        out["current_version"] = Ros2Aimdk_msgsMsgCurrentVersionCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/SlaveDevice codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgSlaveDeviceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ip" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgSlaveDeviceSize(Ros2Aimdk_msgsMsgSlaveDeviceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgSlaveDeviceCapture(value), n = Ros2Aimdk_msgsMsgSlaveDeviceSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgSlaveDeviceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgSlaveDeviceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgSlaveDeviceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ip"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsMsgSlaveDeviceWrite(value, w)
{
    w.text(value["ip"], 128);
}

function Ros2Aimdk_msgsMsgSlaveDeviceRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["ip"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgSlaveDeviceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/msg/SystemStatus codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsMsgSystemStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"IN_INITIAL" : 0, "IN_READY" : 1, "IN_MOVE" : 2, "IN_ROLLBACK" : 3, "IN_FALLBACK" : 4, "IN_FALLBACK_MOVE" : 5}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsMsgSystemStatusSize(Ros2Aimdk_msgsMsgSystemStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsMsgSystemStatusCapture(value), n = Ros2Aimdk_msgsMsgSystemStatusSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsMsgSystemStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsMsgSystemStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsMsgSystemStatusSize(value)
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

function Ros2Aimdk_msgsMsgSystemStatusWrite(value, w)
{
    w.v.setUint8(w.at, value["value"], true);
    w.at += 1;
}

function Ros2Aimdk_msgsMsgSystemStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsMsgSystemStatusCapture(value)
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

/** Complete ROS2 aimdk_msgs/srv/AbandonAudioFocus_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5",
    maxWireBytes : 148,
    minWireBytes : 20,
    cartesianMaxWireBytes : 148n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "focus_requester" : Ros2Aimdk_msgsMsgFocusRequesterCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestSize(Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCapture(value), n = Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 148, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    n = addSize(n, Ros2Aimdk_msgsMsgFocusRequesterSize(value["focus_requester"]));
    if(n > 148)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    Ros2Aimdk_msgsMsgFocusRequesterWrite(value["focus_requester"], w);
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgFocusRequesterRead(r);
        value["focus_requester"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["focus_requester"];
        out["focus_requester"] = Ros2Aimdk_msgsMsgFocusRequesterCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/AbandonAudioFocus_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "focus_response" : Ros2Aimdk_msgsMsgFocusResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseSize(Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCapture(value), n = Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    n = addSize(n, Ros2Aimdk_msgsMsgFocusResponseSize(value["focus_response"]));
    if(n > 285)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    Ros2Aimdk_msgsMsgFocusResponseWrite(value["focus_response"], w);
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgFocusResponseRead(r);
        value["focus_response"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["focus_response"];
        out["focus_response"] = Ros2Aimdk_msgsMsgFocusResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/ExecuteActionResource_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56",
    maxWireBytes : 936,
    minWireBytes : 24,
    cartesianMaxWireBytes : 936n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "resource_key" : "", "resource_version" : "", "slaves" : [], "meta" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvExecuteActionResource_RequestSize(Ros2Aimdk_msgsSrvExecuteActionResource_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvExecuteActionResource_RequestCapture(value), n = Ros2Aimdk_msgsSrvExecuteActionResource_RequestSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvExecuteActionResource_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 936, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvExecuteActionResource_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvExecuteActionResource_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["resource_key"], 128).length);
    n = addSize(n, 4 + textBytes(value["resource_version"], 128).length);
    if(!Array.isArray(value["slaves"]) || value["slaves"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["slaves"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgSlaveDeviceSize(element));
    }
    n = addSize(n, 4 + textBytes(value["meta"], 128).length);
    if(n > 936)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvExecuteActionResource_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.text(value["resource_key"], 128);
    w.text(value["resource_version"], 128);
    w.v.setUint32(w.at, value["slaves"].length, true);
    w.at += 4;
    for(const element of value["slaves"])
    {
        Ros2Aimdk_msgsMsgSlaveDeviceWrite(element, w);
    }
    w.text(value["meta"], 128);
}

function Ros2Aimdk_msgsSrvExecuteActionResource_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["resource_key"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["resource_version"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["slaves"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgSlaveDeviceRead(r);
                value["slaves"].push(decoded);
            }
        }
    }
    {
        const decoded = r.text(128);
        value["meta"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvExecuteActionResource_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["resource_key"];
        out["resource_key"] = field;
    }
    {
        const field = value["resource_version"];
        out["resource_version"] = field;
    }
    {
        const field = value["slaves"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgSlaveDeviceCapture(element);
        }
        out["slaves"] = values;
    }
    {
        const field = value["meta"];
        out["meta"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/ExecuteActionResource_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvExecuteActionResource_ResponseSize(Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCapture(value), n = Ros2Aimdk_msgsSrvExecuteActionResource_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvExecuteActionResource_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvExecuteActionResource_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvExecuteActionResource_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvExecuteActionResource_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvExecuteActionResource_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCapture(value)
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
    codecIdentity : "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2",
    maxWireBytes : 2696,
    minWireBytes : 40,
    cartesianMaxWireBytes : 2696n,
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
        const owned = copyRaw(bytes, 2696, 90);
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
    if(n > 2696)
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
    codecIdentity : "UWVMROS1_23332f9f7853b7c67f0263a4cbfc9e6f3df2aa4a7c540906f0cf304e06ec9555",
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

/** Complete ROS2 aimdk_msgs/srv/GetMicSourceRequest_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestSize(Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetMicSourceRequest_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6",
    maxWireBytes : 156,
    minWireBytes : 28,
    cartesianMaxWireBytes : 156n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "mic_source" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseSize(Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 156, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    integer(value["mic_source"], 4, false);
    n = addSize(n, 4);
    if(n > 156)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.v.setUint32(w.at, value["mic_source"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["mic_source"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["mic_source"];
        out["mic_source"] = field;
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

/** Complete ROS2 aimdk_msgs/srv/GetRobotResources_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetRobotResources_RequestSize(Ros2Aimdk_msgsSrvGetRobotResources_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetRobotResources_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetRobotResources_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetRobotResources_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetRobotResources_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetRobotResources_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetRobotResources_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvGetRobotResources_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetRobotResources_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetRobotResources_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91",
    maxWireBytes : 10236,
    minWireBytes : 28,
    cartesianMaxWireBytes : 10236n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "robot_resources" : []};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetRobotResources_ResponseSize(Ros2Aimdk_msgsSrvGetRobotResources_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetRobotResources_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetRobotResources_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetRobotResources_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10236, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetRobotResources_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetRobotResources_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(!Array.isArray(value["robot_resources"]) || value["robot_resources"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["robot_resources"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgRobotResourceSize(element));
    }
    if(n > 10236)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetRobotResources_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.v.setUint32(w.at, value["robot_resources"].length, true);
    w.at += 4;
    for(const element of value["robot_resources"])
    {
        Ros2Aimdk_msgsMsgRobotResourceWrite(element, w);
    }
}

function Ros2Aimdk_msgsSrvGetRobotResources_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["robot_resources"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgRobotResourceRead(r);
                value["robot_resources"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetRobotResources_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["robot_resources"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgRobotResourceCapture(element);
        }
        out["robot_resources"] = values;
    }
    return out;
}

/** Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(), "frame_id" : ""};
    },
    validateValue(value) {
        Ros2Std_msgsMsgHeaderSize(Ros2Std_msgsMsgHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgHeaderCapture(value), n = Ros2Std_msgsMsgHeaderSize(owned), w = new Writer(n);
        Ros2Std_msgsMsgHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Std_msgsMsgHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    n = addSize(n, 4 + textBytes(value["frame_id"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 128);
}

function Ros2Std_msgsMsgHeaderRead(r)
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
    return value;
}

function Ros2Std_msgsMsgHeaderCapture(value)
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
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetStoredMapByName_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "map_name" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetStoredMapByName_RequestSize(Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetStoredMapByName_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetStoredMapByName_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetStoredMapByName_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetStoredMapByName_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["map_name"], 128).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_RequestWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.text(value["map_name"], 128);
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["map_name"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["map_name"];
        out["map_name"] = field;
    }
    return out;
}

/** Complete ROS2 nav_msgs/msg/MapMetaData codec; maxima are not actual lengths. */
export const Ros2Nav_msgsMsgMapMetaDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009",
    maxWireBytes : 76,
    minWireBytes : 76,
    cartesianMaxWireBytes : 76n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "map_load_time" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue(),
            "resolution" : 0,
            "width" : 0,
            "height" : 0,
            "origin" : Ros2Geometry_msgsMsgPoseCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Nav_msgsMsgMapMetaDataSize(Ros2Nav_msgsMsgMapMetaDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Nav_msgsMsgMapMetaDataCapture(value), n = Ros2Nav_msgsMsgMapMetaDataSize(owned), w = new Writer(n);
        Ros2Nav_msgsMsgMapMetaDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 76, 90);
        if(owned.length < 76)
            bad();
        const r = new Reader(owned), value = Ros2Nav_msgsMsgMapMetaDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Nav_msgsMsgMapMetaDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["map_load_time"]));
    if(typeof value["resolution"] !== "number" || !Number.isFinite(value["resolution"]) || !Number.isFinite(Math.fround(value["resolution"])))
        bad();
    n = addSize(n, 4);
    integer(value["width"], 4, false);
    n = addSize(n, 4);
    integer(value["height"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["origin"]));
    if(n > 76)
        bad(90);
    return n;
}

function Ros2Nav_msgsMsgMapMetaDataWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["map_load_time"], w);
    w.v.setFloat32(w.at, value["resolution"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["width"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["height"], true);
    w.at += 4;
    Ros2Geometry_msgsMsgPoseWrite(value["origin"], w);
}

function Ros2Nav_msgsMsgMapMetaDataRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["map_load_time"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["resolution"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["width"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["origin"] = decoded;
    }
    return value;
}

function Ros2Nav_msgsMsgMapMetaDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["map_load_time"];
        out["map_load_time"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    {
        const field = value["resolution"];
        out["resolution"] = field;
    }
    {
        const field = value["width"];
        out["width"] = field;
    }
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["origin"];
        out["origin"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetStoredMapByName_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb",
    maxWireBytes : 3400,
    minWireBytes : 140,
    cartesianMaxWireBytes : 3400n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "code" : 0n,
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "map_info" : Ros2Nav_msgsMsgMapMetaDataCodec.defaultValue(),
            "map_version" : 0n,
            "map_path" : "",
            "data" : [],
            "navi_points" : [],
            "qr_points" : [],
            "hr_points" : [],
            "paths" : [],
            "regions" : [],
            "map_id" : 0n
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseSize(Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3400, 90);
        if(owned.length < 140)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["code"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, Ros2Nav_msgsMsgMapMetaDataSize(value["map_info"]));
    integer(value["map_version"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, 4 + textBytes(value["map_path"], 128).length);
    if(!Array.isArray(value["data"]) || value["data"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["navi_points"]) || value["navi_points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["navi_points"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgNaviPointSize(element));
    }
    if(!Array.isArray(value["qr_points"]) || value["qr_points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["qr_points"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgQRPointSize(element));
    }
    if(!Array.isArray(value["hr_points"]) || value["hr_points"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["hr_points"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgHRPointSize(element));
    }
    if(!Array.isArray(value["paths"]) || value["paths"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["paths"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgPathSize(element));
    }
    if(!Array.isArray(value["regions"]) || value["regions"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["regions"])
    {
        n = addSize(n, Ros2Aimdk_msgsMsgRegionSize(element));
    }
    integer(value["map_id"], 8, false);
    n = addSize(n, 8);
    if(n > 3400)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseWrite(value, w)
{
    w.v.setBigUint64(w.at, value["code"], true);
    w.at += 8;
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    Ros2Nav_msgsMsgMapMetaDataWrite(value["map_info"], w);
    w.v.setBigUint64(w.at, value["map_version"], true);
    w.at += 8;
    w.text(value["map_path"], 128);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["navi_points"].length, true);
    w.at += 4;
    for(const element of value["navi_points"])
    {
        Ros2Aimdk_msgsMsgNaviPointWrite(element, w);
    }
    w.v.setUint32(w.at, value["qr_points"].length, true);
    w.at += 4;
    for(const element of value["qr_points"])
    {
        Ros2Aimdk_msgsMsgQRPointWrite(element, w);
    }
    w.v.setUint32(w.at, value["hr_points"].length, true);
    w.at += 4;
    for(const element of value["hr_points"])
    {
        Ros2Aimdk_msgsMsgHRPointWrite(element, w);
    }
    w.v.setUint32(w.at, value["paths"].length, true);
    w.at += 4;
    for(const element of value["paths"])
    {
        Ros2Aimdk_msgsMsgPathWrite(element, w);
    }
    w.v.setUint32(w.at, value["regions"].length, true);
    w.at += 4;
    for(const element of value["regions"])
    {
        Ros2Aimdk_msgsMsgRegionWrite(element, w);
    }
    w.v.setBigUint64(w.at, value["map_id"], true);
    w.at += 8;
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["code"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2Nav_msgsMsgMapMetaDataRead(r);
        value["map_info"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["map_version"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["map_path"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["data"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["navi_points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgNaviPointRead(r);
                value["navi_points"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["qr_points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgQRPointRead(r);
                value["qr_points"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["hr_points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgHRPointRead(r);
                value["hr_points"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["paths"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgPathRead(r);
                value["paths"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["regions"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Aimdk_msgsMsgRegionRead(r);
                value["regions"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["map_id"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["code"];
        out["code"] = field;
    }
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["map_info"];
        out["map_info"] = Ros2Nav_msgsMsgMapMetaDataCapture(field);
    }
    {
        const field = value["map_version"];
        out["map_version"] = field;
    }
    {
        const field = value["map_path"];
        out["map_path"] = field;
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    {
        const field = value["navi_points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgNaviPointCapture(element);
        }
        out["navi_points"] = values;
    }
    {
        const field = value["qr_points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgQRPointCapture(element);
        }
        out["qr_points"] = values;
    }
    {
        const field = value["hr_points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgHRPointCapture(element);
        }
        out["hr_points"] = values;
    }
    {
        const field = value["paths"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgPathCapture(element);
        }
        out["paths"] = values;
    }
    {
        const field = value["regions"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Aimdk_msgsMsgRegionCapture(element);
        }
        out["regions"] = values;
    }
    {
        const field = value["map_id"];
        out["map_id"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetSystemState_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetSystemState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetSystemState_RequestSize(Ros2Aimdk_msgsSrvGetSystemState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetSystemState_RequestCapture(value), n = Ros2Aimdk_msgsSrvGetSystemState_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetSystemState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetSystemState_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetSystemState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetSystemState_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvGetSystemState_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetSystemState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/GetSystemState_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(),
            "cur_state" : "",
            "curr_status" : Ros2Aimdk_msgsMsgSystemStatusCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvGetSystemState_ResponseSize(Ros2Aimdk_msgsSrvGetSystemState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvGetSystemState_ResponseCapture(value), n = Ros2Aimdk_msgsSrvGetSystemState_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvGetSystemState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvGetSystemState_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvGetSystemState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["cur_state"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgSystemStatusSize(value["curr_status"]));
    if(n > 285)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvGetSystemState_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.text(value["cur_state"], 128);
    Ros2Aimdk_msgsMsgSystemStatusWrite(value["curr_status"], w);
}

function Ros2Aimdk_msgsSrvGetSystemState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["cur_state"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgSystemStatusRead(r);
        value["curr_status"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvGetSystemState_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["cur_state"];
        out["cur_state"] = field;
    }
    {
        const field = value["curr_status"];
        out["curr_status"] = Ros2Aimdk_msgsMsgSystemStatusCapture(field);
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

/** Complete ROS2 aimdk_msgs/srv/MigrateSystemState_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b",
    maxWireBytes : 140,
    minWireBytes : 12,
    cartesianMaxWireBytes : 140n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "state" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvMigrateSystemState_RequestSize(Ros2Aimdk_msgsSrvMigrateSystemState_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvMigrateSystemState_RequestCapture(value), n = Ros2Aimdk_msgsSrvMigrateSystemState_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvMigrateSystemState_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 140, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvMigrateSystemState_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvMigrateSystemState_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["state"], 128).length);
    if(n > 140)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvMigrateSystemState_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.text(value["state"], 128);
}

function Ros2Aimdk_msgsSrvMigrateSystemState_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["state"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvMigrateSystemState_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/MigrateSystemState_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvMigrateSystemState_ResponseSize(Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCapture(value), n = Ros2Aimdk_msgsSrvMigrateSystemState_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvMigrateSystemState_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvMigrateSystemState_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvMigrateSystemState_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvMigrateSystemState_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvMigrateSystemState_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCapture(value)
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

/** Complete ROS2 aimdk_msgs/srv/PlayAudioFile_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1",
    maxWireBytes : 693,
    minWireBytes : 53,
    cartesianMaxWireBytes : 693n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(),
            "file" : Ros2Aimdk_msgsMsgAudioFileCodec.defaultValue(),
            "play_stamps" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayAudioFile_RequestSize(Ros2Aimdk_msgsSrvPlayAudioFile_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayAudioFile_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayAudioFile_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayAudioFile_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 693, 90);
        if(owned.length < 53)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayAudioFile_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayAudioFile_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    n = addSize(n, Ros2Aimdk_msgsMsgAudioFileSize(value["file"]));
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["play_stamps"]));
    if(n > 693)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayAudioFile_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    Ros2Aimdk_msgsMsgAudioFileWrite(value["file"], w);
    Ros2Builtin_interfacesMsgTimeWrite(value["play_stamps"], w);
}

function Ros2Aimdk_msgsSrvPlayAudioFile_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgAudioFileRead(r);
        value["file"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["play_stamps"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayAudioFile_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["file"];
        out["file"] = Ros2Aimdk_msgsMsgAudioFileCapture(field);
    }
    {
        const field = value["play_stamps"];
        out["play_stamps"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/PlayAudioFile_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayAudioFile_ResponseSize(Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayAudioFile_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayAudioFile_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayAudioFile_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayAudioFile_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayAudioFile_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
}

function Ros2Aimdk_msgsSrvPlayAudioFile_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
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

/** Complete ROS2 aimdk_msgs/srv/PlayTts_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayTts_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989",
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
    codecIdentity : "UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6",
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

/** Complete ROS2 aimdk_msgs/srv/PlayVideoGroup_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473",
    maxWireBytes : 2129,
    minWireBytes : 17,
    cartesianMaxWireBytes : 2129n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"EMOTION_MODE_ONCE" : 1, "EMOTION_MODE_LOOP" : 2}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "video_path_list" : [], "mode" : 0, "priority" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayVideoGroup_RequestSize(Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCapture(value), n = Ros2Aimdk_msgsSrvPlayVideoGroup_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayVideoGroup_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2129, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayVideoGroup_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayVideoGroup_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    if(!Array.isArray(value["video_path_list"]) || value["video_path_list"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["video_path_list"])
    {
        n = addSize(n, 4 + textBytes(element, 128).length);
    }
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    if(n > 2129)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvPlayVideoGroup_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.v.setUint32(w.at, value["video_path_list"].length, true);
    w.at += 4;
    for(const element of value["video_path_list"])
    {
        w.text(element, 128);
    }
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvPlayVideoGroup_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["video_path_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(128);
                value["video_path_list"].push(decoded);
            }
        }
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

function Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["video_path_list"];
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
        out["video_path_list"] = values;
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

/** Complete ROS2 aimdk_msgs/srv/PlayVideoGroup_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "success" : false, "message" : ""};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseSize(Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCapture(value), n = Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseSize(value)
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

function Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["message"], 128);
}

function Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseRead(r)
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

function Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCapture(value)
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

/** Complete ROS2 aimdk_msgs/srv/RequestAudioFocus_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a",
    maxWireBytes : 148,
    minWireBytes : 20,
    cartesianMaxWireBytes : 148n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "focus_requester" : Ros2Aimdk_msgsMsgFocusRequesterCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvRequestAudioFocus_RequestSize(Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCapture(value), n = Ros2Aimdk_msgsSrvRequestAudioFocus_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvRequestAudioFocus_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 148, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvRequestAudioFocus_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvRequestAudioFocus_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    n = addSize(n, Ros2Aimdk_msgsMsgFocusRequesterSize(value["focus_requester"]));
    if(n > 148)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    Ros2Aimdk_msgsMsgFocusRequesterWrite(value["focus_requester"], w);
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgFocusRequesterRead(r);
        value["focus_requester"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["focus_requester"];
        out["focus_requester"] = Ros2Aimdk_msgsMsgFocusRequesterCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/RequestAudioFocus_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180",
    maxWireBytes : 285,
    minWireBytes : 29,
    cartesianMaxWireBytes : 285n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"reponse" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue(), "focus_response" : Ros2Aimdk_msgsMsgFocusResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseSize(Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCapture(value), n = Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 285, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["reponse"]));
    n = addSize(n, Ros2Aimdk_msgsMsgFocusResponseSize(value["focus_response"]));
    if(n > 285)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["reponse"], w);
    Ros2Aimdk_msgsMsgFocusResponseWrite(value["focus_response"], w);
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["reponse"] = decoded;
    }
    {
        const decoded = Ros2Aimdk_msgsMsgFocusResponseRead(r);
        value["focus_response"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["reponse"];
        out["reponse"] = Ros2Aimdk_msgsMsgCommonResponseCapture(field);
    }
    {
        const field = value["focus_response"];
        out["focus_response"] = Ros2Aimdk_msgsMsgFocusResponseCapture(field);
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8",
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
    codecIdentity : "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246",
    maxWireBytes : 276,
    minWireBytes : 20,
    cartesianMaxWireBytes : 276n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgRequestHeaderCodec.defaultValue(), "source" : "", "command" : Ros2Aimdk_msgsMsgMcActionCommandCodec.defaultValue()};
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
        const owned = copyRaw(bytes, 276, 90);
        if(owned.length < 20)
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
    n = addSize(n, 4 + textBytes(value["source"], 128).length);
    n = addSize(n, Ros2Aimdk_msgsMsgMcActionCommandSize(value["command"]));
    if(n > 276)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMcAction_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgRequestHeaderWrite(value["header"], w);
    w.text(value["source"], 128);
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
        const decoded = r.text(128);
        value["source"] = decoded;
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
        const field = value["source"];
        out["source"] = field;
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
    codecIdentity : "UWVMROS1_d16880d0ae7ae0801056a3e9632a8a272813d0e206420199c9463987586b2547",
    maxWireBytes : 157,
    minWireBytes : 29,
    cartesianMaxWireBytes : 157n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Aimdk_msgsMsgRequestHeaderCodec.defaultValue(),
            "area" : Ros2Aimdk_msgsMsgMcControlAreaCodec.defaultValue(),
            "motion" : Ros2Aimdk_msgsMsgMcPresetMotionCodec.defaultValue(),
            "interrupt" : false,
            "ani_path" : "",
            "play_timestamp" : 0n
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
        const owned = copyRaw(bytes, 157, 90);
        if(owned.length < 29)
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
    integer(value["play_timestamp"], 8, false);
    n = addSize(n, 8);
    if(n > 157)
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
    w.v.setBigUint64(w.at, value["play_timestamp"], true);
    w.at += 8;
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
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["play_timestamp"] = decoded;
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
    {
        const field = value["play_timestamp"];
        out["play_timestamp"] = field;
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

/** Complete ROS2 aimdk_msgs/srv/SetMicSourceRequest_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(), "mic_source" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestSize(Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["header"]));
    integer(value["mic_source"], 4, false);
    n = addSize(n, 4);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["header"], w);
    w.v.setUint32(w.at, value["mic_source"], true);
    w.at += 4;
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["mic_source"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["mic_source"];
        out["mic_source"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetMicSourceRequest_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02",
    maxWireBytes : 152,
    minWireBytes : 24,
    cartesianMaxWireBytes : 152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgCommonResponseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseSize(Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseSize(owned),
              w = new Writer(n);
        Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 152, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonResponseSize(value["header"]));
    if(n > 152)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonResponseWrite(value["header"], w);
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonResponseRead(r);
        value["header"] = decoded;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCapture(value)
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

/** Complete ROS2 aimdk_msgs/srv/SetPmuLed_Request codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e",
    maxWireBytes : 149,
    minWireBytes : 21,
    cartesianMaxWireBytes : 149n,
    aggregateWireBytes : 0,
    constants : Object.freeze(
        {"LED_STRIP_MODE_CONSTANT" : 0, "LED_STRIP_MODE_BREATH" : 1, "LED_STRIP_MODE_FLASH" : 2, "LED_STRIP_MODE_FLOW" : 3, "LED_STRIP_MODE_MAX" : 4}),
    defaultValue() {
        return {
            "request" : Ros2Aimdk_msgsMsgCommonRequestCodec.defaultValue(),
            "trace_id" : "",
            "led_strip_mode" : 0,
            "r" : 0,
            "g" : 0,
            "b" : 0,
            "priority" : 0,
            "reset_priority" : false
        };
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetPmuLed_RequestSize(Ros2Aimdk_msgsSrvSetPmuLed_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetPmuLed_RequestCapture(value), n = Ros2Aimdk_msgsSrvSetPmuLed_RequestSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetPmuLed_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 149, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetPmuLed_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetPmuLed_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Aimdk_msgsMsgCommonRequestSize(value["request"]));
    n = addSize(n, 4 + textBytes(value["trace_id"], 128).length);
    integer(value["led_strip_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["r"], 1, false);
    n = addSize(n, 1);
    integer(value["g"], 1, false);
    n = addSize(n, 1);
    integer(value["b"], 1, false);
    n = addSize(n, 1);
    integer(value["priority"], 4, true);
    n = addSize(n, 4);
    if(typeof value["reset_priority"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 149)
        bad(90);
    return n;
}

function Ros2Aimdk_msgsSrvSetPmuLed_RequestWrite(value, w)
{
    Ros2Aimdk_msgsMsgCommonRequestWrite(value["request"], w);
    w.text(value["trace_id"], 128);
    w.v.setUint8(w.at, value["led_strip_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["r"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["g"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["b"], true);
    w.at += 1;
    w.v.setInt32(w.at, value["priority"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["reset_priority"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Aimdk_msgsSrvSetPmuLed_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Aimdk_msgsMsgCommonRequestRead(r);
        value["request"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["trace_id"] = decoded;
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
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["priority"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["reset_priority"] = decoded !== 0;
    }
    return value;
}

function Ros2Aimdk_msgsSrvSetPmuLed_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["request"];
        out["request"] = Ros2Aimdk_msgsMsgCommonRequestCapture(field);
    }
    {
        const field = value["trace_id"];
        out["trace_id"] = field;
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
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    {
        const field = value["reset_priority"];
        out["reset_priority"] = field;
    }
    return out;
}

/** Complete ROS2 aimdk_msgs/srv/SetPmuLed_Response codec; maxima are not actual lengths. */
export const Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28",
    maxWireBytes : 18,
    minWireBytes : 18,
    cartesianMaxWireBytes : 18n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Aimdk_msgsMsgResponseHeaderCodec.defaultValue(), "status_code" : 0};
    },
    validateValue(value) {
        Ros2Aimdk_msgsSrvSetPmuLed_ResponseSize(Ros2Aimdk_msgsSrvSetPmuLed_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Aimdk_msgsSrvSetPmuLed_ResponseCapture(value), n = Ros2Aimdk_msgsSrvSetPmuLed_ResponseSize(owned), w = new Writer(n);
        Ros2Aimdk_msgsSrvSetPmuLed_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 18, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Aimdk_msgsSrvSetPmuLed_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Aimdk_msgsSrvSetPmuLed_ResponseSize(value)
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

function Ros2Aimdk_msgsSrvSetPmuLed_ResponseWrite(value, w)
{
    Ros2Aimdk_msgsMsgResponseHeaderWrite(value["header"], w);
    w.v.setUint16(w.at, value["status_code"], true);
    w.at += 2;
}

function Ros2Aimdk_msgsSrvSetPmuLed_ResponseRead(r)
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

function Ros2Aimdk_msgsSrvSetPmuLed_ResponseCapture(value)
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
