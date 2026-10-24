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

/** @brief Complete ROS1 flexiv_msgs/JointPosVel codec; maxima are not actual lengths. */
export const Ros1Flexiv_msgsJointPosVelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa",
    maxWireBytes : 112,
    minWireBytes : 112,
    cartesianMaxWireBytes : 112n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"positions" : Array.from({length : 7}, () => (0)), "velocities" : Array.from({length : 7}, () => (0))};
    },
    validateValue(value) {
        Ros1Flexiv_msgsJointPosVelSize(Ros1Flexiv_msgsJointPosVelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Flexiv_msgsJointPosVelCapture(value), n = Ros1Flexiv_msgsJointPosVelSize(owned), w = new Writer(n);
        Ros1Flexiv_msgsJointPosVelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 112, 90);
        if(owned.length < 112)
            bad();
        const r = new Reader(owned), value = Ros1Flexiv_msgsJointPosVelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Flexiv_msgsJointPosVelSize(value)
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

function Ros1Flexiv_msgsJointPosVelWrite(value, w)
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

function Ros1Flexiv_msgsJointPosVelRead(r)
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

function Ros1Flexiv_msgsJointPosVelCapture(value)
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

/** @brief Complete ROS1 flexiv_msgs/Mode codec; maxima are not actual lengths. */
export const Ros1Flexiv_msgsModeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422",
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
        Ros1Flexiv_msgsModeSize(Ros1Flexiv_msgsModeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Flexiv_msgsModeCapture(value), n = Ros1Flexiv_msgsModeSize(owned), w = new Writer(n);
        Ros1Flexiv_msgsModeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Flexiv_msgsModeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Flexiv_msgsModeSize(value)
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

function Ros1Flexiv_msgsModeWrite(value, w)
{
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Flexiv_msgsModeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Flexiv_msgsModeCapture(value)
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

/** @brief Complete ROS1 geometry_msgs/Point codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsPointSize(Ros1Geometry_msgsPointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPointCapture(value), n = Ros1Geometry_msgsPointSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsPointSize(value)
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

function Ros1Geometry_msgsPointWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Geometry_msgsPointRead(r)
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

function Ros1Geometry_msgsPointCapture(value)
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

/** @brief Complete ROS1 geometry_msgs/Quaternion codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsQuaternionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "w" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsQuaternionSize(Ros1Geometry_msgsQuaternionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsQuaternionCapture(value), n = Ros1Geometry_msgsQuaternionSize(owned), w = new Writer(n);
        Ros1Geometry_msgsQuaternionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsQuaternionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsQuaternionSize(value)
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

function Ros1Geometry_msgsQuaternionWrite(value, w)
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

function Ros1Geometry_msgsQuaternionRead(r)
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

function Ros1Geometry_msgsQuaternionCapture(value)
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

/** @brief Complete ROS1 geometry_msgs/Pose codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : Ros1Geometry_msgsPointCodec.defaultValue(), "orientation" : Ros1Geometry_msgsQuaternionCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsPoseSize(Ros1Geometry_msgsPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsPoseCapture(value), n = Ros1Geometry_msgsPoseSize(owned), w = new Writer(n);
        Ros1Geometry_msgsPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPointSize(value["position"]));
    n = addSize(n, Ros1Geometry_msgsQuaternionSize(value["orientation"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Geometry_msgsPoseWrite(value, w)
{
    Ros1Geometry_msgsPointWrite(value["position"], w);
    Ros1Geometry_msgsQuaternionWrite(value["orientation"], w);
}

function Ros1Geometry_msgsPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPointRead(r);
        value["position"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsQuaternionRead(r);
        value["orientation"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = Ros1Geometry_msgsPointCapture(field);
    }
    {
        const field = value["orientation"];
        out["orientation"] = Ros1Geometry_msgsQuaternionCapture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Vector3 codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsVector3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0};
    },
    validateValue(value) {
        Ros1Geometry_msgsVector3Size(Ros1Geometry_msgsVector3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsVector3Capture(value), n = Ros1Geometry_msgsVector3Size(owned), w = new Writer(n);
        Ros1Geometry_msgsVector3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsVector3Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsVector3Size(value)
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

function Ros1Geometry_msgsVector3Write(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
}

function Ros1Geometry_msgsVector3Read(r)
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

function Ros1Geometry_msgsVector3Capture(value)
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

/** @brief Complete ROS1 geometry_msgs/Accel codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsAccelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"linear" : Ros1Geometry_msgsVector3Codec.defaultValue(), "angular" : Ros1Geometry_msgsVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsAccelSize(Ros1Geometry_msgsAccelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsAccelCapture(value), n = Ros1Geometry_msgsAccelSize(owned), w = new Writer(n);
        Ros1Geometry_msgsAccelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsAccelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsAccelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["linear"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["angular"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Geometry_msgsAccelWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["linear"], w);
    Ros1Geometry_msgsVector3Write(value["angular"], w);
}

function Ros1Geometry_msgsAccelRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["linear"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["angular"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsAccelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["linear"];
        out["linear"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["angular"];
        out["angular"] = Ros1Geometry_msgsVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS1 geometry_msgs/Wrench codec; maxima are not actual lengths. */
export const Ros1Geometry_msgsWrenchCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force" : Ros1Geometry_msgsVector3Codec.defaultValue(), "torque" : Ros1Geometry_msgsVector3Codec.defaultValue()};
    },
    validateValue(value) {
        Ros1Geometry_msgsWrenchSize(Ros1Geometry_msgsWrenchCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Geometry_msgsWrenchCapture(value), n = Ros1Geometry_msgsWrenchSize(owned), w = new Writer(n);
        Ros1Geometry_msgsWrenchWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Geometry_msgsWrenchRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Geometry_msgsWrenchSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["force"]));
    n = addSize(n, Ros1Geometry_msgsVector3Size(value["torque"]));
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Geometry_msgsWrenchWrite(value, w)
{
    Ros1Geometry_msgsVector3Write(value["force"], w);
    Ros1Geometry_msgsVector3Write(value["torque"], w);
}

function Ros1Geometry_msgsWrenchRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["force"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsVector3Read(r);
        value["torque"] = decoded;
    }
    return value;
}

function Ros1Geometry_msgsWrenchCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force"];
        out["force"] = Ros1Geometry_msgsVector3Capture(field);
    }
    {
        const field = value["torque"];
        out["torque"] = Ros1Geometry_msgsVector3Capture(field);
    }
    return out;
}

