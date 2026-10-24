/**
 * @brief Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
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

/** @brief Complete ROS2 builtin_interfaces/msg/Duration codec; maxima are not actual lengths. */
export const Ros2Builtin_interfacesMsgDurationCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nanosec" : 0};
    },
    validateValue(value) {
        Ros2Builtin_interfacesMsgDurationSize(Ros2Builtin_interfacesMsgDurationCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Builtin_interfacesMsgDurationCapture(value), n = Ros2Builtin_interfacesMsgDurationSize(owned), w = new Writer(n);
        Ros2Builtin_interfacesMsgDurationWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Builtin_interfacesMsgDurationRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Builtin_interfacesMsgDurationSize(value)
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

function Ros2Builtin_interfacesMsgDurationWrite(value, w)
{
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nanosec"], true);
    w.at += 4;
}

function Ros2Builtin_interfacesMsgDurationRead(r)
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

function Ros2Builtin_interfacesMsgDurationCapture(value)
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

/** @brief Complete ROS2 builtin_interfaces/msg/Time codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 std_msgs/msg/ColorRGBA codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgColorRGBACodec = Object.freeze({
    codecIdentity : "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"r" : 0, "g" : 0, "b" : 0, "a" : 0};
    },
    validateValue(value) {
        Ros2Std_msgsMsgColorRGBASize(Ros2Std_msgsMsgColorRGBACapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgColorRGBACapture(value), n = Ros2Std_msgsMsgColorRGBASize(owned), w = new Writer(n);
        Ros2Std_msgsMsgColorRGBAWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgColorRGBARead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Std_msgsMsgColorRGBASize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["r"] !== "number" || !Number.isFinite(value["r"]) || !Number.isFinite(Math.fround(value["r"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["g"] !== "number" || !Number.isFinite(value["g"]) || !Number.isFinite(Math.fround(value["g"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["b"] !== "number" || !Number.isFinite(value["b"]) || !Number.isFinite(Math.fround(value["b"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["a"] !== "number" || !Number.isFinite(value["a"]) || !Number.isFinite(Math.fround(value["a"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgColorRGBAWrite(value, w)
{
    w.v.setFloat32(w.at, value["r"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["g"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["b"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["a"], true);
    w.at += 4;
}

function Ros2Std_msgsMsgColorRGBARead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["r"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["g"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["b"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["a"] = decoded;
    }
    return value;
}

function Ros2Std_msgsMsgColorRGBACapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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
        const field = value["a"];
        out["a"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedFixedColorParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedFixedColorParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedFixedColorParamsSize(Ros2Pal_device_msgsMsgLedFixedColorParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedFixedColorParamsCapture(value), n = Ros2Pal_device_msgsMsgLedFixedColorParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedFixedColorParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedFixedColorParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedFixedColorParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["color"]));
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedFixedColorParamsWrite(value, w)
{
    Ros2Std_msgsMsgColorRGBAWrite(value["color"], w);
}

function Ros2Pal_device_msgsMsgLedFixedColorParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["color"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedFixedColorParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["color"];
        out["color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedRainbowParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedRainbowParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"transition_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedRainbowParamsSize(Ros2Pal_device_msgsMsgLedRainbowParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedRainbowParamsCapture(value), n = Ros2Pal_device_msgsMsgLedRainbowParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedRainbowParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedRainbowParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedRainbowParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["transition_duration"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedRainbowParamsWrite(value, w)
{
    Ros2Builtin_interfacesMsgDurationWrite(value["transition_duration"], w);
}

function Ros2Pal_device_msgsMsgLedRainbowParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["transition_duration"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedRainbowParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["transition_duration"];
        out["transition_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedFadeParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedFadeParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5",
    maxWireBytes : 41,
    minWireBytes : 41,
    cartesianMaxWireBytes : 41n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "transition_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "reverse_fade" : false
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedFadeParamsSize(Ros2Pal_device_msgsMsgLedFadeParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedFadeParamsCapture(value), n = Ros2Pal_device_msgsMsgLedFadeParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedFadeParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 41, 90);
        if(owned.length < 41)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedFadeParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedFadeParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["transition_duration"]));
    if(typeof value["reverse_fade"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 41)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedFadeParamsWrite(value, w)
{
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["transition_duration"], w);
    w.v.setUint8(w.at, value["reverse_fade"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Pal_device_msgsMsgLedFadeParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["transition_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["reverse_fade"] = decoded !== 0;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedFadeParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["transition_duration"];
        out["transition_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["reverse_fade"];
        out["reverse_fade"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedBlinkParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedBlinkParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "first_color_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "second_color_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedBlinkParamsSize(Ros2Pal_device_msgsMsgLedBlinkParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedBlinkParamsCapture(value), n = Ros2Pal_device_msgsMsgLedBlinkParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedBlinkParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedBlinkParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedBlinkParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["first_color_duration"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["second_color_duration"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedBlinkParamsWrite(value, w)
{
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["first_color_duration"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["second_color_duration"], w);
}

function Ros2Pal_device_msgsMsgLedBlinkParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["first_color_duration"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["second_color_duration"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedBlinkParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["first_color_duration"];
        out["first_color_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["second_color_duration"];
        out["second_color_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedProgressParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedProgressParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "percentage" : 0,
            "led_offset" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedProgressParamsSize(Ros2Pal_device_msgsMsgLedProgressParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedProgressParamsCapture(value), n = Ros2Pal_device_msgsMsgLedProgressParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedProgressParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedProgressParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedProgressParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    if(typeof value["percentage"] !== "number" || !Number.isFinite(value["percentage"]) || !Number.isFinite(Math.fround(value["percentage"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["led_offset"] !== "number" || !Number.isFinite(value["led_offset"]) || !Number.isFinite(Math.fround(value["led_offset"])))
        bad();
    n = addSize(n, 4);
    if(n > 40)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedProgressParamsWrite(value, w)
{
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    w.v.setFloat32(w.at, value["percentage"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["led_offset"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsMsgLedProgressParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["percentage"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["led_offset"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedProgressParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["percentage"];
        out["percentage"] = field;
    }
    {
        const field = value["led_offset"];
        out["led_offset"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedFlowParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedFlowParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "percentage" : 0,
            "velocity" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedFlowParamsSize(Ros2Pal_device_msgsMsgLedFlowParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedFlowParamsCapture(value), n = Ros2Pal_device_msgsMsgLedFlowParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedFlowParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedFlowParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedFlowParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    if(typeof value["percentage"] !== "number" || !Number.isFinite(value["percentage"]) || !Number.isFinite(Math.fround(value["percentage"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]) || !Number.isFinite(Math.fround(value["velocity"])))
        bad();
    n = addSize(n, 4);
    if(n > 40)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedFlowParamsWrite(value, w)
{
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    w.v.setFloat32(w.at, value["percentage"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["velocity"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsMsgLedFlowParamsRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["percentage"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedFlowParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["percentage"];
        out["percentage"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedPreProgrammedParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedPreProgrammedParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"preprogrammed_id" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedPreProgrammedParamsSize(Ros2Pal_device_msgsMsgLedPreProgrammedParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedPreProgrammedParamsCapture(value), n = Ros2Pal_device_msgsMsgLedPreProgrammedParamsSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsMsgLedPreProgrammedParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedPreProgrammedParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedPreProgrammedParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["preprogrammed_id"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedPreProgrammedParamsWrite(value, w)
{
    w.v.setUint8(w.at, value["preprogrammed_id"], true);
    w.at += 1;
}

function Ros2Pal_device_msgsMsgLedPreProgrammedParamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["preprogrammed_id"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedPreProgrammedParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["preprogrammed_id"];
        out["preprogrammed_id"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedEffectViaTopicParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"topic_name" : ""};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedEffectViaTopicParamsSize(Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCapture(value), n = Ros2Pal_device_msgsMsgLedEffectViaTopicParamsSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsMsgLedEffectViaTopicParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedEffectViaTopicParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedEffectViaTopicParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["topic_name"], 128).length);
    if(n > 132)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedEffectViaTopicParamsWrite(value, w)
{
    w.text(value["topic_name"], 128);
}

function Ros2Pal_device_msgsMsgLedEffectViaTopicParamsRead(r)
{
    const value = {};
    {
        const decoded = r.text(128);
        value["topic_name"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["topic_name"];
        out["topic_name"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedDataArrayParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedDataArrayParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : []};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedDataArrayParamsSize(Ros2Pal_device_msgsMsgLedDataArrayParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedDataArrayParamsCapture(value), n = Ros2Pal_device_msgsMsgLedDataArrayParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedDataArrayParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedDataArrayParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedDataArrayParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["data"]) || value["data"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        n = addSize(n, Ros2Std_msgsMsgColorRGBASize(element));
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedDataArrayParamsWrite(value, w)
{
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        Ros2Std_msgsMsgColorRGBAWrite(element, w);
    }
}

function Ros2Pal_device_msgsMsgLedDataArrayParamsRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Std_msgsMsgColorRGBARead(r);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedDataArrayParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Std_msgsMsgColorRGBACapture(element);
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedEffectParams codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedEffectParamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848",
    maxWireBytes : 395,
    minWireBytes : 203,
    cartesianMaxWireBytes : 395n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "FIXED_COLOR" : 0,
        "RAINBOW" : 1,
        "FADE" : 2,
        "BLINK" : 3,
        "PROGRESS" : 4,
        "FLOW" : 5,
        "PREPROGRAMMED_EFFECT" : 6,
        "EFFECT_VIA_TOPIC" : 7,
        "DATA_ARRAY" : 8
    }),
    defaultValue() {
        return {
            "effect_type" : 0,
            "fixed_color" : Ros2Pal_device_msgsMsgLedFixedColorParamsCodec.defaultValue(),
            "rainbow" : Ros2Pal_device_msgsMsgLedRainbowParamsCodec.defaultValue(),
            "fade" : Ros2Pal_device_msgsMsgLedFadeParamsCodec.defaultValue(),
            "blink" : Ros2Pal_device_msgsMsgLedBlinkParamsCodec.defaultValue(),
            "progress" : Ros2Pal_device_msgsMsgLedProgressParamsCodec.defaultValue(),
            "flow" : Ros2Pal_device_msgsMsgLedFlowParamsCodec.defaultValue(),
            "preprogrammed" : Ros2Pal_device_msgsMsgLedPreProgrammedParamsCodec.defaultValue(),
            "effect_via_topic" : Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodec.defaultValue(),
            "data_array" : Ros2Pal_device_msgsMsgLedDataArrayParamsCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedEffectParamsSize(Ros2Pal_device_msgsMsgLedEffectParamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedEffectParamsCapture(value), n = Ros2Pal_device_msgsMsgLedEffectParamsSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedEffectParamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 395, 90);
        if(owned.length < 203)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedEffectParamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedEffectParamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["effect_type"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, Ros2Pal_device_msgsMsgLedFixedColorParamsSize(value["fixed_color"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedRainbowParamsSize(value["rainbow"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedFadeParamsSize(value["fade"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedBlinkParamsSize(value["blink"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedProgressParamsSize(value["progress"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedFlowParamsSize(value["flow"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedPreProgrammedParamsSize(value["preprogrammed"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedEffectViaTopicParamsSize(value["effect_via_topic"]));
    n = addSize(n, Ros2Pal_device_msgsMsgLedDataArrayParamsSize(value["data_array"]));
    if(n > 395)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedEffectParamsWrite(value, w)
{
    w.v.setUint8(w.at, value["effect_type"], true);
    w.at += 1;
    Ros2Pal_device_msgsMsgLedFixedColorParamsWrite(value["fixed_color"], w);
    Ros2Pal_device_msgsMsgLedRainbowParamsWrite(value["rainbow"], w);
    Ros2Pal_device_msgsMsgLedFadeParamsWrite(value["fade"], w);
    Ros2Pal_device_msgsMsgLedBlinkParamsWrite(value["blink"], w);
    Ros2Pal_device_msgsMsgLedProgressParamsWrite(value["progress"], w);
    Ros2Pal_device_msgsMsgLedFlowParamsWrite(value["flow"], w);
    Ros2Pal_device_msgsMsgLedPreProgrammedParamsWrite(value["preprogrammed"], w);
    Ros2Pal_device_msgsMsgLedEffectViaTopicParamsWrite(value["effect_via_topic"], w);
    Ros2Pal_device_msgsMsgLedDataArrayParamsWrite(value["data_array"], w);
}

function Ros2Pal_device_msgsMsgLedEffectParamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["effect_type"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedFixedColorParamsRead(r);
        value["fixed_color"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedRainbowParamsRead(r);
        value["rainbow"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedFadeParamsRead(r);
        value["fade"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedBlinkParamsRead(r);
        value["blink"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedProgressParamsRead(r);
        value["progress"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedFlowParamsRead(r);
        value["flow"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedPreProgrammedParamsRead(r);
        value["preprogrammed"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedEffectViaTopicParamsRead(r);
        value["effect_via_topic"] = decoded;
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedDataArrayParamsRead(r);
        value["data_array"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedEffectParamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["effect_type"];
        out["effect_type"] = field;
    }
    {
        const field = value["fixed_color"];
        out["fixed_color"] = Ros2Pal_device_msgsMsgLedFixedColorParamsCapture(field);
    }
    {
        const field = value["rainbow"];
        out["rainbow"] = Ros2Pal_device_msgsMsgLedRainbowParamsCapture(field);
    }
    {
        const field = value["fade"];
        out["fade"] = Ros2Pal_device_msgsMsgLedFadeParamsCapture(field);
    }
    {
        const field = value["blink"];
        out["blink"] = Ros2Pal_device_msgsMsgLedBlinkParamsCapture(field);
    }
    {
        const field = value["progress"];
        out["progress"] = Ros2Pal_device_msgsMsgLedProgressParamsCapture(field);
    }
    {
        const field = value["flow"];
        out["flow"] = Ros2Pal_device_msgsMsgLedFlowParamsCapture(field);
    }
    {
        const field = value["preprogrammed"];
        out["preprogrammed"] = Ros2Pal_device_msgsMsgLedPreProgrammedParamsCapture(field);
    }
    {
        const field = value["effect_via_topic"];
        out["effect_via_topic"] = Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCapture(field);
    }
    {
        const field = value["data_array"];
        out["data_array"] = Ros2Pal_device_msgsMsgLedDataArrayParamsCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Goal codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2",
    maxWireBytes : 472,
    minWireBytes : 216,
    cartesianMaxWireBytes : 472n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "devices" : [],
            "params" : Ros2Pal_device_msgsMsgLedEffectParamsCodec.defaultValue(),
            "effect_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "priority" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsActionDoTimedLedEffect_GoalSize(Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCapture(value), n = Ros2Pal_device_msgsActionDoTimedLedEffect_GoalSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsActionDoTimedLedEffect_GoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 472, 90);
        if(owned.length < 216)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsActionDoTimedLedEffect_GoalRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsActionDoTimedLedEffect_GoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["devices"]) || value["devices"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["devices"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    n = addSize(n, Ros2Pal_device_msgsMsgLedEffectParamsSize(value["params"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["effect_duration"]));
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    if(n > 472)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_GoalWrite(value, w)
{
    w.v.setUint32(w.at, value["devices"].length, true);
    w.at += 4;
    for(const element of value["devices"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    Ros2Pal_device_msgsMsgLedEffectParamsWrite(value["params"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["effect_duration"], w);
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_GoalRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["devices"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["devices"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Pal_device_msgsMsgLedEffectParamsRead(r);
        value["params"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["effect_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["devices"];
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
        out["devices"] = values;
    }
    {
        const field = value["params"];
        out["params"] = Ros2Pal_device_msgsMsgLedEffectParamsCapture(field);
    }
    {
        const field = value["effect_duration"];
        out["effect_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Result codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Pal_device_msgsActionDoTimedLedEffect_ResultSize(Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCapture(value), n = Ros2Pal_device_msgsActionDoTimedLedEffect_ResultSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsActionDoTimedLedEffect_ResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsActionDoTimedLedEffect_ResultRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsActionDoTimedLedEffect_ResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_ResultWrite(value, w)
{
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_ResultRead(r)
{
    const value = {};
    return value;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Feedback codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackSize(Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCapture(value), n = Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackWrite(value, w)
{
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackRead(r)
{
    const value = {};
    return value;
}

function Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/BatteryState codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgBatteryStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"FULL" : 5, "HIGH" : 4, "MEDIUM" : 3, "LOW" : 2, "CRITICAL_LOW" : 1}),
    defaultValue() {
        return {"charge_state" : 0, "battery_percentage" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgBatteryStateSize(Ros2Pal_device_msgsMsgBatteryStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgBatteryStateCapture(value), n = Ros2Pal_device_msgsMsgBatteryStateSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgBatteryStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgBatteryStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgBatteryStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["charge_state"], 1, true);
    n = addSize(n, 1);
    if(typeof value["battery_percentage"] !== "number" || !Number.isFinite(value["battery_percentage"]) ||
       !Number.isFinite(Math.fround(value["battery_percentage"])))
        bad();
    n = addSize(n, 4);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgBatteryStateWrite(value, w)
{
    w.v.setInt8(w.at, value["charge_state"], true);
    w.at += 1;
    w.v.setFloat32(w.at, value["battery_percentage"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsMsgBatteryStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["charge_state"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["battery_percentage"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgBatteryStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["charge_state"];
        out["charge_state"] = field;
    }
    {
        const field = value["battery_percentage"];
        out["battery_percentage"] = field;
    }
    return out;
}

/** @brief Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 pal_device_msgs/msg/Bumper codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgBumperCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022",
    maxWireBytes : 141,
    minWireBytes : 13,
    cartesianMaxWireBytes : 141n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "is_pressed" : false};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgBumperSize(Ros2Pal_device_msgsMsgBumperCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgBumperCapture(value), n = Ros2Pal_device_msgsMsgBumperSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgBumperWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 141, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgBumperRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgBumperSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(typeof value["is_pressed"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 141)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgBumperWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint8(w.at, value["is_pressed"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Pal_device_msgsMsgBumperRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_pressed"] = decoded !== 0;
    }
    return value;
}

function Ros2Pal_device_msgsMsgBumperCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["is_pressed"];
        out["is_pressed"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/msg/LedGroup codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsMsgLedGroupCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"LEFT_EAR" : 1, "RIGHT_EAR" : 2}),
    defaultValue() {
        return {"led_mask" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsMsgLedGroupSize(Ros2Pal_device_msgsMsgLedGroupCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsMsgLedGroupCapture(value), n = Ros2Pal_device_msgsMsgLedGroupSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsMsgLedGroupWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsMsgLedGroupRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsMsgLedGroupSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["led_mask"], 4, false);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsMsgLedGroupWrite(value, w)
{
    w.v.setUint32(w.at, value["led_mask"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsMsgLedGroupRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["led_mask"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsMsgLedGroupCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["led_mask"];
        out["led_mask"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/CancelEffect_Request codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvCancelEffect_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"effect_id" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvCancelEffect_RequestSize(Ros2Pal_device_msgsSrvCancelEffect_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvCancelEffect_RequestCapture(value), n = Ros2Pal_device_msgsSrvCancelEffect_RequestSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsSrvCancelEffect_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvCancelEffect_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvCancelEffect_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["effect_id"], 4, false);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvCancelEffect_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["effect_id"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsSrvCancelEffect_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["effect_id"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvCancelEffect_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["effect_id"];
        out["effect_id"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/CancelEffect_Response codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvCancelEffect_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvCancelEffect_ResponseSize(Ros2Pal_device_msgsSrvCancelEffect_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvCancelEffect_ResponseCapture(value), n = Ros2Pal_device_msgsSrvCancelEffect_ResponseSize(owned), w = new Writer(n);
        Ros2Pal_device_msgsSrvCancelEffect_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvCancelEffect_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvCancelEffect_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvCancelEffect_ResponseWrite(value, w)
{
}

function Ros2Pal_device_msgsSrvCancelEffect_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Pal_device_msgsSrvCancelEffect_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"shutdown_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestSize(Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCapture(value), n = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["shutdown_duration"]));
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestWrite(value, w)
{
    Ros2Builtin_interfacesMsgDurationWrite(value["shutdown_duration"], w);
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["shutdown_duration"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["shutdown_duration"];
        out["shutdown_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseSize(Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCapture(value), n = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseWrite(value, w)
{
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseRead(r)
{
    const value = {};
    return value;
}

function Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedBlinkEffect_Request codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c",
    maxWireBytes : 61,
    minWireBytes : 61,
    cartesianMaxWireBytes : 61n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "leds" : Ros2Pal_device_msgsMsgLedGroupCodec.defaultValue(),
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "first_color_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "second_color_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "effect_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "priority" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestSize(Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCapture(value), n = Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 61, 90);
        if(owned.length < 61)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Pal_device_msgsMsgLedGroupSize(value["leds"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["first_color_duration"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["second_color_duration"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["effect_duration"]));
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    if(n > 61)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestWrite(value, w)
{
    Ros2Pal_device_msgsMsgLedGroupWrite(value["leds"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["first_color_duration"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["second_color_duration"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["effect_duration"], w);
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Pal_device_msgsMsgLedGroupRead(r);
        value["leds"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["first_color_duration"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["second_color_duration"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["effect_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["leds"];
        out["leds"] = Ros2Pal_device_msgsMsgLedGroupCapture(field);
    }
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["first_color_duration"];
        out["first_color_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["second_color_duration"];
        out["second_color_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["effect_duration"];
        out["effect_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedBlinkEffect_Response codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"effect_id" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseSize(Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCapture(value), n = Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["effect_id"], 4, false);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["effect_id"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["effect_id"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["effect_id"];
        out["effect_id"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedColourEffect_Request codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedColourEffect_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8",
    maxWireBytes : 29,
    minWireBytes : 29,
    cartesianMaxWireBytes : 29n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "leds" : Ros2Pal_device_msgsMsgLedGroupCodec.defaultValue(),
            "color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "effect_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "priority" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedColourEffect_RequestSize(Ros2Pal_device_msgsSrvTimedColourEffect_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedColourEffect_RequestCapture(value), n = Ros2Pal_device_msgsSrvTimedColourEffect_RequestSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedColourEffect_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 29, 90);
        if(owned.length < 29)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedColourEffect_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedColourEffect_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Pal_device_msgsMsgLedGroupSize(value["leds"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["color"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["effect_duration"]));
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    if(n > 29)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_RequestWrite(value, w)
{
    Ros2Pal_device_msgsMsgLedGroupWrite(value["leds"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["color"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["effect_duration"], w);
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Pal_device_msgsMsgLedGroupRead(r);
        value["leds"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["color"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["effect_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["leds"];
        out["leds"] = Ros2Pal_device_msgsMsgLedGroupCapture(field);
    }
    {
        const field = value["color"];
        out["color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["effect_duration"];
        out["effect_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedColourEffect_Response codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"effect_id" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedColourEffect_ResponseSize(Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCapture(value), n = Ros2Pal_device_msgsSrvTimedColourEffect_ResponseSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedColourEffect_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedColourEffect_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedColourEffect_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["effect_id"], 4, false);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["effect_id"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["effect_id"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["effect_id"];
        out["effect_id"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedFadeEffect_Request codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13",
    maxWireBytes : 54,
    minWireBytes : 54,
    cartesianMaxWireBytes : 54n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "leds" : Ros2Pal_device_msgsMsgLedGroupCodec.defaultValue(),
            "first_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "second_color" : Ros2Std_msgsMsgColorRGBACodec.defaultValue(),
            "color_change_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "reverse_fade" : false,
            "effect_duration" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue(),
            "priority" : 0
        };
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedFadeEffect_RequestSize(Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCapture(value), n = Ros2Pal_device_msgsSrvTimedFadeEffect_RequestSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedFadeEffect_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 54, 90);
        if(owned.length < 54)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedFadeEffect_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedFadeEffect_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Pal_device_msgsMsgLedGroupSize(value["leds"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["first_color"]));
    n = addSize(n, Ros2Std_msgsMsgColorRGBASize(value["second_color"]));
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["color_change_duration"]));
    if(typeof value["reverse_fade"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["effect_duration"]));
    integer(value["priority"], 1, false);
    n = addSize(n, 1);
    if(n > 54)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_RequestWrite(value, w)
{
    Ros2Pal_device_msgsMsgLedGroupWrite(value["leds"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["first_color"], w);
    Ros2Std_msgsMsgColorRGBAWrite(value["second_color"], w);
    Ros2Builtin_interfacesMsgDurationWrite(value["color_change_duration"], w);
    w.v.setUint8(w.at, value["reverse_fade"] ? 1 : 0, true);
    w.at += 1;
    Ros2Builtin_interfacesMsgDurationWrite(value["effect_duration"], w);
    w.v.setUint8(w.at, value["priority"], true);
    w.at += 1;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Pal_device_msgsMsgLedGroupRead(r);
        value["leds"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["first_color"] = decoded;
    }
    {
        const decoded = Ros2Std_msgsMsgColorRGBARead(r);
        value["second_color"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["color_change_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["reverse_fade"] = decoded !== 0;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["effect_duration"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["priority"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["leds"];
        out["leds"] = Ros2Pal_device_msgsMsgLedGroupCapture(field);
    }
    {
        const field = value["first_color"];
        out["first_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["second_color"];
        out["second_color"] = Ros2Std_msgsMsgColorRGBACapture(field);
    }
    {
        const field = value["color_change_duration"];
        out["color_change_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["reverse_fade"];
        out["reverse_fade"] = field;
    }
    {
        const field = value["effect_duration"];
        out["effect_duration"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    {
        const field = value["priority"];
        out["priority"] = field;
    }
    return out;
}

/** @brief Complete ROS2 pal_device_msgs/srv/TimedFadeEffect_Response codec; maxima are not actual lengths. */
export const Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"effect_id" : 0};
    },
    validateValue(value) {
        Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseSize(Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCapture(value), n = Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseSize(owned),
              w = new Writer(n);
        Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["effect_id"], 4, false);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["effect_id"], true);
    w.at += 4;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["effect_id"] = decoded;
    }
    return value;
}

function Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["effect_id"];
        out["effect_id"] = field;
    }
    return out;
}
