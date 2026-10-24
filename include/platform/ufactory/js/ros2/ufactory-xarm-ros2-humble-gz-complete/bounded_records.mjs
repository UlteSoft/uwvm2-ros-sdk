/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original ufactory/ros2_humble_gz canonical value domain.
 * @details The selected domain contains 111 complete record/components and 300 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
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

/** Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
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
        const owned = copyRaw(bytes, 268, 90);
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
    n = addSize(n, 4 + textBytes(value["frame_id"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 256);
}

function Ros2Std_msgsMsgHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(256);
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

/** Complete ROS2 xarm_msgs/msg/CIOState codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsMsgCIOStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268",
    maxWireBytes : 328,
    minWireBytes : 72,
    cartesianMaxWireBytes : 328n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "state" : 0,
            "code" : 0,
            "input_digitals" : Array.from({length : 2}, () => (0)),
            "output_digitals" : Array.from({length : 2}, () => (0)),
            "input_analogs" : Array.from({length : 2}, () => (0)),
            "output_analogs" : Array.from({length : 2}, () => (0)),
            "input_conf" : Array.from({length : 16}, () => (0)),
            "output_conf" : Array.from({length : 16}, () => (0))
        };
    },
    validateValue(value) {
        Ros2Xarm_msgsMsgCIOStateSize(Ros2Xarm_msgsMsgCIOStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsMsgCIOStateCapture(value), n = Ros2Xarm_msgsMsgCIOStateSize(owned), w = new Writer(n);
        Ros2Xarm_msgsMsgCIOStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 328, 90);
        if(owned.length < 72)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsMsgCIOStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsMsgCIOStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    integer(value["state"], 2, true);
    n = addSize(n, 2);
    integer(value["code"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["input_digitals"]) || value["input_digitals"].length !== 2)
        bad();
    for(const element of value["input_digitals"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["output_digitals"]) || value["output_digitals"].length !== 2)
        bad();
    for(const element of value["output_digitals"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["input_analogs"]) || value["input_analogs"].length !== 2)
        bad();
    for(const element of value["input_analogs"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["output_analogs"]) || value["output_analogs"].length !== 2)
        bad();
    for(const element of value["output_analogs"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["input_conf"]) || value["input_conf"].length !== 16)
        bad();
    for(const element of value["input_conf"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["output_conf"]) || value["output_conf"].length !== 16)
        bad();
    for(const element of value["output_conf"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 328)
        bad(90);
    return n;
}

function Ros2Xarm_msgsMsgCIOStateWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setInt16(w.at, value["state"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["code"], true);
    w.at += 2;
    for(const element of value["input_digitals"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["output_digitals"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["input_analogs"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["output_analogs"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["input_conf"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["output_conf"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsMsgCIOStateRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["code"] = decoded;
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["input_digitals"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["input_digitals"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["output_digitals"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["output_digitals"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["input_analogs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["input_analogs"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["output_analogs"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["output_analogs"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["input_conf"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["input_conf"].push(decoded);
            }
        }
    }
    {
        {
            const count = 16;
            if(count > 16)
                bad();
            value["output_conf"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["output_conf"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsMsgCIOStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["code"];
        out["code"] = field;
    }
    {
        const field = value["input_digitals"];
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
        out["input_digitals"] = values;
    }
    {
        const field = value["output_digitals"];
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
        out["output_digitals"] = values;
    }
    {
        const field = value["input_analogs"];
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
        out["input_analogs"] = values;
    }
    {
        const field = value["output_analogs"];
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
        out["output_analogs"] = values;
    }
    {
        const field = value["input_conf"];
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
        out["input_conf"] = values;
    }
    {
        const field = value["output_conf"];
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
        out["output_conf"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/msg/IOState codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsMsgIOStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"digital_1" : 0, "digital_2" : 0, "analog_1" : 0, "analog_2" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsMsgIOStateSize(Ros2Xarm_msgsMsgIOStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsMsgIOStateCapture(value), n = Ros2Xarm_msgsMsgIOStateSize(owned), w = new Writer(n);
        Ros2Xarm_msgsMsgIOStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsMsgIOStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsMsgIOStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["digital_1"], 4, true);
    n = addSize(n, 4);
    integer(value["digital_2"], 4, true);
    n = addSize(n, 4);
    if(typeof value["analog_1"] !== "number" || !Number.isFinite(value["analog_1"]) || !Number.isFinite(Math.fround(value["analog_1"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["analog_2"] !== "number" || !Number.isFinite(value["analog_2"]) || !Number.isFinite(Math.fround(value["analog_2"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Xarm_msgsMsgIOStateWrite(value, w)
{
    w.v.setInt32(w.at, value["digital_1"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["digital_2"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["analog_1"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["analog_2"], true);
    w.at += 4;
}

function Ros2Xarm_msgsMsgIOStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_1"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["digital_2"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_1"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_2"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsMsgIOStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["digital_1"];
        out["digital_1"] = field;
    }
    {
        const field = value["digital_2"];
        out["digital_2"] = field;
    }
    {
        const field = value["analog_1"];
        out["analog_1"] = field;
    }
    {
        const field = value["analog_2"];
        out["analog_2"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/msg/MoveVelocity codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsMsgMoveVelocityCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f",
    maxWireBytes : 138,
    minWireBytes : 10,
    cartesianMaxWireBytes : 138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speeds" : [], "is_sync" : true, "is_tool_coord" : false, "duration" : -1.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsMsgMoveVelocitySize(Ros2Xarm_msgsMsgMoveVelocityCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsMsgMoveVelocityCapture(value), n = Ros2Xarm_msgsMsgMoveVelocitySize(owned), w = new Writer(n);
        Ros2Xarm_msgsMsgMoveVelocityWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 138, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsMsgMoveVelocityRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsMsgMoveVelocitySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["speeds"]) || value["speeds"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["speeds"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["is_sync"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["is_tool_coord"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]) || !Number.isFinite(Math.fround(value["duration"])))
        bad();
    n = addSize(n, 4);
    if(n > 138)
        bad(90);
    return n;
}

function Ros2Xarm_msgsMsgMoveVelocityWrite(value, w)
{
    w.v.setUint32(w.at, value["speeds"].length, true);
    w.at += 4;
    for(const element of value["speeds"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["is_sync"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_tool_coord"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["duration"], true);
    w.at += 4;
}

function Ros2Xarm_msgsMsgMoveVelocityRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["speeds"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["speeds"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_sync"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_tool_coord"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsMsgMoveVelocityCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speeds"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["speeds"] = values;
    }
    {
        const field = value["is_sync"];
        out["is_sync"] = field;
    }
    {
        const field = value["is_tool_coord"];
        out["is_tool_coord"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/msg/RobotMsg codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsMsgRobotMsgCodec = Object.freeze({
    codecIdentity : "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78",
    maxWireBytes : 362,
    minWireBytes : 78,
    cartesianMaxWireBytes : 362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(),
            "state" : 0,
            "mode" : 0,
            "cmdnum" : 0,
            "mt_brake" : 0,
            "mt_able" : 0,
            "err" : 0,
            "warn" : 0,
            "angle" : [],
            "pose" : Array.from({length : 6}, () => (0)),
            "offset" : Array.from({length : 6}, () => (0))
        };
    },
    validateValue(value) {
        Ros2Xarm_msgsMsgRobotMsgSize(Ros2Xarm_msgsMsgRobotMsgCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsMsgRobotMsgCapture(value), n = Ros2Xarm_msgsMsgRobotMsgSize(owned), w = new Writer(n);
        Ros2Xarm_msgsMsgRobotMsgWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 362, 90);
        if(owned.length < 78)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsMsgRobotMsgRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsMsgRobotMsgSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    integer(value["state"], 2, true);
    n = addSize(n, 2);
    integer(value["mode"], 2, true);
    n = addSize(n, 2);
    integer(value["cmdnum"], 2, true);
    n = addSize(n, 2);
    integer(value["mt_brake"], 2, true);
    n = addSize(n, 2);
    integer(value["mt_able"], 2, true);
    n = addSize(n, 2);
    integer(value["err"], 2, true);
    n = addSize(n, 2);
    integer(value["warn"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["angle"]) || value["angle"].length > 7)
        bad();
    n = addSize(n, 4);
    for(const element of value["angle"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pose"]) || value["pose"].length !== 6)
        bad();
    for(const element of value["pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["offset"]) || value["offset"].length !== 6)
        bad();
    for(const element of value["offset"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsMsgRobotMsgWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setInt16(w.at, value["state"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mode"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["cmdnum"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mt_brake"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mt_able"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["err"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["warn"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["angle"].length, true);
    w.at += 4;
    for(const element of value["angle"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["offset"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsMsgRobotMsgRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["cmdnum"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mt_brake"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mt_able"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["warn"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 7)
                bad();
            value["angle"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["angle"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["offset"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["offset"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsMsgRobotMsgCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["cmdnum"];
        out["cmdnum"] = field;
    }
    {
        const field = value["mt_brake"];
        out["mt_brake"] = field;
    }
    {
        const field = value["mt_able"];
        out["mt_able"] = field;
    }
    {
        const field = value["err"];
        out["err"] = field;
    }
    {
        const field = value["warn"];
        out["warn"] = field;
    }
    {
        const field = value["angle"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["angle"] = values;
    }
    {
        const field = value["pose"];
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
        out["pose"] = values;
    }
    {
        const field = value["offset"];
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
        out["offset"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/BioGripperCtrl_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f",
    maxWireBytes : 7,
    minWireBytes : 7,
    cartesianMaxWireBytes : 7n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0, "wait" : true, "timeout" : 5.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvBioGripperCtrl_RequestSize(Ros2Xarm_msgsSrvBioGripperCtrl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvBioGripperCtrl_RequestCapture(value), n = Ros2Xarm_msgsSrvBioGripperCtrl_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvBioGripperCtrl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 7, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvBioGripperCtrl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvBioGripperCtrl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 2, true);
    n = addSize(n, 2);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 7)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvBioGripperCtrl_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvBioGripperCtrl_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvBioGripperCtrl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/BioGripperCtrl_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvBioGripperCtrl_ResponseSize(Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCapture(value), n = Ros2Xarm_msgsSrvBioGripperCtrl_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvBioGripperCtrl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvBioGripperCtrl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvBioGripperCtrl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvBioGripperCtrl_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvBioGripperCtrl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/BioGripperEnable_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43",
    maxWireBytes : 6,
    minWireBytes : 6,
    cartesianMaxWireBytes : 6n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"enable" : false, "wait" : false, "timeout" : 3.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvBioGripperEnable_RequestSize(Ros2Xarm_msgsSrvBioGripperEnable_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvBioGripperEnable_RequestCapture(value), n = Ros2Xarm_msgsSrvBioGripperEnable_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvBioGripperEnable_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvBioGripperEnable_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvBioGripperEnable_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 6)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvBioGripperEnable_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvBioGripperEnable_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvBioGripperEnable_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["enable"];
        out["enable"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/BioGripperEnable_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvBioGripperEnable_ResponseSize(Ros2Xarm_msgsSrvBioGripperEnable_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvBioGripperEnable_ResponseCapture(value), n = Ros2Xarm_msgsSrvBioGripperEnable_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvBioGripperEnable_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvBioGripperEnable_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvBioGripperEnable_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvBioGripperEnable_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvBioGripperEnable_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvBioGripperEnable_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/Call_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvCall_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvCall_RequestSize(Ros2Xarm_msgsSrvCall_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvCall_RequestCapture(value), n = Ros2Xarm_msgsSrvCall_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvCall_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvCall_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvCall_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvCall_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvCall_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvCall_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/Call_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvCall_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvCall_ResponseSize(Ros2Xarm_msgsSrvCall_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvCall_ResponseCapture(value), n = Ros2Xarm_msgsSrvCall_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvCall_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvCall_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvCall_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvCall_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["ret"], true);
    w.at += 4;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvCall_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvCall_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtAdmittanceParams_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92",
    maxWireBytes : 466,
    minWireBytes : 18,
    cartesianMaxWireBytes : 466n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"coord" : 0, "c_axis" : [], "m" : [], "k" : [], "b" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtAdmittanceParams_RequestSize(Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCapture(value), n = Ros2Xarm_msgsSrvFtAdmittanceParams_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtAdmittanceParams_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 466, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtAdmittanceParams_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtAdmittanceParams_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["c_axis"]) || value["c_axis"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["c_axis"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["m"]) || value["m"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["m"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["k"]) || value["k"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["k"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["b"]) || value["b"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["b"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 466)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["c_axis"].length, true);
    w.at += 4;
    for(const element of value["c_axis"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["m"].length, true);
    w.at += 4;
    for(const element of value["m"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["k"].length, true);
    w.at += 4;
    for(const element of value["k"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["b"].length, true);
    w.at += 4;
    for(const element of value["b"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["c_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["c_axis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["m"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["m"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["k"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["k"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["b"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["b"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    {
        const field = value["c_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["c_axis"] = values;
    }
    {
        const field = value["m"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["m"] = values;
    }
    {
        const field = value["k"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["k"] = values;
    }
    {
        const field = value["b"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["b"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtAdmittanceParams_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseSize(Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtCaliLoad_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f",
    maxWireBytes : 149,
    minWireBytes : 21,
    cartesianMaxWireBytes : 149n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"datas" : [], "association_setting_tcp_load" : false, "m" : 0.27000001072883606, "x" : -17.0, "y" : 9.0, "z" : 11.800000190734863};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtCaliLoad_RequestSize(Ros2Xarm_msgsSrvFtCaliLoad_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtCaliLoad_RequestCapture(value), n = Ros2Xarm_msgsSrvFtCaliLoad_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtCaliLoad_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 149, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtCaliLoad_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtCaliLoad_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["association_setting_tcp_load"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["m"] !== "number" || !Number.isFinite(value["m"]) || !Number.isFinite(Math.fround(value["m"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["x"] !== "number" || !Number.isFinite(value["x"]) || !Number.isFinite(Math.fround(value["x"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["y"] !== "number" || !Number.isFinite(value["y"]) || !Number.isFinite(Math.fround(value["y"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["z"] !== "number" || !Number.isFinite(value["z"]) || !Number.isFinite(Math.fround(value["z"])))
        bad();
    n = addSize(n, 4);
    if(n > 149)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtCaliLoad_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["association_setting_tcp_load"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["m"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["x"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["y"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["z"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvFtCaliLoad_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["datas"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["association_setting_tcp_load"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["m"] = decoded;
    }
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

function Ros2Xarm_msgsSrvFtCaliLoad_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    {
        const field = value["association_setting_tcp_load"];
        out["association_setting_tcp_load"] = field;
    }
    {
        const field = value["m"];
        out["m"] = field;
    }
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

/** Complete ROS2 xarm_msgs/srv/FtCaliLoad_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtCaliLoad_ResponseSize(Ros2Xarm_msgsSrvFtCaliLoad_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtCaliLoad_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtCaliLoad_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtCaliLoad_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtCaliLoad_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtCaliLoad_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtCaliLoad_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtCaliLoad_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtCaliLoad_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForceConfig_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForceConfig_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63",
    maxWireBytes : 334,
    minWireBytes : 14,
    cartesianMaxWireBytes : 334n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"coord" : 0, "c_axis" : [], "ref" : [], "limits" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForceConfig_RequestSize(Ros2Xarm_msgsSrvFtForceConfig_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForceConfig_RequestCapture(value), n = Ros2Xarm_msgsSrvFtForceConfig_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForceConfig_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 334, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForceConfig_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForceConfig_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["c_axis"]) || value["c_axis"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["c_axis"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["ref"]) || value["ref"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["ref"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["limits"]) || value["limits"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 334)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForceConfig_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["c_axis"].length, true);
    w.at += 4;
    for(const element of value["c_axis"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["ref"].length, true);
    w.at += 4;
    for(const element of value["ref"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["limits"].length, true);
    w.at += 4;
    for(const element of value["limits"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvFtForceConfig_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["c_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["c_axis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["ref"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["ref"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["limits"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForceConfig_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    {
        const field = value["c_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["c_axis"] = values;
    }
    {
        const field = value["ref"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ref"] = values;
    }
    {
        const field = value["limits"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["limits"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForceConfig_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForceConfig_ResponseSize(Ros2Xarm_msgsSrvFtForceConfig_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForceConfig_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtForceConfig_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForceConfig_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForceConfig_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForceConfig_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForceConfig_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtForceConfig_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForceConfig_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForceParams_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForceParams_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08",
    maxWireBytes : 862,
    minWireBytes : 30,
    cartesianMaxWireBytes : 862n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"coord" : 0, "c_axis" : [], "ref" : [], "limits" : [], "kp" : [], "ki" : [], "kd" : [], "xe_limit" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForceParams_RequestSize(Ros2Xarm_msgsSrvFtForceParams_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForceParams_RequestCapture(value), n = Ros2Xarm_msgsSrvFtForceParams_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForceParams_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 862, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForceParams_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForceParams_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["c_axis"]) || value["c_axis"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["c_axis"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["ref"]) || value["ref"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["ref"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["limits"]) || value["limits"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["limits"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["kp"]) || value["kp"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["kp"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["ki"]) || value["ki"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["ki"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["kd"]) || value["kd"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["kd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["xe_limit"]) || value["xe_limit"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["xe_limit"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 862)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForceParams_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["c_axis"].length, true);
    w.at += 4;
    for(const element of value["c_axis"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["ref"].length, true);
    w.at += 4;
    for(const element of value["ref"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["limits"].length, true);
    w.at += 4;
    for(const element of value["limits"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["kp"].length, true);
    w.at += 4;
    for(const element of value["kp"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["ki"].length, true);
    w.at += 4;
    for(const element of value["ki"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["kd"].length, true);
    w.at += 4;
    for(const element of value["kd"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["xe_limit"].length, true);
    w.at += 4;
    for(const element of value["xe_limit"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvFtForceParams_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["c_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["c_axis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["ref"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["ref"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["limits"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["limits"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["kp"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["kp"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["ki"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["ki"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["kd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["kd"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["xe_limit"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xe_limit"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForceParams_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    {
        const field = value["c_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["c_axis"] = values;
    }
    {
        const field = value["ref"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ref"] = values;
    }
    {
        const field = value["limits"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["limits"] = values;
    }
    {
        const field = value["kp"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["kp"] = values;
    }
    {
        const field = value["ki"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ki"] = values;
    }
    {
        const field = value["kd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["kd"] = values;
    }
    {
        const field = value["xe_limit"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xe_limit"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForceParams_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForceParams_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForceParams_ResponseSize(Ros2Xarm_msgsSrvFtForceParams_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForceParams_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtForceParams_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForceParams_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForceParams_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForceParams_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForceParams_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtForceParams_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForceParams_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForcePid_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForcePid_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367",
    maxWireBytes : 528,
    minWireBytes : 16,
    cartesianMaxWireBytes : 528n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"kp" : [], "ki" : [], "kd" : [], "xe_limit" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForcePid_RequestSize(Ros2Xarm_msgsSrvFtForcePid_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForcePid_RequestCapture(value), n = Ros2Xarm_msgsSrvFtForcePid_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForcePid_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 528, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForcePid_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForcePid_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["kp"]) || value["kp"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["kp"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["ki"]) || value["ki"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["ki"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["kd"]) || value["kd"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["kd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["xe_limit"]) || value["xe_limit"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["xe_limit"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 528)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForcePid_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["kp"].length, true);
    w.at += 4;
    for(const element of value["kp"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["ki"].length, true);
    w.at += 4;
    for(const element of value["ki"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["kd"].length, true);
    w.at += 4;
    for(const element of value["kd"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["xe_limit"].length, true);
    w.at += 4;
    for(const element of value["xe_limit"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvFtForcePid_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["kp"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["kp"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["ki"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["ki"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["kd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["kd"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["xe_limit"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xe_limit"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForcePid_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["kp"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["kp"] = values;
    }
    {
        const field = value["ki"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ki"] = values;
    }
    {
        const field = value["kd"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["kd"] = values;
    }
    {
        const field = value["xe_limit"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xe_limit"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtForcePid_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtForcePid_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtForcePid_ResponseSize(Ros2Xarm_msgsSrvFtForcePid_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtForcePid_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtForcePid_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtForcePid_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtForcePid_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtForcePid_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtForcePid_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtForcePid_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtForcePid_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtImpedance_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtImpedance_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d",
    maxWireBytes : 466,
    minWireBytes : 18,
    cartesianMaxWireBytes : 466n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"coord" : 0, "c_axis" : [], "m" : [], "k" : [], "b" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtImpedance_RequestSize(Ros2Xarm_msgsSrvFtImpedance_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtImpedance_RequestCapture(value), n = Ros2Xarm_msgsSrvFtImpedance_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtImpedance_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 466, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtImpedance_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtImpedance_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    if(!Array.isArray(value["c_axis"]) || value["c_axis"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["c_axis"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["m"]) || value["m"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["m"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["k"]) || value["k"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["k"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["b"]) || value["b"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["b"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 466)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtImpedance_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
    w.v.setUint32(w.at, value["c_axis"].length, true);
    w.at += 4;
    for(const element of value["c_axis"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["m"].length, true);
    w.at += 4;
    for(const element of value["m"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["k"].length, true);
    w.at += 4;
    for(const element of value["k"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["b"].length, true);
    w.at += 4;
    for(const element of value["b"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvFtImpedance_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["c_axis"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["c_axis"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["m"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["m"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["k"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["k"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["b"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["b"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvFtImpedance_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    {
        const field = value["c_axis"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["c_axis"] = values;
    }
    {
        const field = value["m"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["m"] = values;
    }
    {
        const field = value["k"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["k"] = values;
    }
    {
        const field = value["b"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["b"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/FtImpedance_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvFtImpedance_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvFtImpedance_ResponseSize(Ros2Xarm_msgsSrvFtImpedance_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvFtImpedance_ResponseCapture(value), n = Ros2Xarm_msgsSrvFtImpedance_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvFtImpedance_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvFtImpedance_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvFtImpedance_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvFtImpedance_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvFtImpedance_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvFtImpedance_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetAnalogIO_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ionum" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetAnalogIO_RequestSize(Ros2Xarm_msgsSrvGetAnalogIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetAnalogIO_RequestCapture(value), n = Ros2Xarm_msgsSrvGetAnalogIO_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetAnalogIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetAnalogIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetAnalogIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ionum"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetAnalogIO_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["ionum"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvGetAnalogIO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ionum"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetAnalogIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ionum"];
        out["ionum"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetAnalogIO_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetAnalogIO_ResponseSize(Ros2Xarm_msgsSrvGetAnalogIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetAnalogIO_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetAnalogIO_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetAnalogIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetAnalogIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetAnalogIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(typeof value["data"] !== "number" || !Number.isFinite(value["data"]) || !Number.isFinite(Math.fround(value["data"])))
        bad();
    n = addSize(n, 4);
    if(n > 266)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetAnalogIO_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setFloat32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvGetAnalogIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetAnalogIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetDigitalIO_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetDigitalIO_RequestSize(Ros2Xarm_msgsSrvGetDigitalIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetDigitalIO_RequestCapture(value), n = Ros2Xarm_msgsSrvGetDigitalIO_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetDigitalIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetDigitalIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetDigitalIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetDigitalIO_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetDigitalIO_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetDigitalIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetDigitalIO_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c",
    maxWireBytes : 330,
    minWireBytes : 10,
    cartesianMaxWireBytes : 330n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "digitals" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetDigitalIO_ResponseSize(Ros2Xarm_msgsSrvGetDigitalIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetDigitalIO_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetDigitalIO_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetDigitalIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 330, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetDigitalIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetDigitalIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["digitals"]) || value["digitals"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["digitals"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(n > 330)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetDigitalIO_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["digitals"].length, true);
    w.at += 4;
    for(const element of value["digitals"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
}

function Ros2Xarm_msgsSrvGetDigitalIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["digitals"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["digitals"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvGetDigitalIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["digitals"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["digitals"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetFloat32_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetFloat32_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetFloat32_RequestSize(Ros2Xarm_msgsSrvGetFloat32_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetFloat32_RequestCapture(value), n = Ros2Xarm_msgsSrvGetFloat32_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetFloat32_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetFloat32_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetFloat32_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetFloat32_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetFloat32_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetFloat32_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetFloat32_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetFloat32_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetFloat32_ResponseSize(Ros2Xarm_msgsSrvGetFloat32_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetFloat32_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetFloat32_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetFloat32_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetFloat32_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetFloat32_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(typeof value["data"] !== "number" || !Number.isFinite(value["data"]) || !Number.isFinite(Math.fround(value["data"])))
        bad();
    n = addSize(n, 4);
    if(n > 266)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetFloat32_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setFloat32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvGetFloat32_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetFloat32_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetFloat32List_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetFloat32List_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetFloat32List_RequestSize(Ros2Xarm_msgsSrvGetFloat32List_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetFloat32List_RequestCapture(value), n = Ros2Xarm_msgsSrvGetFloat32List_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetFloat32List_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetFloat32List_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetFloat32List_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetFloat32List_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetFloat32List_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetFloat32List_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetFloat32List_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4",
    maxWireBytes : 394,
    minWireBytes : 10,
    cartesianMaxWireBytes : 394n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "datas" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetFloat32List_ResponseSize(Ros2Xarm_msgsSrvGetFloat32List_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetFloat32List_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetFloat32List_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetFloat32List_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 394, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetFloat32List_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetFloat32List_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 394)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetFloat32List_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvGetFloat32List_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["datas"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvGetFloat32List_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt16_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt16_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt16_RequestSize(Ros2Xarm_msgsSrvGetInt16_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt16_RequestCapture(value), n = Ros2Xarm_msgsSrvGetInt16_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt16_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt16_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt16_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt16_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetInt16_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetInt16_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt16_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt16_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt16_ResponseSize(Ros2Xarm_msgsSrvGetInt16_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt16_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetInt16_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt16_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt16_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt16_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    integer(value["data"], 2, true);
    n = addSize(n, 2);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt16_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvGetInt16_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetInt16_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt16List_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt16List_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt16List_RequestSize(Ros2Xarm_msgsSrvGetInt16List_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt16List_RequestCapture(value), n = Ros2Xarm_msgsSrvGetInt16List_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt16List_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt16List_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt16List_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt16List_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetInt16List_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetInt16List_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt16List_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt16List_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139",
    maxWireBytes : 330,
    minWireBytes : 10,
    cartesianMaxWireBytes : 330n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "datas" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt16List_ResponseSize(Ros2Xarm_msgsSrvGetInt16List_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt16List_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetInt16List_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt16List_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 330, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt16List_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt16List_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(n > 330)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt16List_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
}

function Ros2Xarm_msgsSrvGetInt16List_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["datas"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvGetInt16List_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt32_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt32_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt32_RequestSize(Ros2Xarm_msgsSrvGetInt32_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt32_RequestCapture(value), n = Ros2Xarm_msgsSrvGetInt32_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt32_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt32_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt32_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt32_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvGetInt32_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvGetInt32_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt32_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt32_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt32_ResponseSize(Ros2Xarm_msgsSrvGetInt32_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt32_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetInt32_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt32_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt32_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt32_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    integer(value["data"], 4, true);
    n = addSize(n, 4);
    if(n > 266)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt32_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setInt32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvGetInt32_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetInt32_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt32ByType_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"type" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt32ByType_RequestSize(Ros2Xarm_msgsSrvGetInt32ByType_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt32ByType_RequestCapture(value), n = Ros2Xarm_msgsSrvGetInt32ByType_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt32ByType_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt32ByType_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt32ByType_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt32ByType_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["type"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvGetInt32ByType_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetInt32ByType_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetInt32ByType_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetInt32ByType_ResponseSize(Ros2Xarm_msgsSrvGetInt32ByType_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetInt32ByType_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetInt32ByType_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetInt32ByType_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetInt32ByType_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetInt32ByType_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    integer(value["data"], 4, true);
    n = addSize(n, 4);
    if(n > 266)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetInt32ByType_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setInt32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvGetInt32ByType_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetInt32ByType_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetSetModbusData_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd",
    maxWireBytes : 4107,
    minWireBytes : 11,
    cartesianMaxWireBytes : 4107n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"modbus_data" : [], "modbus_length" : 0, "ret_length" : 0, "host_id" : 9, "is_transparent_transmission" : false, "use_503_port" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetSetModbusData_RequestSize(Ros2Xarm_msgsSrvGetSetModbusData_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetSetModbusData_RequestCapture(value), n = Ros2Xarm_msgsSrvGetSetModbusData_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetSetModbusData_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4107, 90);
        if(owned.length < 11)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetSetModbusData_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetSetModbusData_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["modbus_data"]) || value["modbus_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["modbus_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["modbus_length"], 2, true);
    n = addSize(n, 2);
    integer(value["ret_length"], 2, true);
    n = addSize(n, 2);
    integer(value["host_id"], 1, false);
    n = addSize(n, 1);
    if(typeof value["is_transparent_transmission"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["use_503_port"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 4107)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetSetModbusData_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["modbus_data"].length, true);
    w.at += 4;
    for(const element of value["modbus_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setInt16(w.at, value["modbus_length"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["ret_length"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["host_id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_transparent_transmission"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["use_503_port"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvGetSetModbusData_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["modbus_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["modbus_data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["modbus_length"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret_length"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["host_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_transparent_transmission"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["use_503_port"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvGetSetModbusData_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["modbus_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["modbus_data"] = values;
    }
    {
        const field = value["modbus_length"];
        out["modbus_length"] = field;
    }
    {
        const field = value["ret_length"];
        out["ret_length"] = field;
    }
    {
        const field = value["host_id"];
        out["host_id"] = field;
    }
    {
        const field = value["is_transparent_transmission"];
        out["is_transparent_transmission"] = field;
    }
    {
        const field = value["use_503_port"];
        out["use_503_port"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GetSetModbusData_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "ret_data" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGetSetModbusData_ResponseSize(Ros2Xarm_msgsSrvGetSetModbusData_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGetSetModbusData_ResponseCapture(value), n = Ros2Xarm_msgsSrvGetSetModbusData_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGetSetModbusData_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGetSetModbusData_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGetSetModbusData_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["ret_data"]) || value["ret_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["ret_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGetSetModbusData_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["ret_data"].length, true);
    w.at += 4;
    for(const element of value["ret_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsSrvGetSetModbusData_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["ret_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ret_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvGetSetModbusData_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ret_data"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GripperMove_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGripperMove_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "wait" : false, "timeout" : 10.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGripperMove_RequestSize(Ros2Xarm_msgsSrvGripperMove_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGripperMove_RequestCapture(value), n = Ros2Xarm_msgsSrvGripperMove_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGripperMove_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGripperMove_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGripperMove_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["pos"] !== "number" || !Number.isFinite(value["pos"]) || !Number.isFinite(Math.fround(value["pos"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 9)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGripperMove_RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["pos"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvGripperMove_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGripperMove_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/GripperMove_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvGripperMove_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvGripperMove_ResponseSize(Ros2Xarm_msgsSrvGripperMove_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvGripperMove_ResponseCapture(value), n = Ros2Xarm_msgsSrvGripperMove_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvGripperMove_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvGripperMove_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvGripperMove_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvGripperMove_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvGripperMove_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvGripperMove_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/IdenLoad_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvIdenLoad_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"estimated_mass" : 0.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvIdenLoad_RequestSize(Ros2Xarm_msgsSrvIdenLoad_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvIdenLoad_RequestCapture(value), n = Ros2Xarm_msgsSrvIdenLoad_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvIdenLoad_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvIdenLoad_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvIdenLoad_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["estimated_mass"] !== "number" || !Number.isFinite(value["estimated_mass"]) || !Number.isFinite(Math.fround(value["estimated_mass"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvIdenLoad_RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["estimated_mass"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvIdenLoad_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["estimated_mass"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvIdenLoad_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["estimated_mass"];
        out["estimated_mass"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/IdenLoad_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvIdenLoad_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e",
    maxWireBytes : 394,
    minWireBytes : 10,
    cartesianMaxWireBytes : 394n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "datas" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvIdenLoad_ResponseSize(Ros2Xarm_msgsSrvIdenLoad_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvIdenLoad_ResponseCapture(value), n = Ros2Xarm_msgsSrvIdenLoad_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvIdenLoad_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 394, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvIdenLoad_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvIdenLoad_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 394)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvIdenLoad_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvIdenLoad_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["datas"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvIdenLoad_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearMotorBackOrigin_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"wait" : true, "auto_enable" : true};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestSize(Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCapture(value), n = Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestSize(owned),
              w = new Writer(n);
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["auto_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["auto_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["auto_enable"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["auto_enable"];
        out["auto_enable"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearMotorBackOrigin_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseSize(Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCapture(value), n = Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseSize(owned),
              w = new Writer(n);
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearMotorSetPos_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd",
    maxWireBytes : 10,
    minWireBytes : 10,
    cartesianMaxWireBytes : 10n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "speed" : 0, "wait" : true, "timeout" : 100.0, "auto_enable" : true};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearMotorSetPos_RequestSize(Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCapture(value), n = Ros2Xarm_msgsSrvLinearMotorSetPos_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvLinearMotorSetPos_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearMotorSetPos_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearMotorSetPos_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 2, true);
    n = addSize(n, 2);
    integer(value["speed"], 2, true);
    n = addSize(n, 2);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["auto_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 10)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["pos"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["auto_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["auto_enable"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["auto_enable"];
        out["auto_enable"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearMotorSetPos_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseSize(Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCapture(value), n = Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearTrackBackOrigin_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"wait" : true, "auto_enable" : true};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestSize(Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCapture(value), n = Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestSize(owned),
              w = new Writer(n);
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["auto_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["auto_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["auto_enable"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["auto_enable"];
        out["auto_enable"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearTrackBackOrigin_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseSize(Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCapture(value), n = Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseSize(owned),
              w = new Writer(n);
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearTrackSetPos_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62",
    maxWireBytes : 10,
    minWireBytes : 10,
    cartesianMaxWireBytes : 10n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "speed" : 0, "wait" : true, "timeout" : 100.0, "auto_enable" : true};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearTrackSetPos_RequestSize(Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCapture(value), n = Ros2Xarm_msgsSrvLinearTrackSetPos_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvLinearTrackSetPos_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearTrackSetPos_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearTrackSetPos_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 2, true);
    n = addSize(n, 2);
    integer(value["speed"], 2, true);
    n = addSize(n, 2);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["auto_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 10)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["pos"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["auto_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["auto_enable"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["auto_enable"];
        out["auto_enable"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/LinearTrackSetPos_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseSize(Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCapture(value), n = Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveCartesian_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveCartesian_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512",
    maxWireBytes : 156,
    minWireBytes : 28,
    cartesianMaxWireBytes : 156n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pose" : [],
            "speed" : 0.0,
            "acc" : 0.0,
            "mvtime" : 0.0,
            "wait" : false,
            "timeout" : -1.0,
            "radius" : -1.0,
            "is_tool_coord" : false,
            "relative" : false,
            "motion_type" : 0
        };
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveCartesian_RequestSize(Ros2Xarm_msgsSrvMoveCartesian_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveCartesian_RequestCapture(value), n = Ros2Xarm_msgsSrvMoveCartesian_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveCartesian_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 156, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveCartesian_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveCartesian_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pose"]) || value["pose"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]) || !Number.isFinite(Math.fround(value["acc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]) || !Number.isFinite(Math.fround(value["radius"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["is_tool_coord"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["relative"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["motion_type"], 1, false);
    n = addSize(n, 1);
    if(n > 156)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveCartesian_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pose"].length, true);
    w.at += 4;
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["radius"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["is_tool_coord"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["relative"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["motion_type"], true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvMoveCartesian_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_tool_coord"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["relative"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["motion_type"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveCartesian_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pose"] = values;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["is_tool_coord"];
        out["is_tool_coord"] = field;
    }
    {
        const field = value["relative"];
        out["relative"] = field;
    }
    {
        const field = value["motion_type"];
        out["motion_type"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveCartesian_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveCartesian_ResponseSize(Ros2Xarm_msgsSrvMoveCartesian_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveCartesian_ResponseCapture(value), n = Ros2Xarm_msgsSrvMoveCartesian_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveCartesian_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveCartesian_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveCartesian_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveCartesian_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvMoveCartesian_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveCartesian_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveCircle_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveCircle_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b",
    maxWireBytes : 287,
    minWireBytes : 31,
    cartesianMaxWireBytes : 287n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pose1" : [],
            "pose2" : [],
            "percent" : 0,
            "speed" : 0.0,
            "acc" : 0.0,
            "mvtime" : 0.0,
            "wait" : false,
            "timeout" : -1.0,
            "is_tool_coord" : false,
            "is_axis_angle" : false
        };
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveCircle_RequestSize(Ros2Xarm_msgsSrvMoveCircle_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveCircle_RequestCapture(value), n = Ros2Xarm_msgsSrvMoveCircle_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveCircle_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 287, 90);
        if(owned.length < 31)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveCircle_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveCircle_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pose1"]) || value["pose1"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["pose1"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pose2"]) || value["pose2"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["pose2"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["percent"] !== "number" || !Number.isFinite(value["percent"]) || !Number.isFinite(Math.fround(value["percent"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]) || !Number.isFinite(Math.fround(value["acc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["is_tool_coord"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["is_axis_angle"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 287)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveCircle_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pose1"].length, true);
    w.at += 4;
    for(const element of value["pose1"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["pose2"].length, true);
    w.at += 4;
    for(const element of value["pose2"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["percent"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["is_tool_coord"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_axis_angle"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvMoveCircle_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["pose1"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose1"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["pose2"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pose2"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["percent"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_tool_coord"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_axis_angle"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveCircle_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose1"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pose1"] = values;
    }
    {
        const field = value["pose2"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pose2"] = values;
    }
    {
        const field = value["percent"];
        out["percent"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["is_tool_coord"];
        out["is_tool_coord"] = field;
    }
    {
        const field = value["is_axis_angle"];
        out["is_axis_angle"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveCircle_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveCircle_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveCircle_ResponseSize(Ros2Xarm_msgsSrvMoveCircle_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveCircle_ResponseCapture(value), n = Ros2Xarm_msgsSrvMoveCircle_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveCircle_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveCircle_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveCircle_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveCircle_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvMoveCircle_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveCircle_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveHome_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveHome_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3",
    maxWireBytes : 17,
    minWireBytes : 17,
    cartesianMaxWireBytes : 17n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0.0, "acc" : 0.0, "mvtime" : 0.0, "wait" : false, "timeout" : -1.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveHome_RequestSize(Ros2Xarm_msgsSrvMoveHome_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveHome_RequestCapture(value), n = Ros2Xarm_msgsSrvMoveHome_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveHome_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 17, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveHome_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveHome_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]) || !Number.isFinite(Math.fround(value["acc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 17)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveHome_RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvMoveHome_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveHome_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveHome_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveHome_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveHome_ResponseSize(Ros2Xarm_msgsSrvMoveHome_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveHome_ResponseCapture(value), n = Ros2Xarm_msgsSrvMoveHome_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveHome_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveHome_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveHome_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveHome_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvMoveHome_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveHome_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveJoint_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveJoint_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7",
    maxWireBytes : 154,
    minWireBytes : 26,
    cartesianMaxWireBytes : 154n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"angles" : [], "speed" : 0.0, "acc" : 0.0, "mvtime" : 0.0, "wait" : false, "timeout" : -1.0, "radius" : -1.0, "relative" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveJoint_RequestSize(Ros2Xarm_msgsSrvMoveJoint_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveJoint_RequestCapture(value), n = Ros2Xarm_msgsSrvMoveJoint_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveJoint_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 154, 90);
        if(owned.length < 26)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveJoint_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveJoint_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["angles"]) || value["angles"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["angles"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["acc"] !== "number" || !Number.isFinite(value["acc"]) || !Number.isFinite(Math.fround(value["acc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["radius"] !== "number" || !Number.isFinite(value["radius"]) || !Number.isFinite(Math.fround(value["radius"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["relative"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 154)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveJoint_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["angles"].length, true);
    w.at += 4;
    for(const element of value["angles"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["acc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["radius"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["relative"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvMoveJoint_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["angles"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["angles"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["acc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["radius"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["relative"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveJoint_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["angles"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["angles"] = values;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["acc"];
        out["acc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["radius"];
        out["radius"] = field;
    }
    {
        const field = value["relative"];
        out["relative"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveJoint_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveJoint_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveJoint_ResponseSize(Ros2Xarm_msgsSrvMoveJoint_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveJoint_ResponseCapture(value), n = Ros2Xarm_msgsSrvMoveJoint_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveJoint_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveJoint_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveJoint_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveJoint_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvMoveJoint_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveJoint_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveVelocity_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveVelocity_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4",
    maxWireBytes : 138,
    minWireBytes : 10,
    cartesianMaxWireBytes : 138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speeds" : [], "is_sync" : true, "is_tool_coord" : false, "duration" : -1.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveVelocity_RequestSize(Ros2Xarm_msgsSrvMoveVelocity_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveVelocity_RequestCapture(value), n = Ros2Xarm_msgsSrvMoveVelocity_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveVelocity_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 138, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveVelocity_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveVelocity_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["speeds"]) || value["speeds"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["speeds"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["is_sync"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["is_tool_coord"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["duration"] !== "number" || !Number.isFinite(value["duration"]) || !Number.isFinite(Math.fround(value["duration"])))
        bad();
    n = addSize(n, 4);
    if(n > 138)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveVelocity_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["speeds"].length, true);
    w.at += 4;
    for(const element of value["speeds"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["is_sync"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_tool_coord"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["duration"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvMoveVelocity_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["speeds"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["speeds"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_sync"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_tool_coord"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["duration"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveVelocity_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speeds"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["speeds"] = values;
    }
    {
        const field = value["is_sync"];
        out["is_sync"] = field;
    }
    {
        const field = value["is_tool_coord"];
        out["is_tool_coord"] = field;
    }
    {
        const field = value["duration"];
        out["duration"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/MoveVelocity_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvMoveVelocity_ResponseSize(Ros2Xarm_msgsSrvMoveVelocity_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvMoveVelocity_ResponseCapture(value), n = Ros2Xarm_msgsSrvMoveVelocity_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvMoveVelocity_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvMoveVelocity_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvMoveVelocity_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvMoveVelocity_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvMoveVelocity_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvMoveVelocity_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/PlanExec_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanExec_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"wait" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanExec_RequestSize(Ros2Xarm_msgsSrvPlanExec_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanExec_RequestCapture(value), n = Ros2Xarm_msgsSrvPlanExec_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanExec_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanExec_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanExec_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvPlanExec_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvPlanExec_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvPlanExec_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/PlanExec_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanExec_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanExec_ResponseSize(Ros2Xarm_msgsSrvPlanExec_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanExec_ResponseCapture(value), n = Ros2Xarm_msgsSrvPlanExec_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanExec_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanExec_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanExec_ResponseSize(value)
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

function Ros2Xarm_msgsSrvPlanExec_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvPlanExec_ResponseRead(r)
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

function Ros2Xarm_msgsSrvPlanExec_ResponseCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/PlanJoint_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanJoint_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanJoint_RequestSize(Ros2Xarm_msgsSrvPlanJoint_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanJoint_RequestCapture(value), n = Ros2Xarm_msgsSrvPlanJoint_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanJoint_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanJoint_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanJoint_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["target"]) || value["target"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["target"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvPlanJoint_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["target"].length, true);
    w.at += 4;
    for(const element of value["target"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Xarm_msgsSrvPlanJoint_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["target"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["target"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvPlanJoint_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["target"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/PlanJoint_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanJoint_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanJoint_ResponseSize(Ros2Xarm_msgsSrvPlanJoint_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanJoint_ResponseCapture(value), n = Ros2Xarm_msgsSrvPlanJoint_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanJoint_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanJoint_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanJoint_ResponseSize(value)
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

function Ros2Xarm_msgsSrvPlanJoint_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvPlanJoint_ResponseRead(r)
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

function Ros2Xarm_msgsSrvPlanJoint_ResponseCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/PlanPose_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanPose_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : Ros2Geometry_msgsMsgPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanPose_RequestSize(Ros2Xarm_msgsSrvPlanPose_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanPose_RequestCapture(value), n = Ros2Xarm_msgsSrvPlanPose_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanPose_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanPose_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanPose_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["target"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvPlanPose_RequestWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["target"], w);
}

function Ros2Xarm_msgsSrvPlanPose_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["target"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvPlanPose_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        out["target"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/PlanPose_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanPose_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanPose_ResponseSize(Ros2Xarm_msgsSrvPlanPose_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanPose_ResponseCapture(value), n = Ros2Xarm_msgsSrvPlanPose_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanPose_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanPose_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanPose_ResponseSize(value)
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

function Ros2Xarm_msgsSrvPlanPose_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvPlanPose_ResponseRead(r)
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

function Ros2Xarm_msgsSrvPlanPose_ResponseCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/PlanSingleStraight_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : Ros2Geometry_msgsMsgPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanSingleStraight_RequestSize(Ros2Xarm_msgsSrvPlanSingleStraight_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanSingleStraight_RequestCapture(value), n = Ros2Xarm_msgsSrvPlanSingleStraight_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanSingleStraight_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanSingleStraight_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanSingleStraight_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["target"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvPlanSingleStraight_RequestWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["target"], w);
}

function Ros2Xarm_msgsSrvPlanSingleStraight_RequestRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["target"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvPlanSingleStraight_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        out["target"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/PlanSingleStraight_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvPlanSingleStraight_ResponseSize(Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCapture(value), n = Ros2Xarm_msgsSrvPlanSingleStraight_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvPlanSingleStraight_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvPlanSingleStraight_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvPlanSingleStraight_ResponseSize(value)
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

function Ros2Xarm_msgsSrvPlanSingleStraight_ResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvPlanSingleStraight_ResponseRead(r)
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

function Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/RobotiqActivate_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"wait" : true, "timeout" : 3.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqActivate_RequestSize(Ros2Xarm_msgsSrvRobotiqActivate_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqActivate_RequestCapture(value), n = Ros2Xarm_msgsSrvRobotiqActivate_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqActivate_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqActivate_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqActivate_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqActivate_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvRobotiqActivate_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqActivate_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqActivate_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "ret_data" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqActivate_ResponseSize(Ros2Xarm_msgsSrvRobotiqActivate_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqActivate_ResponseCapture(value), n = Ros2Xarm_msgsSrvRobotiqActivate_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqActivate_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqActivate_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqActivate_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["ret_data"]) || value["ret_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["ret_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqActivate_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["ret_data"].length, true);
    w.at += 4;
    for(const element of value["ret_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsSrvRobotiqActivate_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["ret_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ret_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqActivate_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ret_data"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqGetStatus_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"number_of_registers" : 3};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqGetStatus_RequestSize(Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCapture(value), n = Ros2Xarm_msgsSrvRobotiqGetStatus_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqGetStatus_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqGetStatus_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqGetStatus_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["number_of_registers"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["number_of_registers"], true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["number_of_registers"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["number_of_registers"];
        out["number_of_registers"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqGetStatus_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "ret_data" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseSize(Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCapture(value), n = Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["ret_data"]) || value["ret_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["ret_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["ret_data"].length, true);
    w.at += 4;
    for(const element of value["ret_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["ret_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ret_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ret_data"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqMove_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqMove_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "speed" : 255, "force" : 255, "wait" : true, "timeout" : 5.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqMove_RequestSize(Ros2Xarm_msgsSrvRobotiqMove_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqMove_RequestCapture(value), n = Ros2Xarm_msgsSrvRobotiqMove_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqMove_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqMove_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqMove_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 1, false);
    n = addSize(n, 1);
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    integer(value["force"], 1, false);
    n = addSize(n, 1);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqMove_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["pos"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["force"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvRobotiqMove_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqMove_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqMove_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "ret_data" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqMove_ResponseSize(Ros2Xarm_msgsSrvRobotiqMove_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqMove_ResponseCapture(value), n = Ros2Xarm_msgsSrvRobotiqMove_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqMove_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqMove_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqMove_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["ret_data"]) || value["ret_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["ret_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqMove_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["ret_data"].length, true);
    w.at += 4;
    for(const element of value["ret_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsSrvRobotiqMove_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["ret_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ret_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqMove_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ret_data"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqReset_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqReset_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqReset_RequestSize(Ros2Xarm_msgsSrvRobotiqReset_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqReset_RequestCapture(value), n = Ros2Xarm_msgsSrvRobotiqReset_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqReset_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqReset_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqReset_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqReset_RequestWrite(value, w)
{
}

function Ros2Xarm_msgsSrvRobotiqReset_RequestRead(r)
{
    const value = {};
    return value;
}

function Ros2Xarm_msgsSrvRobotiqReset_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS2 xarm_msgs/srv/RobotiqReset_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "ret_data" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvRobotiqReset_ResponseSize(Ros2Xarm_msgsSrvRobotiqReset_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvRobotiqReset_ResponseCapture(value), n = Ros2Xarm_msgsSrvRobotiqReset_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvRobotiqReset_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvRobotiqReset_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvRobotiqReset_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["ret_data"]) || value["ret_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["ret_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvRobotiqReset_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["ret_data"].length, true);
    w.at += 4;
    for(const element of value["ret_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros2Xarm_msgsSrvRobotiqReset_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["ret_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["ret_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvRobotiqReset_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 4096)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["ret_data"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetAnalogIO_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96",
    maxWireBytes : 142,
    minWireBytes : 14,
    cartesianMaxWireBytes : 142n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ionum" : 0, "value" : 0, "xyz" : [], "tol_r" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetAnalogIO_RequestSize(Ros2Xarm_msgsSrvSetAnalogIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetAnalogIO_RequestCapture(value), n = Ros2Xarm_msgsSrvSetAnalogIO_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetAnalogIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 142, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetAnalogIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetAnalogIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ionum"], 2, true);
    n = addSize(n, 2);
    if(typeof value["value"] !== "number" || !Number.isFinite(value["value"]) || !Number.isFinite(Math.fround(value["value"])))
        bad();
    n = addSize(n, 4);
    if(!Array.isArray(value["xyz"]) || value["xyz"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["tol_r"] !== "number" || !Number.isFinite(value["tol_r"]) || !Number.isFinite(Math.fround(value["tol_r"])))
        bad();
    n = addSize(n, 4);
    if(n > 142)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetAnalogIO_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["ionum"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["value"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["xyz"].length, true);
    w.at += 4;
    for(const element of value["xyz"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["tol_r"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvSetAnalogIO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ionum"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["value"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xyz"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["tol_r"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetAnalogIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ionum"];
        out["ionum"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["xyz"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xyz"] = values;
    }
    {
        const field = value["tol_r"];
        out["tol_r"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetAnalogIO_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetAnalogIO_ResponseSize(Ros2Xarm_msgsSrvSetAnalogIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetAnalogIO_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetAnalogIO_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetAnalogIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetAnalogIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetAnalogIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetAnalogIO_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetAnalogIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetAnalogIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetDigitalIO_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2",
    maxWireBytes : 144,
    minWireBytes : 16,
    cartesianMaxWireBytes : 144n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ionum" : 0, "value" : 0, "delay_sec" : 0.0, "xyz" : [], "tol_r" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetDigitalIO_RequestSize(Ros2Xarm_msgsSrvSetDigitalIO_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetDigitalIO_RequestCapture(value), n = Ros2Xarm_msgsSrvSetDigitalIO_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetDigitalIO_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 144, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetDigitalIO_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetDigitalIO_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ionum"], 2, true);
    n = addSize(n, 2);
    integer(value["value"], 2, true);
    n = addSize(n, 2);
    if(typeof value["delay_sec"] !== "number" || !Number.isFinite(value["delay_sec"]) || !Number.isFinite(Math.fround(value["delay_sec"])))
        bad();
    n = addSize(n, 4);
    if(!Array.isArray(value["xyz"]) || value["xyz"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["tol_r"] !== "number" || !Number.isFinite(value["tol_r"]) || !Number.isFinite(Math.fround(value["tol_r"])))
        bad();
    n = addSize(n, 4);
    if(n > 144)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetDigitalIO_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["ionum"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["value"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["delay_sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["xyz"].length, true);
    w.at += 4;
    for(const element of value["xyz"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["tol_r"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvSetDigitalIO_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ionum"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delay_sec"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["xyz"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["tol_r"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetDigitalIO_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ionum"];
        out["ionum"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["delay_sec"];
        out["delay_sec"] = field;
    }
    {
        const field = value["xyz"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["xyz"] = values;
    }
    {
        const field = value["tol_r"];
        out["tol_r"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetDigitalIO_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetDigitalIO_ResponseSize(Ros2Xarm_msgsSrvSetDigitalIO_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetDigitalIO_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetDigitalIO_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetDigitalIO_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetDigitalIO_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetDigitalIO_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetDigitalIO_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetDigitalIO_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetDigitalIO_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetFloat32_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetFloat32_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetFloat32_RequestSize(Ros2Xarm_msgsSrvSetFloat32_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetFloat32_RequestCapture(value), n = Ros2Xarm_msgsSrvSetFloat32_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetFloat32_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetFloat32_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetFloat32_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["data"] !== "number" || !Number.isFinite(value["data"]) || !Number.isFinite(Math.fround(value["data"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetFloat32_RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvSetFloat32_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetFloat32_RequestCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/SetFloat32_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetFloat32_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetFloat32_ResponseSize(Ros2Xarm_msgsSrvSetFloat32_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetFloat32_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetFloat32_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetFloat32_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetFloat32_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetFloat32_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetFloat32_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetFloat32_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetFloat32_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetFloat32List_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetFloat32List_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532",
    maxWireBytes : 132,
    minWireBytes : 4,
    cartesianMaxWireBytes : 132n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"datas" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetFloat32List_RequestSize(Ros2Xarm_msgsSrvSetFloat32List_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetFloat32List_RequestCapture(value), n = Ros2Xarm_msgsSrvSetFloat32List_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetFloat32List_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 132, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetFloat32List_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetFloat32List_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 132)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetFloat32List_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvSetFloat32List_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["datas"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvSetFloat32List_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetFloat32List_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetFloat32List_ResponseSize(Ros2Xarm_msgsSrvSetFloat32List_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetFloat32List_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetFloat32List_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetFloat32List_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetFloat32List_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetFloat32List_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetFloat32List_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetFloat32List_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetFloat32List_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt16_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16_RequestSize(Ros2Xarm_msgsSrvSetInt16_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16_RequestCapture(value), n = Ros2Xarm_msgsSrvSetInt16_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["data"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvSetInt16_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16_RequestCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/SetInt16_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16_ResponseSize(Ros2Xarm_msgsSrvSetInt16_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetInt16_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetInt16_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt16ById_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16ById_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16ById_RequestSize(Ros2Xarm_msgsSrvSetInt16ById_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16ById_RequestCapture(value), n = Ros2Xarm_msgsSrvSetInt16ById_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16ById_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16ById_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16ById_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["id"], 2, true);
    n = addSize(n, 2);
    integer(value["data"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16ById_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["id"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvSetInt16ById_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16ById_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt16ById_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16ById_ResponseSize(Ros2Xarm_msgsSrvSetInt16ById_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16ById_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetInt16ById_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16ById_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16ById_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16ById_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16ById_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetInt16ById_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16ById_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt16List_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16List_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"datas" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16List_RequestSize(Ros2Xarm_msgsSrvSetInt16List_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16List_RequestCapture(value), n = Ros2Xarm_msgsSrvSetInt16List_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16List_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16List_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16List_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["datas"]) || value["datas"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["datas"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16List_RequestWrite(value, w)
{
    w.v.setUint32(w.at, value["datas"].length, true);
    w.at += 4;
    for(const element of value["datas"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
}

function Ros2Xarm_msgsSrvSetInt16List_RequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["datas"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["datas"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16List_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["datas"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["datas"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt16List_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt16List_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt16List_ResponseSize(Ros2Xarm_msgsSrvSetInt16List_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt16List_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetInt16List_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt16List_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt16List_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt16List_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt16List_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetInt16List_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt16List_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt32_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt32_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt32_RequestSize(Ros2Xarm_msgsSrvSetInt32_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt32_RequestCapture(value), n = Ros2Xarm_msgsSrvSetInt32_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt32_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt32_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt32_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["data"], 4, true);
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt32_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvSetInt32_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt32_RequestCapture(value)
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

/** Complete ROS2 xarm_msgs/srv/SetInt32_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt32_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt32_ResponseSize(Ros2Xarm_msgsSrvSetInt32_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt32_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetInt32_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt32_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt32_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt32_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt32_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetInt32_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt32_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt32ByType_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7",
    maxWireBytes : 6,
    minWireBytes : 6,
    cartesianMaxWireBytes : 6n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"type" : 0, "data" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt32ByType_RequestSize(Ros2Xarm_msgsSrvSetInt32ByType_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt32ByType_RequestCapture(value), n = Ros2Xarm_msgsSrvSetInt32ByType_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt32ByType_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt32ByType_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt32ByType_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 2, true);
    n = addSize(n, 2);
    integer(value["data"], 4, true);
    n = addSize(n, 4);
    if(n > 6)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt32ByType_RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["type"], true);
    w.at += 2;
    w.v.setInt32(w.at, value["data"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvSetInt32ByType_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt32ByType_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["data"];
        out["data"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetInt32ByType_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetInt32ByType_ResponseSize(Ros2Xarm_msgsSrvSetInt32ByType_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetInt32ByType_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetInt32ByType_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetInt32ByType_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetInt32ByType_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetInt32ByType_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetInt32ByType_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetInt32ByType_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetInt32ByType_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetModbusTimeout_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"timeout" : 0, "is_transparent_transmission" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetModbusTimeout_RequestSize(Ros2Xarm_msgsSrvSetModbusTimeout_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetModbusTimeout_RequestCapture(value), n = Ros2Xarm_msgsSrvSetModbusTimeout_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetModbusTimeout_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetModbusTimeout_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetModbusTimeout_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["timeout"], 4, true);
    n = addSize(n, 4);
    if(typeof value["is_transparent_transmission"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetModbusTimeout_RequestWrite(value, w)
{
    w.v.setInt32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["is_transparent_transmission"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvSetModbusTimeout_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_transparent_transmission"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetModbusTimeout_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["is_transparent_transmission"];
        out["is_transparent_transmission"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetModbusTimeout_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetModbusTimeout_ResponseSize(Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetModbusTimeout_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetModbusTimeout_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetModbusTimeout_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetModbusTimeout_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetModbusTimeout_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetModbusTimeout_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetTcpLoad_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"weight" : 0, "center_of_gravity" : []};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetTcpLoad_RequestSize(Ros2Xarm_msgsSrvSetTcpLoad_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetTcpLoad_RequestCapture(value), n = Ros2Xarm_msgsSrvSetTcpLoad_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetTcpLoad_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetTcpLoad_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetTcpLoad_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["weight"] !== "number" || !Number.isFinite(value["weight"]) || !Number.isFinite(Math.fround(value["weight"])))
        bad();
    n = addSize(n, 4);
    if(!Array.isArray(value["center_of_gravity"]) || value["center_of_gravity"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["center_of_gravity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 136)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetTcpLoad_RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["weight"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["center_of_gravity"].length, true);
    w.at += 4;
    for(const element of value["center_of_gravity"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Xarm_msgsSrvSetTcpLoad_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["weight"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["center_of_gravity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["center_of_gravity"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Xarm_msgsSrvSetTcpLoad_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["weight"];
        out["weight"] = field;
    }
    {
        const field = value["center_of_gravity"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 32)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["center_of_gravity"] = values;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/SetTcpLoad_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvSetTcpLoad_ResponseSize(Ros2Xarm_msgsSrvSetTcpLoad_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvSetTcpLoad_ResponseCapture(value), n = Ros2Xarm_msgsSrvSetTcpLoad_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvSetTcpLoad_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvSetTcpLoad_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvSetTcpLoad_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvSetTcpLoad_ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["ret"], true);
    w.at += 4;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvSetTcpLoad_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvSetTcpLoad_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/TrajCtrl_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvTrajCtrl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"filename" : "", "timeout" : 10.0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvTrajCtrl_RequestSize(Ros2Xarm_msgsSrvTrajCtrl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvTrajCtrl_RequestCapture(value), n = Ros2Xarm_msgsSrvTrajCtrl_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvTrajCtrl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvTrajCtrl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvTrajCtrl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["filename"], 256).length);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvTrajCtrl_RequestWrite(value, w)
{
    w.text(value["filename"], 256);
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros2Xarm_msgsSrvTrajCtrl_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["filename"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvTrajCtrl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["filename"];
        out["filename"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/TrajCtrl_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvTrajCtrl_ResponseSize(Ros2Xarm_msgsSrvTrajCtrl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvTrajCtrl_ResponseCapture(value), n = Ros2Xarm_msgsSrvTrajCtrl_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvTrajCtrl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvTrajCtrl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvTrajCtrl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvTrajCtrl_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvTrajCtrl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvTrajCtrl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/TrajPlay_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvTrajPlay_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72",
    maxWireBytes : 265,
    minWireBytes : 9,
    cartesianMaxWireBytes : 265n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"filename" : "", "times" : 1, "double_speed" : 1, "wait" : false};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvTrajPlay_RequestSize(Ros2Xarm_msgsSrvTrajPlay_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvTrajPlay_RequestCapture(value), n = Ros2Xarm_msgsSrvTrajPlay_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvTrajPlay_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 265, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvTrajPlay_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvTrajPlay_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["filename"], 256).length);
    integer(value["times"], 2, true);
    n = addSize(n, 2);
    integer(value["double_speed"], 2, true);
    n = addSize(n, 2);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 265)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvTrajPlay_RequestWrite(value, w)
{
    w.text(value["filename"], 256);
    w.v.setInt16(w.at, value["times"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["double_speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Xarm_msgsSrvTrajPlay_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["filename"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["times"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["double_speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    return value;
}

function Ros2Xarm_msgsSrvTrajPlay_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["filename"];
        out["filename"] = field;
    }
    {
        const field = value["times"];
        out["times"] = field;
    }
    {
        const field = value["double_speed"];
        out["double_speed"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/TrajPlay_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvTrajPlay_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvTrajPlay_ResponseSize(Ros2Xarm_msgsSrvTrajPlay_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvTrajPlay_ResponseCapture(value), n = Ros2Xarm_msgsSrvTrajPlay_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvTrajPlay_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvTrajPlay_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvTrajPlay_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvTrajPlay_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvTrajPlay_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvTrajPlay_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/VacuumGripperCtrl_Request codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"on" : false, "wait" : false, "timeout" : 3.0, "delay_sec" : 0.0, "sync" : true, "hardware_version" : 0};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestSize(Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCapture(value), n = Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["on"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["wait"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["delay_sec"] !== "number" || !Number.isFinite(value["delay_sec"]) || !Number.isFinite(Math.fround(value["delay_sec"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["sync"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["hardware_version"], 2, true);
    n = addSize(n, 2);
    if(n > 13)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["on"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["wait"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["delay_sec"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["sync"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt16(w.at, value["hardware_version"], true);
    w.at += 2;
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["on"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["wait"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["delay_sec"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["sync"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["hardware_version"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["on"];
        out["on"] = field;
    }
    {
        const field = value["wait"];
        out["wait"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["delay_sec"];
        out["delay_sec"] = field;
    }
    {
        const field = value["sync"];
        out["sync"] = field;
    }
    {
        const field = value["hardware_version"];
        out["hardware_version"] = field;
    }
    return out;
}

/** Complete ROS2 xarm_msgs/srv/VacuumGripperCtrl_Response codec; maxima are not actual lengths. */
export const Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseSize(Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCapture(value), n = Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseSize(owned), w = new Writer(n);
        Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 262)
        bad(90);
    return n;
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}
