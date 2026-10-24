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

/** @brief Complete ROS2 flexiv_msgs/msg/JointPosVel codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgJointPosVelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8",
    maxWireBytes : 112,
    minWireBytes : 112,
    cartesianMaxWireBytes : 112n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"positions" : Array.from({length : 7}, () => (0)), "velocities" : Array.from({length : 7}, () => (0))};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgJointPosVelSize(Ros2Flexiv_msgsMsgJointPosVelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgJointPosVelCapture(value), n = Ros2Flexiv_msgsMsgJointPosVelSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgJointPosVelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 112, 90);
        if(owned.length < 112)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgJointPosVelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Flexiv_msgsMsgJointPosVelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["positions"]) || value["positions"].length !== 7)
        bad();
    for(const element of value["positions"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["velocities"]) || value["velocities"].length !== 7)
        bad();
    for(const element of value["velocities"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 112)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgJointPosVelWrite(value, w)
{
    for(const element of value["positions"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["velocities"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros2Flexiv_msgsMsgJointPosVelRead(r)
{
    const value = {};
    {
        {
            const count = 7;
            if(count > 7)
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
            const count = 7;
            if(count > 7)
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
    return value;
}

function Ros2Flexiv_msgsMsgJointPosVelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["positions"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
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
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["velocities"] = values;
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/Mode codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgModeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({
        "MODE_UNKNOWN" : -1,
        "MODE_IDLE" : 0,
        "MODE_RT_JOINT_TORQUE" : 1,
        "MODE_RT_JOINT_POSITION" : 2,
        "MODE_NRT_JOINT_POSITION" : 3,
        "MODE_NRT_PLAN_EXECUTION" : 4,
        "MODE_NRT_PRIMITIVE_EXECUTION" : 5,
        "MODE_RT_CARTESIAN_MOTION_FORCE_BASE" : 6,
        "MODE_RT_CARTESIAN_MOTION_FORCE_TCP" : 7,
        "MODE_NRT_CARTESIAN_MOTION_FORCE_BASE" : 8,
        "MODE_NRT_CARTESIAN_MOTION_FORCE_TCP" : 9
    }),
    defaultValue() {
        return {"mode" : 0};
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgModeSize(Ros2Flexiv_msgsMsgModeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgModeCapture(value), n = Ros2Flexiv_msgsMsgModeSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgModeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgModeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Flexiv_msgsMsgModeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgModeWrite(value, w)
{
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros2Flexiv_msgsMsgModeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgModeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** @brief Complete ROS2 geometry_msgs/msg/Point codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 geometry_msgs/msg/Quaternion codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 geometry_msgs/msg/Pose codec; maxima are not actual lengths. */
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

