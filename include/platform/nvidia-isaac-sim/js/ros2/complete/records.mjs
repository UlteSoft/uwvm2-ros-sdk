/**
 * @brief Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
 * Records are ordinary owned values. Decode throws before exposing malformed bytes;
 * encode validates the complete value before allocating its one wire output.
 * 64-bit integers remain BigInt. Strings are strict UTF-8 with no embedded NUL.
 * Owned Service transport is a separate explicit raw12 adapter, not legacy RPC.
 */
/** @brief Reuse the existing strict guest wire implementation without browser globals. */
import {utf8Encode, utf8Decode} from "ros/js/wire";
const utf8Encoder = {
    /** @brief Encode checked original text under the global canonical byte ceiling. */
    encode(value)
    {
        return utf8Encode(value, 32768);
    }
};
const utf8Decoder = {
    /** @brief Decode strict complete UTF-8 and retain the original leading BOM. */
    decode(bytes)
    {
        return utf8Decode(bytes);
    }
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

/** @brief Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
    maxWireBytes : 76,
    minWireBytes : 12,
    cartesianMaxWireBytes : 76n,
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
        const owned = copyRaw(bytes, 76, 90);
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
    n = addSize(n, 4 + textBytes(value["frame_id"], 64).length);
    if(n > 76)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgHeaderWrite(value, w)
{
    Ros2Builtin_interfacesMsgTimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 64);
}

function Ros2Std_msgsMsgHeaderRead(r)
{
    const value = {};
    {
        const decoded = Ros2Builtin_interfacesMsgTimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(64);
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

/** @brief Complete ROS2 sensor_msgs/msg/JointState codec; maxima are not actual lengths. */
export const Ros2Sensor_msgsMsgJointStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac",
    maxWireBytes : 5980,
    minWireBytes : 28,
    cartesianMaxWireBytes : 5980n,
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
        const owned = copyRaw(bytes, 5980, 90);
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
    if(n > 5980)
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

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/msg/ClockEvent codec; maxima are not actual lengths. */
export const Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6",
    maxWireBytes : 14,
    minWireBytes : 14,
    cartesianMaxWireBytes : 14n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"AUTOMATIC" : 1, "MANUAL" : 2}),
    defaultValue() {
        return {"kind" : 0, "phase" : 0, "frame" : 0, "sec" : 0, "nanosec" : 0};
    },
    validateValue(value) {
        Ros2Uwvm_isaac_sim_bridgeMsgClockEventSize(Ros2Uwvm_isaac_sim_bridgeMsgClockEventCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_isaac_sim_bridgeMsgClockEventCapture(value), n = Ros2Uwvm_isaac_sim_bridgeMsgClockEventSize(owned), w = new Writer(n);
        Ros2Uwvm_isaac_sim_bridgeMsgClockEventWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_isaac_sim_bridgeMsgClockEventRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Uwvm_isaac_sim_bridgeMsgClockEventSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["kind"], 1, false);
    n = addSize(n, 1);
    integer(value["phase"], 1, false);
    n = addSize(n, 1);
    integer(value["frame"], 4, false);
    n = addSize(n, 4);
    integer(value["sec"], 4, true);
    n = addSize(n, 4);
    integer(value["nanosec"], 4, false);
    n = addSize(n, 4);
    if(n > 14)
        bad(90);
    return n;
}

