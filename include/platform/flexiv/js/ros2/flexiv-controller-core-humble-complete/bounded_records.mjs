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

/** @brief Complete ROS2 std_msgs/msg/Header codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 sensor_msgs/msg/JointState codec; maxima are not actual lengths. */
export const Ros2Sensor_msgsMsgJointStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556",
    maxWireBytes : 9372,
    minWireBytes : 28,
    cartesianMaxWireBytes : 9372n,
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
        const owned = copyRaw(bytes, 9372, 90);
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
    if(!Array.isArray(value["name"]) || value["name"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["position"]) || value["position"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocity"]) || value["velocity"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["effort"]) || value["effort"].length > 32)
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
    if(n > 9372)
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
        w.text(element, 256);
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
            if(count > 32)
                bad();
            value["name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["name"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
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
            if(count > 32)
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
            if(count > 32)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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
        if(!Number.isInteger(count) || count < 0 || count > 32)
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

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint codec; maxima are not actual lengths. */
export const Ros2Trajectory_msgsMsgJointTrajectoryPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c",
    maxWireBytes : 1048,
    minWireBytes : 24,
    cartesianMaxWireBytes : 1048n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "positions" : [],
            "velocities" : [],
            "accelerations" : [],
            "effort" : [],
            "time_from_start" : Ros2Builtin_interfacesMsgDurationCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Trajectory_msgsMsgJointTrajectoryPointSize(Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value), n = Ros2Trajectory_msgsMsgJointTrajectoryPointSize(owned), w = new Writer(n);
        Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1048, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Trajectory_msgsMsgJointTrajectoryPointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["positions"]) || value["positions"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["positions"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocities"]) || value["velocities"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocities"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["accelerations"]) || value["accelerations"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["accelerations"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["effort"]) || value["effort"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["effort"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    n = addSize(n, Ros2Builtin_interfacesMsgDurationSize(value["time_from_start"]));
    if(n > 1048)
        bad(90);
    return n;
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(value, w)
{
    w.v.setUint32(w.at, value["positions"].length, true);
    w.at += 4;
    for(const element of value["positions"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["velocities"].length, true);
    w.at += 4;
    for(const element of value["velocities"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["accelerations"].length, true);
    w.at += 4;
    for(const element of value["accelerations"])
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
    Ros2Builtin_interfacesMsgDurationWrite(value["time_from_start"], w);
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["positions"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["positions"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["velocities"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocities"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["accelerations"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["accelerations"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 32)
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
    {
        const decoded = Ros2Builtin_interfacesMsgDurationRead(r);
        value["time_from_start"] = decoded;
    }
    return value;
}

function Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["positions"];
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
        out["positions"] = values;
    }
    {
        const field = value["velocities"];
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
        out["velocities"] = values;
    }
    {
        const field = value["accelerations"];
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
        out["accelerations"] = values;
    }
    {
        const field = value["effort"];
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
        out["effort"] = values;
    }
    {
        const field = value["time_from_start"];
        out["time_from_start"] = Ros2Builtin_interfacesMsgDurationCapture(field);
    }
    return out;
}

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectory codec; maxima are not actual lengths. */
export const Ros2Trajectory_msgsMsgJointTrajectoryCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4",
    maxWireBytes : 16980,
    minWireBytes : 20,
    cartesianMaxWireBytes : 16980n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros2Std_msgsMsgHeaderCodec.defaultValue(), "joint_names" : [], "points" : []};
    },
    validateValue(value) {
        Ros2Trajectory_msgsMsgJointTrajectorySize(Ros2Trajectory_msgsMsgJointTrajectoryCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Trajectory_msgsMsgJointTrajectoryCapture(value), n = Ros2Trajectory_msgsMsgJointTrajectorySize(owned), w = new Writer(n);
        Ros2Trajectory_msgsMsgJointTrajectoryWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16980, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Trajectory_msgsMsgJointTrajectoryRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Trajectory_msgsMsgJointTrajectorySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgHeaderSize(value["header"]));
    if(!Array.isArray(value["joint_names"]) || value["joint_names"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_names"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["points"]) || value["points"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["points"])
    {
        n = addSize(n, Ros2Trajectory_msgsMsgJointTrajectoryPointSize(element));
    }
    if(n > 16980)
        bad(90);
    return n;
}

function Ros2Trajectory_msgsMsgJointTrajectoryWrite(value, w)
{
    Ros2Std_msgsMsgHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["joint_names"].length, true);
    w.at += 4;
    for(const element of value["joint_names"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["points"].length, true);
    w.at += 4;
    for(const element of value["points"])
    {
        Ros2Trajectory_msgsMsgJointTrajectoryPointWrite(element, w);
    }
}

function Ros2Trajectory_msgsMsgJointTrajectoryRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["joint_names"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_names"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["points"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Trajectory_msgsMsgJointTrajectoryPointRead(r);
                value["points"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Trajectory_msgsMsgJointTrajectoryCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros2Std_msgsMsgHeaderCapture(field);
    }
    {
        const field = value["joint_names"];
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
        out["joint_names"] = values;
    }
    {
        const field = value["points"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Trajectory_msgsMsgJointTrajectoryPointCapture(element);
        }
        out["points"] = values;
    }
    return out;
}

/** @brief Complete ROS2 std_msgs/msg/MultiArrayDimension codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgMultiArrayDimensionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"label" : "", "size" : 0, "stride" : 0};
    },
    validateValue(value) {
        Ros2Std_msgsMsgMultiArrayDimensionSize(Ros2Std_msgsMsgMultiArrayDimensionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgMultiArrayDimensionCapture(value), n = Ros2Std_msgsMsgMultiArrayDimensionSize(owned), w = new Writer(n);
        Ros2Std_msgsMsgMultiArrayDimensionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgMultiArrayDimensionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Std_msgsMsgMultiArrayDimensionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["label"], 256).length);
    integer(value["size"], 4, false);
    n = addSize(n, 4);
    integer(value["stride"], 4, false);
    n = addSize(n, 4);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgMultiArrayDimensionWrite(value, w)
{
    w.text(value["label"], 256);
    w.v.setUint32(w.at, value["size"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["stride"], true);
    w.at += 4;
}

function Ros2Std_msgsMsgMultiArrayDimensionRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
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

function Ros2Std_msgsMsgMultiArrayDimensionCapture(value)
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

/** @brief Complete ROS2 std_msgs/msg/MultiArrayLayout codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgMultiArrayLayoutCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40",
    maxWireBytes : 2152,
    minWireBytes : 8,
    cartesianMaxWireBytes : 2152n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"dim" : [], "data_offset" : 0};
    },
    validateValue(value) {
        Ros2Std_msgsMsgMultiArrayLayoutSize(Ros2Std_msgsMsgMultiArrayLayoutCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgMultiArrayLayoutCapture(value), n = Ros2Std_msgsMsgMultiArrayLayoutSize(owned), w = new Writer(n);
        Ros2Std_msgsMsgMultiArrayLayoutWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2152, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgMultiArrayLayoutRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Std_msgsMsgMultiArrayLayoutSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["dim"]) || value["dim"].length > 8)
        bad();
    n = addSize(n, 4);
    for(const element of value["dim"])
    {
        n = addSize(n, Ros2Std_msgsMsgMultiArrayDimensionSize(element));
    }
    integer(value["data_offset"], 4, false);
    n = addSize(n, 4);
    if(n > 2152)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgMultiArrayLayoutWrite(value, w)
{
    w.v.setUint32(w.at, value["dim"].length, true);
    w.at += 4;
    for(const element of value["dim"])
    {
        Ros2Std_msgsMsgMultiArrayDimensionWrite(element, w);
    }
    w.v.setUint32(w.at, value["data_offset"], true);
    w.at += 4;
}

function Ros2Std_msgsMsgMultiArrayLayoutRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 8)
                bad();
            value["dim"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Std_msgsMsgMultiArrayDimensionRead(r);
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

function Ros2Std_msgsMsgMultiArrayLayoutCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["dim"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 8)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Std_msgsMsgMultiArrayDimensionCapture(element);
        }
        out["dim"] = values;
    }
    {
        const field = value["data_offset"];
        out["data_offset"] = field;
    }
    return out;
}

/** @brief Complete ROS2 std_msgs/msg/Float64MultiArray codec; maxima are not actual lengths. */
export const Ros2Std_msgsMsgFloat64MultiArrayCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2",
    maxWireBytes : 2412,
    minWireBytes : 12,
    cartesianMaxWireBytes : 2412n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"layout" : Ros2Std_msgsMsgMultiArrayLayoutCodec.defaultValue(), "data" : []};
    },
    validateValue(value) {
        Ros2Std_msgsMsgFloat64MultiArraySize(Ros2Std_msgsMsgFloat64MultiArrayCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Std_msgsMsgFloat64MultiArrayCapture(value), n = Ros2Std_msgsMsgFloat64MultiArraySize(owned), w = new Writer(n);
        Ros2Std_msgsMsgFloat64MultiArrayWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2412, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Std_msgsMsgFloat64MultiArrayRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Std_msgsMsgFloat64MultiArraySize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Std_msgsMsgMultiArrayLayoutSize(value["layout"]));
    if(!Array.isArray(value["data"]) || value["data"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 2412)
        bad(90);
    return n;
}

function Ros2Std_msgsMsgFloat64MultiArrayWrite(value, w)
{
    Ros2Std_msgsMsgMultiArrayLayoutWrite(value["layout"], w);
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Std_msgsMsgFloat64MultiArrayRead(r)
{
    const value = {};
    {
        const decoded = Ros2Std_msgsMsgMultiArrayLayoutRead(r);
        value["layout"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 32)
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

function Ros2Std_msgsMsgFloat64MultiArrayCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["layout"];
        out["layout"] = Ros2Std_msgsMsgMultiArrayLayoutCapture(field);
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}