/** @brief Complete ROS2 geometry_msgs/msg/Accel codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgAccelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(), "angular" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgAccelSize(Ros2Geometry_msgsMsgAccelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgAccelCapture(value), n = Ros2Geometry_msgsMsgAccelSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgAccelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgAccelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgAccelSize(value)
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

function Ros2Geometry_msgsMsgAccelWrite(value, w)
{
    Ros2Geometry_msgsMsgVector3Write(value["linear"], w);
    Ros2Geometry_msgsMsgVector3Write(value["angular"], w);
}

function Ros2Geometry_msgsMsgAccelRead(r)
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

function Ros2Geometry_msgsMsgAccelCapture(value)
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

/** @brief Complete ROS2 geometry_msgs/msg/Wrench codec; maxima are not actual lengths. */
export const Ros2Geometry_msgsMsgWrenchCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : Ros2Geometry_msgsMsgVector3Codec.defaultValue(), "torque" : Ros2Geometry_msgsMsgVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros2Geometry_msgsMsgWrenchSize(Ros2Geometry_msgsMsgWrenchCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Geometry_msgsMsgWrenchCapture(value), n = Ros2Geometry_msgsMsgWrenchSize(owned), w = new Writer(n);
        Ros2Geometry_msgsMsgWrenchWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros2Geometry_msgsMsgWrenchRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Geometry_msgsMsgWrenchSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["force"]));
    n = addSize(n, Ros2Geometry_msgsMsgVector3Size(value["torque"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros2Geometry_msgsMsgWrenchWrite(value, w)
{
    Ros2Geometry_msgsMsgVector3Write(value["force"], w);
    Ros2Geometry_msgsMsgVector3Write(value["torque"], w);
}

function Ros2Geometry_msgsMsgWrenchRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["force"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgVector3Read(r);
        value["torque"] = decoded;
    }
    return value;
}

function Ros2Geometry_msgsMsgWrenchCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    {
        const field = value["torque"];
        out["torque"] = Ros2Geometry_msgsMsgVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS2 flexiv_msgs/msg/RobotStates codec; maxima are not actual lengths. */
export const Ros2Flexiv_msgsMsgRobotStatesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b",
    maxWireBytes : 864,
    minWireBytes : 864,
    cartesianMaxWireBytes : 864n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "q" : Array.from({length : 7}, () => (0)),
            "theta" : Array.from({length : 7}, () => (0)),
            "dq" : Array.from({length : 7}, () => (0)),
            "dtheta" : Array.from({length : 7}, () => (0)),
            "tau" : Array.from({length : 7}, () => (0)),
            "tau_des" : Array.from({length : 7}, () => (0)),
            "tau_dot" : Array.from({length : 7}, () => (0)),
            "tau_ext" : Array.from({length : 7}, () => (0)),
            "tcp_pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "tcp_pose_des" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "tcp_vel" : Ros2Geometry_msgsMsgAccelCodec.defaultValue(),
            "cam_pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "flange_pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "ft_sensor_raw" : Ros2Geometry_msgsMsgWrenchCodec.defaultValue(),
            "ext_wrench_tcp_frame" : Ros2Geometry_msgsMsgWrenchCodec.defaultValue(),
            "ext_wrench_base_frame" : Ros2Geometry_msgsMsgWrenchCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Flexiv_msgsMsgRobotStatesSize(Ros2Flexiv_msgsMsgRobotStatesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Flexiv_msgsMsgRobotStatesCapture(value), n = Ros2Flexiv_msgsMsgRobotStatesSize(owned), w = new Writer(n);
        Ros2Flexiv_msgsMsgRobotStatesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 864, 90);
        if(owned.length < 864)
            bad();
        const r = new Reader(owned), value = Ros2Flexiv_msgsMsgRobotStatesRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Flexiv_msgsMsgRobotStatesSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["q"]) || value["q"].length !== 7)
        bad();
    for(const element of value["q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["theta"]) || value["theta"].length !== 7)
        bad();
    for(const element of value["theta"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dq"]) || value["dq"].length !== 7)
        bad();
    for(const element of value["dq"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["dtheta"]) || value["dtheta"].length !== 7)
        bad();
    for(const element of value["dtheta"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau"]) || value["tau"].length !== 7)
        bad();
    for(const element of value["tau"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_des"]) || value["tau_des"].length !== 7)
        bad();
    for(const element of value["tau_des"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_dot"]) || value["tau_dot"].length !== 7)
        bad();
    for(const element of value["tau_dot"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["tau_ext"]) || value["tau_ext"].length !== 7)
        bad();
    for(const element of value["tau_ext"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["tcp_pose"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["tcp_pose_des"]));
    n = addSize(n, Ros2Geometry_msgsMsgAccelSize(value["tcp_vel"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["cam_pose"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["flange_pose"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchSize(value["ft_sensor_raw"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchSize(value["ext_wrench_tcp_frame"]));
    n = addSize(n, Ros2Geometry_msgsMsgWrenchSize(value["ext_wrench_base_frame"]));
    if(n > 864)
        bad(90);
    return n;
}

function Ros2Flexiv_msgsMsgRobotStatesWrite(value, w)
{
    for(const element of value["q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["theta"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["dq"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["dtheta"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["tau"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["tau_des"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["tau_dot"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["tau_ext"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    Ros2Geometry_msgsMsgPoseWrite(value["tcp_pose"], w);
    Ros2Geometry_msgsMsgPoseWrite(value["tcp_pose_des"], w);
    Ros2Geometry_msgsMsgAccelWrite(value["tcp_vel"], w);
    Ros2Geometry_msgsMsgPoseWrite(value["cam_pose"], w);
    Ros2Geometry_msgsMsgPoseWrite(value["flange_pose"], w);
    Ros2Geometry_msgsMsgWrenchWrite(value["ft_sensor_raw"], w);
    Ros2Geometry_msgsMsgWrenchWrite(value["ext_wrench_tcp_frame"], w);
    Ros2Geometry_msgsMsgWrenchWrite(value["ext_wrench_base_frame"], w);
}

function Ros2Flexiv_msgsMsgRobotStatesRead(r)
{
    const value = {};
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["q"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["q"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["theta"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["theta"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["dq"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["dq"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["dtheta"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["dtheta"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["tau"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["tau_des"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_des"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["tau_dot"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_dot"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["tau_ext"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["tau_ext"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["tcp_pose"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["tcp_pose_des"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgAccelRead(r);
        value["tcp_vel"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["cam_pose"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["flange_pose"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchRead(r);
        value["ft_sensor_raw"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchRead(r);
        value["ext_wrench_tcp_frame"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgWrenchRead(r);
        value["ext_wrench_base_frame"] = decoded;
    }
    return value;
}

function Ros2Flexiv_msgsMsgRobotStatesCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["q"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["q"] = values;
    }
    {
        const field = value["theta"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["theta"] = values;
    }
    {
        const field = value["dq"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dq"] = values;
    }
    {
        const field = value["dtheta"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dtheta"] = values;
    }
    {
        const field = value["tau"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau"] = values;
    }
    {
        const field = value["tau_des"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_des"] = values;
    }
    {
        const field = value["tau_dot"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_dot"] = values;
    }
    {
        const field = value["tau_ext"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 7)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tau_ext"] = values;
    }
    {
        const field = value["tcp_pose"];
        out["tcp_pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["tcp_pose_des"];
        out["tcp_pose_des"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["tcp_vel"];
        out["tcp_vel"] = Ros2Geometry_msgsMsgAccelCapture(field);
    }
    {
        const field = value["cam_pose"];
        out["cam_pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["flange_pose"];
        out["flange_pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["ft_sensor_raw"];
        out["ft_sensor_raw"] = Ros2Geometry_msgsMsgWrenchCapture(field);
    }
    {
        const field = value["ext_wrench_tcp_frame"];
        out["ext_wrench_tcp_frame"] = Ros2Geometry_msgsMsgWrenchCapture(field);
    }
    {
        const field = value["ext_wrench_base_frame"];
        out["ext_wrench_base_frame"] = Ros2Geometry_msgsMsgWrenchCapture(field);
    }
    return out;
}
