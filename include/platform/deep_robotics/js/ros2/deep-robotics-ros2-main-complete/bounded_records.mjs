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

/** @brief Complete ROS2 drdds/msg/MetaType codec; maxima are not actual lengths. */
export const Ros2DrddsMsgMetaTypeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"frame_id" : 0n, "stamp" : Ros2Builtin_interfacesMsgTimeCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2DrddsMsgMetaTypeSize(Ros2DrddsMsgMetaTypeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgMetaTypeCapture(value), n = Ros2DrddsMsgMetaTypeSize(owned), w = new Writer(n);
        Ros2DrddsMsgMetaTypeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgMetaTypeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgMetaTypeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["frame_id"], 8, false);
    n = addSize(n, 8);
    n = addSize(n, Ros2Builtin_interfacesMsgTimeSize(value["stamp"]));
    if(n > 16)
        bad(90);
    return n;
}

function Ros2DrddsMsgMetaTypeWrite(value, w)
{
    w.v.setBigUint64(w.at, value["frame_id"], true);
    w.at += 8;
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
}

function Ros2DrddsMsgMetaTypeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["frame_id"] = decoded;
    }
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgMetaTypeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["frame_id"];
        out["frame_id"] = field;
    }
    {
        const field = value["stamp"];
        out["stamp"] = Ros2Builtin_interfacesMsgTimeCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/BatteryDataValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgBatteryDataValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc",
    maxWireBytes : 123,
    minWireBytes : 59,
    cartesianMaxWireBytes : 123n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "voltage" : 0,
            "current" : 0,
            "remaining_capacity" : 0,
            "nominal_capacity" : 0,
            "cycles" : 0,
            "production_date" : 0,
            "balanced_low" : 0,
            "balanced_high" : 0,
            "protected_state" : 0,
            "software_version" : 0,
            "battery_level" : 0,
            "mos_state" : 0,
            "battery_quantity" : 0,
            "battery_ntc" : 0,
            "battery_temperature" : [],
            "battery_serialnum" : Array.from({length : 32}, () => (0))
        };
    },
    validateValue(value) {
        Ros2DrddsMsgBatteryDataValueSize(Ros2DrddsMsgBatteryDataValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgBatteryDataValueCapture(value), n = Ros2DrddsMsgBatteryDataValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgBatteryDataValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 123, 90);
        if(owned.length < 59)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgBatteryDataValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgBatteryDataValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["voltage"], 2, false);
    n = addSize(n, 2);
    integer(value["current"], 2, true);
    n = addSize(n, 2);
    integer(value["remaining_capacity"], 2, false);
    n = addSize(n, 2);
    integer(value["nominal_capacity"], 2, false);
    n = addSize(n, 2);
    integer(value["cycles"], 2, false);
    n = addSize(n, 2);
    integer(value["production_date"], 2, false);
    n = addSize(n, 2);
    integer(value["balanced_low"], 2, false);
    n = addSize(n, 2);
    integer(value["balanced_high"], 2, false);
    n = addSize(n, 2);
    integer(value["protected_state"], 2, false);
    n = addSize(n, 2);
    integer(value["software_version"], 1, false);
    n = addSize(n, 1);
    integer(value["battery_level"], 1, false);
    n = addSize(n, 1);
    integer(value["mos_state"], 1, false);
    n = addSize(n, 1);
    integer(value["battery_quantity"], 1, false);
    n = addSize(n, 1);
    integer(value["battery_ntc"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["battery_temperature"]) || value["battery_temperature"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["battery_temperature"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["battery_serialnum"]) || value["battery_serialnum"].length !== 32)
        bad();
    for(const element of value["battery_serialnum"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 123)
        bad(90);
    return n;
}

function Ros2DrddsMsgBatteryDataValueWrite(value, w)
{
    w.v.setUint16(w.at, value["voltage"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["current"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["remaining_capacity"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["nominal_capacity"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["cycles"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["production_date"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["balanced_low"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["balanced_high"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["protected_state"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["software_version"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["battery_level"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mos_state"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["battery_quantity"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["battery_ntc"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["battery_temperature"].length, true);
    w.at += 4;
    for(const element of value["battery_temperature"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["battery_serialnum"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2DrddsMsgBatteryDataValueRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["voltage"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["remaining_capacity"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["nominal_capacity"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["cycles"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["production_date"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["balanced_low"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["balanced_high"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["protected_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["software_version"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["battery_level"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mos_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["battery_quantity"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["battery_ntc"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["battery_temperature"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["battery_temperature"].push(decoded);
            }
        }
    }
    {
        {
            const count = 32;
            if(count > 32)
                bad();
            value["battery_serialnum"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["battery_serialnum"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2DrddsMsgBatteryDataValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["voltage"];
        out["voltage"] = field;
    }
    {
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["remaining_capacity"];
        out["remaining_capacity"] = field;
    }
    {
        const field = value["nominal_capacity"];
        out["nominal_capacity"] = field;
    }
    {
        const field = value["cycles"];
        out["cycles"] = field;
    }
    {
        const field = value["production_date"];
        out["production_date"] = field;
    }
    {
        const field = value["balanced_low"];
        out["balanced_low"] = field;
    }
    {
        const field = value["balanced_high"];
        out["balanced_high"] = field;
    }
    {
        const field = value["protected_state"];
        out["protected_state"] = field;
    }
    {
        const field = value["software_version"];
        out["software_version"] = field;
    }
    {
        const field = value["battery_level"];
        out["battery_level"] = field;
    }
    {
        const field = value["mos_state"];
        out["mos_state"] = field;
    }
    {
        const field = value["battery_quantity"];
        out["battery_quantity"] = field;
    }
    {
        const field = value["battery_ntc"];
        out["battery_ntc"] = field;
    }
    {
        const field = value["battery_temperature"];
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
        out["battery_temperature"] = values;
    }
    {
        const field = value["battery_serialnum"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["battery_serialnum"] = values;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/BatteryData codec; maxima are not actual lengths. */
export const Ros2DrddsMsgBatteryDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e",
    maxWireBytes : 512,
    minWireBytes : 20,
    cartesianMaxWireBytes : 512n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(), "data" : []};
    },
    validateValue(value) {
        Ros2DrddsMsgBatteryDataSize(Ros2DrddsMsgBatteryDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgBatteryDataCapture(value), n = Ros2DrddsMsgBatteryDataSize(owned), w = new Writer(n);
        Ros2DrddsMsgBatteryDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 512, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgBatteryDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgBatteryDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    if(!Array.isArray(value["data"]) || value["data"].length > 4)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        n = addSize(n, Ros2DrddsMsgBatteryDataValueSize(element));
    }
    if(n > 512)
        bad(90);
    return n;
}

function Ros2DrddsMsgBatteryDataWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        Ros2DrddsMsgBatteryDataValueWrite(element, w);
    }
}

function Ros2DrddsMsgBatteryDataRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgBatteryDataValueRead(r);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2DrddsMsgBatteryDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
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
            values[i] = Ros2DrddsMsgBatteryDataValueCapture(element);
        }
        out["data"] = values;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/GamepadData codec; maxima are not actual lengths. */
export const Ros2DrddsMsgGamepadDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978",
    maxWireBytes : 34,
    minWireBytes : 34,
    cartesianMaxWireBytes : 34n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(),
            "left_axis_x" : 0,
            "left_axis_y" : 0,
            "right_axis_x" : 0,
            "right_axis_y" : 0,
            "buttons" : 0
        };
    },
    validateValue(value) {
        Ros2DrddsMsgGamepadDataSize(Ros2DrddsMsgGamepadDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgGamepadDataCapture(value), n = Ros2DrddsMsgGamepadDataSize(owned), w = new Writer(n);
        Ros2DrddsMsgGamepadDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 34, 90);
        if(owned.length < 34)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgGamepadDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgGamepadDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    if(typeof value["left_axis_x"] !== "number" || !Number.isFinite(value["left_axis_x"]) || !Number.isFinite(Math.fround(value["left_axis_x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["left_axis_y"] !== "number" || !Number.isFinite(value["left_axis_y"]) || !Number.isFinite(Math.fround(value["left_axis_y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["right_axis_x"] !== "number" || !Number.isFinite(value["right_axis_x"]) || !Number.isFinite(Math.fround(value["right_axis_x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["right_axis_y"] !== "number" || !Number.isFinite(value["right_axis_y"]) || !Number.isFinite(Math.fround(value["right_axis_y"])))
        bad();
    n = addSize(n, 4);
    integer(value["buttons"], 2, false);
    n = addSize(n, 2);
    if(n > 34)
        bad(90);
    return n;
}

function Ros2DrddsMsgGamepadDataWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    w.v.setFloat32(w.at, value["left_axis_x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["left_axis_y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["right_axis_x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["right_axis_y"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["buttons"], true);
    w.at += 2;
}

function Ros2DrddsMsgGamepadDataRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["left_axis_x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["left_axis_y"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["right_axis_x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["right_axis_y"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["buttons"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgGamepadDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
    {
        const field = value["left_axis_x"];
        out["left_axis_x"] = field;
    }
    {
        const field = value["left_axis_y"];
        out["left_axis_y"] = field;
    }
    {
        const field = value["right_axis_x"];
        out["right_axis_x"] = field;
    }
    {
        const field = value["right_axis_y"];
        out["right_axis_y"] = field;
    }
    {
        const field = value["buttons"];
        out["buttons"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/ImuDataValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgImuDataValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859",
    maxWireBytes : 36,
    minWireBytes : 36,
    cartesianMaxWireBytes : 36n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"roll" : 0, "pitch" : 0, "yaw" : 0, "omega_x" : 0, "omega_y" : 0, "omega_z" : 0, "acc_x" : 0, "acc_y" : 0, "acc_z" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgImuDataValueSize(Ros2DrddsMsgImuDataValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgImuDataValueCapture(value), n = Ros2DrddsMsgImuDataValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgImuDataValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 36, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgImuDataValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgImuDataValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["roll"] !== "number" || !Number.isFinite(value["roll"]) || !Number.isFinite(Math.fround(value["roll"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["pitch"] !== "number" || !Number.isFinite(value["pitch"]) || !Number.isFinite(Math.fround(value["pitch"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]) || !Number.isFinite(Math.fround(value["yaw"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["omega_x"] !== "number" || !Number.isFinite(value["omega_x"]) || !Number.isFinite(Math.fround(value["omega_x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["omega_y"] !== "number" || !Number.isFinite(value["omega_y"]) || !Number.isFinite(Math.fround(value["omega_y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["omega_z"] !== "number" || !Number.isFinite(value["omega_z"]) || !Number.isFinite(Math.fround(value["omega_z"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc_x"] !== "number" || !Number.isFinite(value["acc_x"]) || !Number.isFinite(Math.fround(value["acc_x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc_y"] !== "number" || !Number.isFinite(value["acc_y"]) || !Number.isFinite(Math.fround(value["acc_y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc_z"] !== "number" || !Number.isFinite(value["acc_z"]) || !Number.isFinite(Math.fround(value["acc_z"])))
        bad();
    n = addSize(n, 4);
    if(n > 36)
        bad(90);
    return n;
}

function Ros2DrddsMsgImuDataValueWrite(value, w)
{
    w.v.setFloat32(w.at, value["roll"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["pitch"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["yaw"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["omega_x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["omega_y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["omega_z"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc_x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc_y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc_z"], true);
    w.at += 4;
}

function Ros2DrddsMsgImuDataValueRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["roll"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["omega_x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["omega_y"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["omega_z"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc_x"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc_y"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc_z"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgImuDataValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["roll"];
        out["roll"] = field;
    }
    {
        const field = value["pitch"];
        out["pitch"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    {
        const field = value["omega_x"];
        out["omega_x"] = field;
    }
    {
        const field = value["omega_y"];
        out["omega_y"] = field;
    }
    {
        const field = value["omega_z"];
        out["omega_z"] = field;
    }
    {
        const field = value["acc_x"];
        out["acc_x"] = field;
    }
    {
        const field = value["acc_y"];
        out["acc_y"] = field;
    }
    {
        const field = value["acc_z"];
        out["acc_z"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/ImuData codec; maxima are not actual lengths. */
export const Ros2DrddsMsgImuDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c",
    maxWireBytes : 52,
    minWireBytes : 52,
    cartesianMaxWireBytes : 52n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(), "data" : Ros2DrddsMsgImuDataValueCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2DrddsMsgImuDataSize(Ros2DrddsMsgImuDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgImuDataCapture(value), n = Ros2DrddsMsgImuDataSize(owned), w = new Writer(n);
        Ros2DrddsMsgImuDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 52, 90);
        if(owned.length < 52)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgImuDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgImuDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    n = addSize(n, Ros2DrddsMsgImuDataValueSize(value["data"]));
    if(n > 52)
        bad(90);
    return n;
}

function Ros2DrddsMsgImuDataWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    Ros2DrddsMsgImuDataValueWrite(value["data"], w);
}

function Ros2DrddsMsgImuDataRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2DrddsMsgImuDataValueRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgImuDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2DrddsMsgImuDataValueCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointCmdValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointCmdValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de",
    maxWireBytes : 284,
    minWireBytes : 28,
    cartesianMaxWireBytes : 284n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : [], "data_id" : 0, "control_word" : 0, "position" : 0, "torque" : 0, "velocity" : 0, "kp" : 0, "kd" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgJointCmdValueSize(Ros2DrddsMsgJointCmdValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointCmdValueCapture(value), n = Ros2DrddsMsgJointCmdValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointCmdValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 284, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointCmdValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointCmdValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["name"]) || value["name"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["data_id"], 2, false);
    n = addSize(n, 2);
    integer(value["control_word"], 2, false);
    n = addSize(n, 2);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]) || !Number.isFinite(Math.fround(value["position"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["torque"] !== "number" || !Number.isFinite(value["torque"]) || !Number.isFinite(Math.fround(value["torque"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]) || !Number.isFinite(Math.fround(value["velocity"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["kp"] !== "number" || !Number.isFinite(value["kp"]) || !Number.isFinite(Math.fround(value["kp"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["kd"] !== "number" || !Number.isFinite(value["kd"]) || !Number.isFinite(Math.fround(value["kd"])))
        bad();
    n = addSize(n, 4);
    if(n > 284)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointCmdValueWrite(value, w)
{
    w.v.setUint32(w.at, value["name"].length, true);
    w.at += 4;
    for(const element of value["name"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint16(w.at, value["data_id"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["control_word"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["position"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["torque"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["velocity"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["kp"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["kd"], true);
    w.at += 4;
}

function Ros2DrddsMsgJointCmdValueRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["name"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["data_id"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["control_word"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["torque"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["kp"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["kd"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointCmdValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
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
        out["name"] = values;
    }
    {
        const field = value["data_id"];
        out["data_id"] = field;
    }
    {
        const field = value["control_word"];
        out["control_word"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["torque"];
        out["torque"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["kp"];
        out["kp"] = field;
    }
    {
        const field = value["kd"];
        out["kd"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointData codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "name" : Array.from({length : 4}, () => (0)),
            "data_id" : 0,
            "status_word" : 0,
            "position" : 0,
            "torque" : 0,
            "velocity" : 0,
            "motion_temp" : 0,
            "driver_temp" : 0
        };
    },
    validateValue(value) {
        Ros2DrddsMsgJointDataSize(Ros2DrddsMsgJointDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointDataCapture(value), n = Ros2DrddsMsgJointDataSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["name"]) || value["name"].length !== 4)
        bad();
    for(const element of value["name"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["data_id"], 2, false);
    n = addSize(n, 2);
    integer(value["status_word"], 2, false);
    n = addSize(n, 2);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]) || !Number.isFinite(Math.fround(value["position"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["torque"] !== "number" || !Number.isFinite(value["torque"]) || !Number.isFinite(Math.fround(value["torque"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]) || !Number.isFinite(Math.fround(value["velocity"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["motion_temp"] !== "number" || !Number.isFinite(value["motion_temp"]) || !Number.isFinite(Math.fround(value["motion_temp"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["driver_temp"] !== "number" || !Number.isFinite(value["driver_temp"]) || !Number.isFinite(Math.fround(value["driver_temp"])))
        bad();
    n = addSize(n, 4);
    if(n > 28)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointDataWrite(value, w)
{
    for(const element of value["name"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint16(w.at, value["data_id"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["status_word"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["position"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["torque"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["velocity"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["motion_temp"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["driver_temp"], true);
    w.at += 4;
}

function Ros2DrddsMsgJointDataRead(r)
{
    const value = {};
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["name"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["data_id"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["status_word"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["torque"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["motion_temp"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["driver_temp"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
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
        out["name"] = values;
    }
    {
        const field = value["data_id"];
        out["data_id"] = field;
    }
    {
        const field = value["status_word"];
        out["status_word"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["torque"];
        out["torque"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["motion_temp"];
        out["motion_temp"] = field;
    }
    {
        const field = value["driver_temp"];
        out["driver_temp"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointDataCmd codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointDataCmdCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e",
    maxWireBytes : 28,
    minWireBytes : 28,
    cartesianMaxWireBytes : 28n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "name" : Array.from({length : 4}, () => (0)),
            "data_id" : 0,
            "control_word" : 0,
            "position" : 0,
            "torque" : 0,
            "velocity" : 0,
            "kp" : 0,
            "kd" : 0
        };
    },
    validateValue(value) {
        Ros2DrddsMsgJointDataCmdSize(Ros2DrddsMsgJointDataCmdCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointDataCmdCapture(value), n = Ros2DrddsMsgJointDataCmdSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointDataCmdWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 28, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointDataCmdRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointDataCmdSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["name"]) || value["name"].length !== 4)
        bad();
    for(const element of value["name"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["data_id"], 2, false);
    n = addSize(n, 2);
    integer(value["control_word"], 2, false);
    n = addSize(n, 2);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]) || !Number.isFinite(Math.fround(value["position"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["torque"] !== "number" || !Number.isFinite(value["torque"]) || !Number.isFinite(Math.fround(value["torque"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]) || !Number.isFinite(Math.fround(value["velocity"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["kp"] !== "number" || !Number.isFinite(value["kp"]) || !Number.isFinite(Math.fround(value["kp"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["kd"] !== "number" || !Number.isFinite(value["kd"]) || !Number.isFinite(Math.fround(value["kd"])))
        bad();
    n = addSize(n, 4);
    if(n > 28)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointDataCmdWrite(value, w)
{
    for(const element of value["name"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint16(w.at, value["data_id"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["control_word"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["position"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["torque"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["velocity"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["kp"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["kd"], true);
    w.at += 4;
}

function Ros2DrddsMsgJointDataCmdRead(r)
{
    const value = {};
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["name"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["data_id"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["control_word"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["torque"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["kp"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["kd"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointDataCmdCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
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
        out["name"] = values;
    }
    {
        const field = value["data_id"];
        out["data_id"] = field;
    }
    {
        const field = value["control_word"];
        out["control_word"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["torque"];
        out["torque"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["kp"];
        out["kp"] = field;
    }
    {
        const field = value["kd"];
        out["kd"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da",
    maxWireBytes : 284,
    minWireBytes : 28,
    cartesianMaxWireBytes : 284n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : [], "data_id" : 0, "status_word" : 0, "position" : 0, "torque" : 0, "velocity" : 0, "motion_temp" : 0, "driver_temp" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgJointValueSize(Ros2DrddsMsgJointValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointValueCapture(value), n = Ros2DrddsMsgJointValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 284, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["name"]) || value["name"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["data_id"], 2, false);
    n = addSize(n, 2);
    integer(value["status_word"], 2, false);
    n = addSize(n, 2);
    if(typeof value["position"] !== "number" || !Number.isFinite(value["position"]) || !Number.isFinite(Math.fround(value["position"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["torque"] !== "number" || !Number.isFinite(value["torque"]) || !Number.isFinite(Math.fround(value["torque"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["velocity"] !== "number" || !Number.isFinite(value["velocity"]) || !Number.isFinite(Math.fround(value["velocity"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["motion_temp"] !== "number" || !Number.isFinite(value["motion_temp"]) || !Number.isFinite(Math.fround(value["motion_temp"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["driver_temp"] !== "number" || !Number.isFinite(value["driver_temp"]) || !Number.isFinite(Math.fround(value["driver_temp"])))
        bad();
    n = addSize(n, 4);
    if(n > 284)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointValueWrite(value, w)
{
    w.v.setUint32(w.at, value["name"].length, true);
    w.at += 4;
    for(const element of value["name"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint16(w.at, value["data_id"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["status_word"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["position"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["torque"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["velocity"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["motion_temp"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["driver_temp"], true);
    w.at += 4;
}

function Ros2DrddsMsgJointValueRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["name"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["data_id"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["status_word"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["torque"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["velocity"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["motion_temp"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["driver_temp"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
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
        out["name"] = values;
    }
    {
        const field = value["data_id"];
        out["data_id"] = field;
    }
    {
        const field = value["status_word"];
        out["status_word"] = field;
    }
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["torque"];
        out["torque"] = field;
    }
    {
        const field = value["velocity"];
        out["velocity"] = field;
    }
    {
        const field = value["motion_temp"];
        out["motion_temp"] = field;
    }
    {
        const field = value["driver_temp"];
        out["driver_temp"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointsDataValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointsDataValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8",
    maxWireBytes : 448,
    minWireBytes : 448,
    cartesianMaxWireBytes : 448n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joints_data" : Array.from({length : 16}, () => (Ros2DrddsMsgJointDataCodec.defaultValue()))};
    },
    validateValue(value) {
        Ros2DrddsMsgJointsDataValueSize(Ros2DrddsMsgJointsDataValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointsDataValueCapture(value), n = Ros2DrddsMsgJointsDataValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointsDataValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 448, 90);
        if(owned.length < 448)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointsDataValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointsDataValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joints_data"]) || value["joints_data"].length !== 16)
        bad();
    for(const element of value["joints_data"])
    {
        n = addSize(n, Ros2DrddsMsgJointDataSize(element));
    }
    if(n > 448)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointsDataValueWrite(value, w)
{
    for(const element of value["joints_data"])
    {
        Ros2DrddsMsgJointDataWrite(element, w);
    }
}

function Ros2DrddsMsgJointsDataValueRead(r)
{
    const value = {};
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["joints_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgJointDataRead(r);
                value["joints_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2DrddsMsgJointsDataValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joints_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2DrddsMsgJointDataCapture(element);
        }
        out["joints_data"] = values;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointsData codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointsDataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d",
    maxWireBytes : 464,
    minWireBytes : 464,
    cartesianMaxWireBytes : 464n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(), "data" : Ros2DrddsMsgJointsDataValueCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2DrddsMsgJointsDataSize(Ros2DrddsMsgJointsDataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointsDataCapture(value), n = Ros2DrddsMsgJointsDataSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointsDataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 464, 90);
        if(owned.length < 464)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointsDataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointsDataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    n = addSize(n, Ros2DrddsMsgJointsDataValueSize(value["data"]));
    if(n > 464)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointsDataWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    Ros2DrddsMsgJointsDataValueWrite(value["data"], w);
}

function Ros2DrddsMsgJointsDataRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2DrddsMsgJointsDataValueRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointsDataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2DrddsMsgJointsDataValueCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointsDataCmdValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointsDataCmdValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016",
    maxWireBytes : 448,
    minWireBytes : 448,
    cartesianMaxWireBytes : 448n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joints_data" : Array.from({length : 16}, () => (Ros2DrddsMsgJointDataCmdCodec.defaultValue()))};
    },
    validateValue(value) {
        Ros2DrddsMsgJointsDataCmdValueSize(Ros2DrddsMsgJointsDataCmdValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointsDataCmdValueCapture(value), n = Ros2DrddsMsgJointsDataCmdValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointsDataCmdValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 448, 90);
        if(owned.length < 448)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointsDataCmdValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointsDataCmdValueSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joints_data"]) || value["joints_data"].length !== 16)
        bad();
    for(const element of value["joints_data"])
    {
        n = addSize(n, Ros2DrddsMsgJointDataCmdSize(element));
    }
    if(n > 448)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointsDataCmdValueWrite(value, w)
{
    for(const element of value["joints_data"])
    {
        Ros2DrddsMsgJointDataCmdWrite(element, w);
    }
}

function Ros2DrddsMsgJointsDataCmdValueRead(r)
{
    const value = {};
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["joints_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgJointDataCmdRead(r);
                value["joints_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2DrddsMsgJointsDataCmdValueCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joints_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2DrddsMsgJointDataCmdCapture(element);
        }
        out["joints_data"] = values;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/JointsDataCmd codec; maxima are not actual lengths. */
export const Ros2DrddsMsgJointsDataCmdCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45",
    maxWireBytes : 464,
    minWireBytes : 464,
    cartesianMaxWireBytes : 464n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(), "data" : Ros2DrddsMsgJointsDataCmdValueCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2DrddsMsgJointsDataCmdSize(Ros2DrddsMsgJointsDataCmdCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgJointsDataCmdCapture(value), n = Ros2DrddsMsgJointsDataCmdSize(owned), w = new Writer(n);
        Ros2DrddsMsgJointsDataCmdWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 464, 90);
        if(owned.length < 464)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgJointsDataCmdRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgJointsDataCmdSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    n = addSize(n, Ros2DrddsMsgJointsDataCmdValueSize(value["data"]));
    if(n > 464)
        bad(90);
    return n;
}

function Ros2DrddsMsgJointsDataCmdWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    Ros2DrddsMsgJointsDataCmdValueWrite(value["data"], w);
}

function Ros2DrddsMsgJointsDataCmdRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2DrddsMsgJointsDataCmdValueRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgJointsDataCmdCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2DrddsMsgJointsDataCmdValueCapture(field);
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

/** @brief Complete ROS2 geometry_msgs/msg/Vector3 codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgVector3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgVector3Size(Ros2Geometry_msgsMsgVector3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgVector3Capture(value), n = Ros2Geometry_msgsMsgVector3Size(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgVector3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgVector3Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgVector3Size(value)
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

function Ros2Geometry_msgsMsgVector3Write(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros2Geometry_msgsMsgVector3Read(r)
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

function Ros2Geometry_msgsMsgVector3Capture(value)
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

/** @brief Complete ROS2 geometry_msgs/msg/Twist codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgTwistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(), "angular" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgTwistSize(Ros2Geometry_msgsMsgTwistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgTwistCapture(value), n = Ros2Geometry_msgsMsgTwistSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgTwistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgTwistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgTwistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["linear"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["angular"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgTwistWrite(value, w)
{
    Ros2Geometry_msgsMsgVector3Write(value["linear"], w);
    Ros2Geometry_msgsMsgVector3Write(value["angular"], w);
}

function Ros2Geometry_msgsMsgTwistRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["linear"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["angular"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgTwistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["linear"];
        out["linear"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    {
        const field = value["angular"];
        out["angular"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS2 sensor_msgs/msg/JointState codec; maxima are not actual lengths. */
export const Ros2Sensor_msgsMsgJointStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f",
    maxWireBytes : 6044,
    minWireBytes : 28,
    cartesianMaxWireBytes : 6044n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "name" : [], "position" : [], "velocity" : [], "effort" : []};
    },
    validateValue(value) {
        Ros2Sensor_msgsMsgJointStateSize(Ros2Sensor_msgsMsgJointStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Sensor_msgsMsgJointStateCapture(value), n = Ros2Sensor_msgsMsgJointStateSize(owned), w = new Writer(n);
        Ros2Sensor_msgsMsgJointStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6044, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Sensor_msgsMsgJointStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Sensor_msgsMsgJointStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(!Array.isArray(value["name"]) || value["name"].length > 64)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        n = addSize(n, 4 + textBytes(element, 64).length);
    }
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
    if((value["name"].length != 0 && value["position"].length != 0 && value["name"].length != value["position"].length) ||
       (value["name"].length != 0 && value["velocity"].length != 0 && value["name"].length != value["velocity"].length) ||
       (value["name"].length != 0 && value["effort"].length != 0 && value["name"].length != value["effort"].length) ||
       (value["position"].length != 0 && value["velocity"].length != 0 && value["position"].length != value["velocity"].length) ||
       (value["position"].length != 0 && value["effort"].length != 0 && value["position"].length != value["effort"].length) ||
       (value["velocity"].length != 0 && value["effort"].length != 0 && value["velocity"].length != value["effort"].length))
        bad();
    if(n > 6044)
        bad(90);
    return n;
}

function Ros2Sensor_msgsMsgJointStateWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["name"].length, true);
    w.at += 4;
    for(const element of value["name"])
    {
        w.text(element, 64);
    }
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
}

function Ros2Sensor_msgsMsgJointStateRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 64)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(64);
                value["name"].push(decoded);
            }
        }
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
    if((value["name"].length != 0 && value["position"].length != 0 && value["name"].length != value["position"].length) ||
       (value["name"].length != 0 && value["velocity"].length != 0 && value["name"].length != value["velocity"].length) ||
       (value["name"].length != 0 && value["effort"].length != 0 && value["name"].length != value["effort"].length) ||
       (value["position"].length != 0 && value["velocity"].length != 0 && value["position"].length != value["velocity"].length) ||
       (value["position"].length != 0 && value["effort"].length != 0 && value["position"].length != value["effort"].length) ||
       (value["velocity"].length != 0 && value["effort"].length != 0 && value["velocity"].length != value["effort"].length))
        bad();
    return value;
}

function Ros2Sensor_msgsMsgJointStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["name"];
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
        out["name"] = values;
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
    return out;
}

/** @brief Complete ROS2 drdds/msg/RobotStatus codec; maxima are not actual lengths. */
export const Ros2DrddsMsgRobotStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae",
    maxWireBytes : 6845,
    minWireBytes : 189,
    cartesianMaxWireBytes : 6845n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "robot" : "",
            "command_source" : "",
            "current_state" : "",
            "current_state_id" : 0,
            "requested_state" : "",
            "requested_state_id" : 0,
            "safety_mode" : 0,
            "command" : Ros2Geometry_msgsMsgTwistCodec.defaultValue(),
            "command_timed_out" : false,
            "rejected_commands" : 0n,
            "command_updates" : 0n,
            "joint_stamp" : 0,
            "imu_stamp" : 0,
            "telemetry_fresh" : false,
            "joints" : Ros2Sensor_msgsMsgJointStateCodec.defaultValue(),
            "base_rpy" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(),
            "base_angular_velocity" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2DrddsMsgRobotStatusSize(Ros2DrddsMsgRobotStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgRobotStatusCapture(value), n = Ros2DrddsMsgRobotStatusSize(owned), w = new Writer(n);
        Ros2DrddsMsgRobotStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6845, 90);
        if(owned.length < 189)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgRobotStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgRobotStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    n = addSize(n, 4 + textBytes(value["robot"], 128).length);
    n = addSize(n, 4 + textBytes(value["command_source"], 128).length);
    n = addSize(n, 4 + textBytes(value["current_state"], 128).length);
    integer(value["current_state_id"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["requested_state"], 128).length);
    integer(value["requested_state_id"], 1, false);
    n = addSize(n, 1);
    integer(value["safety_mode"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, Ros2Geometry_msgsMsgTwistSize(value["command"]));
    if(typeof value["command_timed_out"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["rejected_commands"], 8, false);
    n = addSize(n, 8);
    integer(value["command_updates"], 8, false);
    n = addSize(n, 8);
    if(typeof value["joint_stamp"] !== "number" || !Number.isFinite(value["joint_stamp"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["imu_stamp"] !== "number" || !Number.isFinite(value["imu_stamp"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["telemetry_fresh"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros2Sensor_msgsMsgJointStateSize(value["joints"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["base_rpy"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["base_angular_velocity"]));
    if(n > 6845)
        bad(90);
    return n;
}

function Ros2DrddsMsgRobotStatusWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.text(value["robot"], 128);
    w.text(value["command_source"], 128);
    w.text(value["current_state"], 128);
    w.v.setUint8(w.at, value["current_state_id"], true);
    w.at += 1;
    w.text(value["requested_state"], 128);
    w.v.setUint8(w.at, value["requested_state_id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["safety_mode"], true);
    w.at += 1;
    Ros2Geometry_msgsMsgTwistWrite(value["command"], w);
    w.v.setUint8(w.at, value["command_timed_out"] ? 1 : 0, true);
    w.at += 1;
    w.v.setBigUint64(w.at, value["rejected_commands"], true);
    w.at += 8;
    w.v.setBigUint64(w.at, value["command_updates"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["joint_stamp"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["imu_stamp"], true);
    w.at += 8;
    w.v.setUint8(w.at, value["telemetry_fresh"] ? 1 : 0, true);
    w.at += 1;
    Ros2Sensor_msgsMsgJointStateWrite(value["joints"], w);
    Ros2Geometry_msgsMsgVector3Write(value["base_rpy"], w);
    Ros2Geometry_msgsMsgVector3Write(value["base_angular_velocity"], w);
}

function Ros2DrddsMsgRobotStatusRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["robot"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["command_source"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["current_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["current_state_id"] = decoded;
    }
    {
        const decoded = r.text(128);
        value["requested_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["requested_state_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["safety_mode"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgTwistRead(r);
        value["command"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["command_timed_out"] = decoded !== 0;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["rejected_commands"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["command_updates"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["joint_stamp"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["imu_stamp"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["telemetry_fresh"] = decoded !== 0;
    }
    {
        const decoded = Ros2Sensor_msgsMsgJointStateRead(r);
        value["joints"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["base_rpy"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["base_angular_velocity"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgRobotStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["robot"];
        out["robot"] = field;
    }
    {
        const field = value["command_source"];
        out["command_source"] = field;
    }
    {
        const field = value["current_state"];
        out["current_state"] = field;
    }
    {
        const field = value["current_state_id"];
        out["current_state_id"] = field;
    }
    {
        const field = value["requested_state"];
        out["requested_state"] = field;
    }
    {
        const field = value["requested_state_id"];
        out["requested_state_id"] = field;
    }
    {
        const field = value["safety_mode"];
        out["safety_mode"] = field;
    }
    {
        const field = value["command"];
        out["command"] = Ros2Geometry_msgsMsgTwistCapture(field);
    }
    {
        const field = value["command_timed_out"];
        out["command_timed_out"] = field;
    }
    {
        const field = value["rejected_commands"];
        out["rejected_commands"] = field;
    }
    {
        const field = value["command_updates"];
        out["command_updates"] = field;
    }
    {
        const field = value["joint_stamp"];
        out["joint_stamp"] = field;
    }
    {
        const field = value["imu_stamp"];
        out["imu_stamp"] = field;
    }
    {
        const field = value["telemetry_fresh"];
        out["telemetry_fresh"] = field;
    }
    {
        const field = value["joints"];
        out["joints"] = Ros2Sensor_msgsMsgJointStateCapture(field);
    }
    {
        const field = value["base_rpy"];
        out["base_rpy"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    {
        const field = value["base_angular_velocity"];
        out["base_angular_velocity"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/StdMsgFloat32 codec; maxima are not actual lengths. */
export const Ros2DrddsMsgStdMsgFloat32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgStdMsgFloat32Size(Ros2DrddsMsgStdMsgFloat32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgStdMsgFloat32Capture(value), n = Ros2DrddsMsgStdMsgFloat32Size(owned), w = new Writer(n);
        Ros2DrddsMsgStdMsgFloat32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgStdMsgFloat32Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgStdMsgFloat32Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["value"] !== "number" || !Number.isFinite(value["value"]) || !Number.isFinite(Math.fround(value["value"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2DrddsMsgStdMsgFloat32Write(value, w)
{
    w.v.setFloat32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2DrddsMsgStdMsgFloat32Read(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["value"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgStdMsgFloat32Capture(value)
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

/** @brief Complete ROS2 drdds/msg/StdMsgInt32 codec; maxima are not actual lengths. */
export const Ros2DrddsMsgStdMsgInt32Codec = Object.freeze({
    codecIdentity : "UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"value" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgStdMsgInt32Size(Ros2DrddsMsgStdMsgInt32Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgStdMsgInt32Capture(value), n = Ros2DrddsMsgStdMsgInt32Size(owned), w = new Writer(n);
        Ros2DrddsMsgStdMsgInt32Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgStdMsgInt32Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgStdMsgInt32Size(value)
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

function Ros2DrddsMsgStdMsgInt32Write(value, w)
{
    w.v.setInt32(w.at, value["value"], true);
    w.at += 4;
}

function Ros2DrddsMsgStdMsgInt32Read(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgStdMsgInt32Capture(value)
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

/** @brief Complete ROS2 drdds/msg/StdStatus codec; maxima are not actual lengths. */
export const Ros2DrddsMsgStdStatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : 0, "error_code" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgStdStatusSize(Ros2DrddsMsgStdStatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgStdStatusCapture(value), n = Ros2DrddsMsgStdStatusSize(owned), w = new Writer(n);
        Ros2DrddsMsgStdStatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgStdStatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgStdStatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["state"], 4, true);
    n = addSize(n, 4);
    integer(value["error_code"], 4, false);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2DrddsMsgStdStatusWrite(value, w)
{
    w.v.setInt32(w.at, value["state"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["error_code"], true);
    w.at += 4;
}

function Ros2DrddsMsgStdStatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["error_code"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgStdStatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["error_code"];
        out["error_code"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/SteerValue codec; maxima are not actual lengths. */
export const Ros2DrddsMsgSteerValueCodec = Object.freeze({
    codecIdentity : "UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "roll" : 0, "pitch" : 0, "yaw" : 0};
    },
    validateValue(value) {
        Ros2DrddsMsgSteerValueSize(Ros2DrddsMsgSteerValueCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgSteerValueCapture(value), n = Ros2DrddsMsgSteerValueSize(owned), w = new Writer(n);
        Ros2DrddsMsgSteerValueWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgSteerValueRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgSteerValueSize(value)
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
    if(typeof value["roll"] !== "number" || !Number.isFinite(value["roll"]) || !Number.isFinite(Math.fround(value["roll"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["pitch"] !== "number" || !Number.isFinite(value["pitch"]) || !Number.isFinite(Math.fround(value["pitch"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]) || !Number.isFinite(Math.fround(value["yaw"])))
        bad();
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2DrddsMsgSteerValueWrite(value, w)
{
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["z"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["roll"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["pitch"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["yaw"], true);
    w.at += 4;
}

function Ros2DrddsMsgSteerValueRead(r)
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
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["roll"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgSteerValueCapture(value)
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
        const field = value["roll"];
        out["roll"] = field;
    }
    {
        const field = value["pitch"];
        out["pitch"] = field;
    }
    {
        const field = value["yaw"];
        out["yaw"] = field;
    }
    return out;
}

/** @brief Complete ROS2 drdds/msg/Steer codec; maxima are not actual lengths. */
export const Ros2DrddsMsgSteerCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793",
    maxWireBytes : 40,
    minWireBytes : 40,
    cartesianMaxWireBytes : 40n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2DrddsMsgMetaTypeCodec.defaultValue(), "data" : Ros2DrddsMsgSteerValueCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2DrddsMsgSteerSize(Ros2DrddsMsgSteerCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsMsgSteerCapture(value), n = Ros2DrddsMsgSteerSize(owned), w = new Writer(n);
        Ros2DrddsMsgSteerWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 40, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2DrddsMsgSteerRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsMsgSteerSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2DrddsMsgMetaTypeSize(value["header"]));
    n = addSize(n, Ros2DrddsMsgSteerValueSize(value["data"]));
    if(n > 40)
        bad(90);
    return n;
}

function Ros2DrddsMsgSteerWrite(value, w)
{
    Ros2DrddsMsgMetaTypeWrite(value["header"], w);
    Ros2DrddsMsgSteerValueWrite(value["data"], w);
}

function Ros2DrddsMsgSteerRead(r)
{
    const value = {};
    {
        const decoded = Ros2DrddsMsgMetaTypeRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros2DrddsMsgSteerValueRead(r);
        value["data"] = decoded;
    }
    return value;
}

function Ros2DrddsMsgSteerCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2DrddsMsgMetaTypeCapture(field);
    }
    {
        const field = value["data"];
        out["data"] = Ros2DrddsMsgSteerValueCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 drdds/srv/StdSrvInt32_Request codec; maxima are not actual lengths. */
export const Ros2DrddsSrvStdSrvInt32_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : 0};
    },
    validateValue(value) {
        Ros2DrddsSrvStdSrvInt32_RequestSize(Ros2DrddsSrvStdSrvInt32_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsSrvStdSrvInt32_RequestCapture(value), n = Ros2DrddsSrvStdSrvInt32_RequestSize(owned), w = new Writer(n);
        Ros2DrddsSrvStdSrvInt32_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2DrddsSrvStdSrvInt32_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsSrvStdSrvInt32_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["command"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2DrddsSrvStdSrvInt32_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["command"], true);
    w.at += 4;
}

function Ros2DrddsSrvStdSrvInt32_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["command"] = decoded;
    }
    return value;
}

function Ros2DrddsSrvStdSrvInt32_RequestCapture(value)
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

/** @brief Complete ROS2 drdds/srv/StdSrvInt32_Response codec; maxima are not actual lengths. */
export const Ros2DrddsSrvStdSrvInt32_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : 0};
    },
    validateValue(value) {
        Ros2DrddsSrvStdSrvInt32_ResponseSize(Ros2DrddsSrvStdSrvInt32_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2DrddsSrvStdSrvInt32_ResponseCapture(value), n = Ros2DrddsSrvStdSrvInt32_ResponseSize(owned), w = new Writer(n);
        Ros2DrddsSrvStdSrvInt32_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2DrddsSrvStdSrvInt32_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2DrddsSrvStdSrvInt32_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["result"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2DrddsSrvStdSrvInt32_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["result"], true);
    w.at += 4;
}

function Ros2DrddsSrvStdSrvInt32_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["result"] = decoded;
    }
    return value;
}

function Ros2DrddsSrvStdSrvInt32_ResponseCapture(value)
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