/** @brief Complete ROS1 flexiv_msgs/RobotStates codec; maxima are not actual lengths. */
export const Ros1Flexiv_msgsRobotStatesCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8",
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
            "tcp_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "tcp_pose_des" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "tcp_vel" : Ros1Geometry_msgsAccelCodec.defaultValue(),
            "cam_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "flange_pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "ft_sensor_raw" : Ros1Geometry_msgsWrenchCodec.defaultValue(),
            "ext_wrench_tcp_frame" : Ros1Geometry_msgsWrenchCodec.defaultValue(),
            "ext_wrench_base_frame" : Ros1Geometry_msgsWrenchCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Flexiv_msgsRobotStatesSize(Ros1Flexiv_msgsRobotStatesCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Flexiv_msgsRobotStatesCapture(value), n = Ros1Flexiv_msgsRobotStatesSize(owned), w = new Writer(n);
        Ros1Flexiv_msgsRobotStatesWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 864, 90);
        if(owned.length < 864)
            bad();
        const r = new Reader(owned), value = Ros1Flexiv_msgsRobotStatesRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Flexiv_msgsRobotStatesSize(value)
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
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["tcp_pose"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["tcp_pose_des"]));
    n = addSize(n, Ros1Geometry_msgsAccelSize(value["tcp_vel"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["cam_pose"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["flange_pose"]));
    n = addSize(n, Ros1Geometry_msgsWrenchSize(value["ft_sensor_raw"]));
    n = addSize(n, Ros1Geometry_msgsWrenchSize(value["ext_wrench_tcp_frame"]));
    n = addSize(n, Ros1Geometry_msgsWrenchSize(value["ext_wrench_base_frame"]));
    if(n > 864)
        bad(90);
    return n;
}

function Ros1Flexiv_msgsRobotStatesWrite(value, w)
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
    Ros1Geometry_msgsPoseWrite(value["tcp_pose"], w);
    Ros1Geometry_msgsPoseWrite(value["tcp_pose_des"], w);
    Ros1Geometry_msgsAccelWrite(value["tcp_vel"], w);
    Ros1Geometry_msgsPoseWrite(value["cam_pose"], w);
    Ros1Geometry_msgsPoseWrite(value["flange_pose"], w);
    Ros1Geometry_msgsWrenchWrite(value["ft_sensor_raw"], w);
    Ros1Geometry_msgsWrenchWrite(value["ext_wrench_tcp_frame"], w);
    Ros1Geometry_msgsWrenchWrite(value["ext_wrench_base_frame"], w);
}

function Ros1Flexiv_msgsRobotStatesRead(r)
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
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["tcp_pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["tcp_pose_des"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsAccelRead(r);
        value["tcp_vel"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["cam_pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["flange_pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsWrenchRead(r);
        value["ft_sensor_raw"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsWrenchRead(r);
        value["ext_wrench_tcp_frame"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsWrenchRead(r);
        value["ext_wrench_base_frame"] = decoded;
    }
    return value;
}

function Ros1Flexiv_msgsRobotStatesCapture(value)
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
        out["tcp_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["tcp_pose_des"];
        out["tcp_pose_des"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["tcp_vel"];
        out["tcp_vel"] = Ros1Geometry_msgsAccelCapture(field);
    }
    {
        const field = value["cam_pose"];
        out["cam_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["flange_pose"];
        out["flange_pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["ft_sensor_raw"];
        out["ft_sensor_raw"] = Ros1Geometry_msgsWrenchCapture(field);
    }
    {
        const field = value["ext_wrench_tcp_frame"];
        out["ext_wrench_tcp_frame"] = Ros1Geometry_msgsWrenchCapture(field);
    }
    {
        const field = value["ext_wrench_base_frame"];
        out["ext_wrench_base_frame"] = Ros1Geometry_msgsWrenchCapture(field);
    }
    return out;
}