function Ros2Uwvm_isaac_sim_bridgeMsgClockEventWrite(value, w)
{
    w.v.setUint8(w.at, value["kind"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["phase"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["frame"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nanosec"], true);
    w.at += 4;
}

function Ros2Uwvm_isaac_sim_bridgeMsgClockEventRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["kind"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["phase"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["frame"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nanosec"] = decoded;
    }
    return value;
}

function Ros2Uwvm_isaac_sim_bridgeMsgClockEventCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["kind"];
        out["kind"] = field;
    }
    {
        const field = value["phase"];
        out["phase"] = field;
    }
    {
        const field = value["frame"];
        out["frame"] = field;
    }
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

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Request codec; maxima are not actual lengths. */
export const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19",
    maxWireBytes : 22,
    minWireBytes : 22,
    cartesianMaxWireBytes : 22n,
    aggregateWireBytes : 0,
    constants : Object.freeze({"START" : 1, "STEP" : 2, "FINISH" : 3, "CANCEL" : 4}),
    defaultValue() {
        return {
            "operation" : 0,
            "session_nonce" : 0n,
            "request_sequence" : 0,
            "phase" : 0,
            "frame" : 0,
            "impulse" : false,
            "extra_update" : false,
            "pacing_milliseconds" : 0
        };
    },
    validateValue(value) {
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestSize(Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCapture(value), n = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestSize(owned),
              w = new Writer(n);
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 22, 90);
        if(owned.length < 22)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["operation"], 1, false);
    n = addSize(n, 1);
    integer(value["session_nonce"], 8, false);
    n = addSize(n, 8);
    integer(value["request_sequence"], 4, false);
    n = addSize(n, 4);
    integer(value["phase"], 1, false);
    n = addSize(n, 1);
    integer(value["frame"], 4, false);
    n = addSize(n, 4);
    if(typeof value["impulse"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["extra_update"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["pacing_milliseconds"], 2, false);
    n = addSize(n, 2);
    if(n > 22)
        bad(90);
    return n;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestWrite(value, w)
{
    w.v.setUint8(w.at, value["operation"], true);
    w.at += 1;
    w.v.setBigUint64(w.at, value["session_nonce"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["request_sequence"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["phase"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["frame"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["impulse"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["extra_update"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["pacing_milliseconds"], true);
    w.at += 2;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["operation"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["session_nonce"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["request_sequence"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["phase"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["frame"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["impulse"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["extra_update"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["pacing_milliseconds"] = decoded;
    }
    return value;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["operation"];
        out["operation"] = field;
    }
    {
        const field = value["session_nonce"];
        out["session_nonce"] = field;
    }
    {
        const field = value["request_sequence"];
        out["request_sequence"] = field;
    }
    {
        const field = value["phase"];
        out["phase"] = field;
    }
    {
        const field = value["frame"];
        out["frame"] = field;
    }
    {
        const field = value["impulse"];
        out["impulse"] = field;
    }
    {
        const field = value["extra_update"];
        out["extra_update"] = field;
    }
    {
        const field = value["pacing_milliseconds"];
        out["pacing_milliseconds"] = field;
    }
    return out;
}

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Response codec; maxima are not actual lengths. */
export const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "status" : 0,
            "session_nonce" : 0n,
            "request_sequence" : 0,
            "state" : 0,
            "actual_app_updates" : 0n,
            "completed_steps" : 0,
            "has_event" : false,
            "event" : Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec.defaultValue(),
            "cleanup_status" : 0
        };
    },
    validateValue(value) {
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseSize(Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCapture(value), n = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseSize(owned),
              w = new Writer(n);
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["status"], 4, false);
    n = addSize(n, 4);
    integer(value["session_nonce"], 8, false);
    n = addSize(n, 8);
    integer(value["request_sequence"], 4, false);
    n = addSize(n, 4);
    integer(value["state"], 1, false);
    n = addSize(n, 1);
    integer(value["actual_app_updates"], 8, false);
    n = addSize(n, 8);
    integer(value["completed_steps"], 4, false);
    n = addSize(n, 4);
    if(typeof value["has_event"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros2Uwvm_isaac_sim_bridgeMsgClockEventSize(value["event"]));
    integer(value["cleanup_status"], 4, false);
    n = addSize(n, 4);
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseWrite(value, w)
{
    w.v.setUint32(w.at, value["status"], true);
    w.at += 4;
    w.v.setBigUint64(w.at, value["session_nonce"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["request_sequence"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["state"], true);
    w.at += 1;
    w.v.setBigUint64(w.at, value["actual_app_updates"], true);
    w.at += 8;
    w.v.setUint32(w.at, value["completed_steps"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["has_event"] ? 1 : 0, true);
    w.at += 1;
    Ros2Uwvm_isaac_sim_bridgeMsgClockEventWrite(value["event"], w);
    w.v.setUint32(w.at, value["cleanup_status"], true);
    w.at += 4;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["status"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["session_nonce"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["request_sequence"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getBigUint64(r.take(8), true);
        value["actual_app_updates"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["completed_steps"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["has_event"] = decoded !== 0;
    }
    {
        const decoded = Ros2Uwvm_isaac_sim_bridgeMsgClockEventRead(r);
        value["event"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["cleanup_status"] = decoded;
    }
    return value;
}

function Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["status"];
        out["status"] = field;
    }
    {
        const field = value["session_nonce"];
        out["session_nonce"] = field;
    }
    {
        const field = value["request_sequence"];
        out["request_sequence"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["actual_app_updates"];
        out["actual_app_updates"] = field;
    }
    {
        const field = value["completed_steps"];
        out["completed_steps"] = field;
    }
    {
        const field = value["has_event"];
        out["has_event"] = field;
    }
    {
        const field = value["event"];
        out["event"] = Ros2Uwvm_isaac_sim_bridgeMsgClockEventCapture(field);
    }
    {
        const field = value["cleanup_status"];
        out["cleanup_status"] = field;
    }
    return out;
}
