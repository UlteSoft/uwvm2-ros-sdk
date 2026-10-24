/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
 * @details The selected domain contains 84 complete record/components and 196 original fields. Declared
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

/** Complete ROS1 xarm_gripper/MoveGoal codec; maxima are not actual lengths. */
export const Ros1Xarm_gripperMoveGoalCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target_pulse" : 0, "pulse_speed" : 0};
    },
    validateValue(value) {
        Ros1Xarm_gripperMoveGoalSize(Ros1Xarm_gripperMoveGoalCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_gripperMoveGoalCapture(value), n = Ros1Xarm_gripperMoveGoalSize(owned), w = new Writer(n);
        Ros1Xarm_gripperMoveGoalWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_gripperMoveGoalRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_gripperMoveGoalSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["target_pulse"] !== "number" || !Number.isFinite(value["target_pulse"]) || !Number.isFinite(Math.fround(value["target_pulse"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["pulse_speed"] !== "number" || !Number.isFinite(value["pulse_speed"]) || !Number.isFinite(Math.fround(value["pulse_speed"])))
        bad();
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Xarm_gripperMoveGoalWrite(value, w)
{
    w.v.setFloat32(w.at, value["target_pulse"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["pulse_speed"], true);
    w.at += 4;
}

function Ros1Xarm_gripperMoveGoalRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["target_pulse"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pulse_speed"] = decoded;
    }
    return value;
}

function Ros1Xarm_gripperMoveGoalCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target_pulse"];
        out["target_pulse"] = field;
    }
    {
        const field = value["pulse_speed"];
        out["pulse_speed"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_gripper/MoveResult codec; maxima are not actual lengths. */
export const Ros1Xarm_gripperMoveResultCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false, "err_code" : 0};
    },
    validateValue(value) {
        Ros1Xarm_gripperMoveResultSize(Ros1Xarm_gripperMoveResultCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_gripperMoveResultCapture(value), n = Ros1Xarm_gripperMoveResultSize(owned), w = new Writer(n);
        Ros1Xarm_gripperMoveResultWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_gripperMoveResultRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_gripperMoveResultSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["success"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["err_code"], 2, true);
    n = addSize(n, 2);
    if(n > 3)
        bad(90);
    return n;
}

function Ros1Xarm_gripperMoveResultWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt16(w.at, value["err_code"], true);
    w.at += 2;
}

function Ros1Xarm_gripperMoveResultRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["success"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err_code"] = decoded;
    }
    return value;
}

function Ros1Xarm_gripperMoveResultCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["success"];
        out["success"] = field;
    }
    {
        const field = value["err_code"];
        out["err_code"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_gripper/MoveFeedback codec; maxima are not actual lengths. */
export const Ros1Xarm_gripperMoveFeedbackCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"current_pulse" : 0};
    },
    validateValue(value) {
        Ros1Xarm_gripperMoveFeedbackSize(Ros1Xarm_gripperMoveFeedbackCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_gripperMoveFeedbackCapture(value), n = Ros1Xarm_gripperMoveFeedbackSize(owned), w = new Writer(n);
        Ros1Xarm_gripperMoveFeedbackWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_gripperMoveFeedbackRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_gripperMoveFeedbackSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["current_pulse"] !== "number" || !Number.isFinite(value["current_pulse"]) || !Number.isFinite(Math.fround(value["current_pulse"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_gripperMoveFeedbackWrite(value, w)
{
    w.v.setFloat32(w.at, value["current_pulse"], true);
    w.at += 4;
}

function Ros1Xarm_gripperMoveFeedbackRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["current_pulse"] = decoded;
    }
    return value;
}

function Ros1Xarm_gripperMoveFeedbackCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["current_pulse"];
        out["current_pulse"] = field;
    }
    return out;
}

/** Complete ROS1 geometry_msgs/Point codec; maxima are not actual lengths. */
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

/** Complete ROS1 geometry_msgs/Quaternion codec; maxima are not actual lengths. */
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

/** Complete ROS1 geometry_msgs/Pose codec; maxima are not actual lengths. */
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

/** Complete ROS1 time codec; maxima are not actual lengths. */
export const Ros1TimeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sec" : 0, "nsec" : 0};
    },
    validateValue(value) {
        Ros1TimeSize(Ros1TimeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1TimeCapture(value), n = Ros1TimeSize(owned), w = new Writer(n);
        Ros1TimeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1TimeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1TimeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sec"], 4, false);
    n = addSize(n, 4);
    integer(value["nsec"], 4, false);
    n = addSize(n, 4);
    if(value["nsec"] >= 1000000000)
        bad();
    if(n > 8)
        bad(90);
    return n;
}

function Ros1TimeWrite(value, w)
{
    w.v.setUint32(w.at, value["sec"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["nsec"], true);
    w.at += 4;
}

function Ros1TimeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["sec"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["nsec"] = decoded;
    }
    if(value["nsec"] >= 1000000000)
        bad();
    return value;
}

function Ros1TimeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sec"];
        out["sec"] = field;
    }
    {
        const field = value["nsec"];
        out["nsec"] = field;
    }
    return out;
}

/** Complete ROS1 std_msgs/Header codec; maxima are not actual lengths. */
export const Ros1Std_msgsHeaderCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"seq" : 0, "stamp" : Ros1TimeCodec.defaultValue(), "frame_id" : ""};
    },
    validateValue(value) {
        Ros1Std_msgsHeaderSize(Ros1Std_msgsHeaderCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Std_msgsHeaderCapture(value), n = Ros1Std_msgsHeaderSize(owned), w = new Writer(n);
        Ros1Std_msgsHeaderWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Std_msgsHeaderRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Std_msgsHeaderSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["seq"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, Ros1TimeSize(value["stamp"]));
    n = addSize(n, 4 + textBytes(value["frame_id"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Std_msgsHeaderWrite(value, w)
{
    w.v.setUint32(w.at, value["seq"], true);
    w.at += 4;
    Ros1TimeWrite(value["stamp"], w);
    w.text(value["frame_id"], 256);
}

function Ros1Std_msgsHeaderRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["seq"] = decoded;
    }
    {
        const decoded = Ros1TimeRead(r);
        value["stamp"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["frame_id"] = decoded;
    }
    return value;
}

function Ros1Std_msgsHeaderCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["seq"];
        out["seq"] = field;
    }
    {
        const field = value["stamp"];
        out["stamp"] = Ros1TimeCapture(field);
    }
    {
        const field = value["frame_id"];
        out["frame_id"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/CIOState codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsCIOStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057",
    maxWireBytes : 332,
    minWireBytes : 76,
    cartesianMaxWireBytes : 332n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
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
        Ros1Xarm_msgsCIOStateSize(Ros1Xarm_msgsCIOStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsCIOStateCapture(value), n = Ros1Xarm_msgsCIOStateSize(owned), w = new Writer(n);
        Ros1Xarm_msgsCIOStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 332, 90);
        if(owned.length < 76)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsCIOStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsCIOStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
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
    if(n > 332)
        bad(90);
    return n;
}

function Ros1Xarm_msgsCIOStateWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
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

function Ros1Xarm_msgsCIOStateRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
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

function Ros1Xarm_msgsCIOStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
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

/** Complete ROS1 xarm_msgs/IOState codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsIOStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"digital_1" : 0, "digital_2" : 0, "analog_1" : 0, "analog_2" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsIOStateSize(Ros1Xarm_msgsIOStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsIOStateCapture(value), n = Ros1Xarm_msgsIOStateSize(owned), w = new Writer(n);
        Ros1Xarm_msgsIOStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsIOStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsIOStateSize(value)
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

function Ros1Xarm_msgsIOStateWrite(value, w)
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

function Ros1Xarm_msgsIOStateRead(r)
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

function Ros1Xarm_msgsIOStateCapture(value)
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

/** Complete ROS1 xarm_msgs/RobotMsg codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsRobotMsgCodec = Object.freeze({
    codecIdentity : "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb",
    maxWireBytes : 366,
    minWireBytes : 82,
    cartesianMaxWireBytes : 366n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
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
        Ros1Xarm_msgsRobotMsgSize(Ros1Xarm_msgsRobotMsgCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsRobotMsgCapture(value), n = Ros1Xarm_msgsRobotMsgSize(owned), w = new Writer(n);
        Ros1Xarm_msgsRobotMsgWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 366, 90);
        if(owned.length < 82)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsRobotMsgRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsRobotMsgSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
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
    if(n > 366)
        bad(90);
    return n;
}

function Ros1Xarm_msgsRobotMsgWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
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

function Ros1Xarm_msgsRobotMsgRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
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

function Ros1Xarm_msgsRobotMsgCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
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

/** Complete ROS1 xarm_msgs/VeloMoveMsg codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsVeloMoveMsgCodec = Object.freeze({
    codecIdentity : "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032",
    maxWireBytes : 138,
    minWireBytes : 10,
    cartesianMaxWireBytes : 138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speeds" : [], "is_sync" : false, "is_tool_coord" : false, "duration" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsVeloMoveMsgSize(Ros1Xarm_msgsVeloMoveMsgCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsVeloMoveMsgCapture(value), n = Ros1Xarm_msgsVeloMoveMsgSize(owned), w = new Writer(n);
        Ros1Xarm_msgsVeloMoveMsgWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 138, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsVeloMoveMsgRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsVeloMoveMsgSize(value)
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

function Ros1Xarm_msgsVeloMoveMsgWrite(value, w)
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

function Ros1Xarm_msgsVeloMoveMsgRead(r)
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

function Ros1Xarm_msgsVeloMoveMsgCapture(value)
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

/** Complete ROS1 xarm_msgs/CallRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsCallRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsCallRequestSize(Ros1Xarm_msgsCallRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsCallRequestCapture(value), n = Ros1Xarm_msgsCallRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsCallRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsCallRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsCallRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsCallRequestWrite(value, w)
{
}

function Ros1Xarm_msgsCallRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsCallRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/CallResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsCallResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsCallResponseSize(Ros1Xarm_msgsCallResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsCallResponseCapture(value), n = Ros1Xarm_msgsCallResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsCallResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsCallResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsCallResponseSize(value)
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

function Ros1Xarm_msgsCallResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsCallResponseRead(r)
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

function Ros1Xarm_msgsCallResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/ClearErrRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsClearErrRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsClearErrRequestSize(Ros1Xarm_msgsClearErrRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsClearErrRequestCapture(value), n = Ros1Xarm_msgsClearErrRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsClearErrRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsClearErrRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsClearErrRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsClearErrRequestWrite(value, w)
{
}

function Ros1Xarm_msgsClearErrRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsClearErrRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/ClearErrResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsClearErrResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsClearErrResponseSize(Ros1Xarm_msgsClearErrResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsClearErrResponseCapture(value), n = Ros1Xarm_msgsClearErrResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsClearErrResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsClearErrResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsClearErrResponseSize(value)
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

function Ros1Xarm_msgsClearErrResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsClearErrResponseRead(r)
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

function Ros1Xarm_msgsClearErrResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/ConfigToolModbusRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsConfigToolModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"baud_rate" : 0, "timeout_ms" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsConfigToolModbusRequestSize(Ros1Xarm_msgsConfigToolModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsConfigToolModbusRequestCapture(value), n = Ros1Xarm_msgsConfigToolModbusRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsConfigToolModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsConfigToolModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsConfigToolModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["baud_rate"], 4, true);
    n = addSize(n, 4);
    integer(value["timeout_ms"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Xarm_msgsConfigToolModbusRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["baud_rate"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["timeout_ms"], true);
    w.at += 4;
}

function Ros1Xarm_msgsConfigToolModbusRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baud_rate"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["timeout_ms"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsConfigToolModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["baud_rate"];
        out["baud_rate"] = field;
    }
    {
        const field = value["timeout_ms"];
        out["timeout_ms"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/ConfigToolModbusResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsConfigToolModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message" : "", "ret" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsConfigToolModbusResponseSize(Ros1Xarm_msgsConfigToolModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsConfigToolModbusResponseCapture(value), n = Ros1Xarm_msgsConfigToolModbusResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsConfigToolModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsConfigToolModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsConfigToolModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    if(n > 262)
        bad(90);
    return n;
}

function Ros1Xarm_msgsConfigToolModbusResponseWrite(value, w)
{
    w.text(value["message"], 256);
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
}

function Ros1Xarm_msgsConfigToolModbusResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsConfigToolModbusResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/FtCaliLoadRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsFtCaliLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167",
    maxWireBytes : 133,
    minWireBytes : 5,
    cartesianMaxWireBytes : 133n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"datas" : [], "association_setting_tcp_load" : false};
    },
    validateValue(value) {
        Ros1Xarm_msgsFtCaliLoadRequestSize(Ros1Xarm_msgsFtCaliLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsFtCaliLoadRequestCapture(value), n = Ros1Xarm_msgsFtCaliLoadRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsFtCaliLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 133, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsFtCaliLoadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsFtCaliLoadRequestSize(value)
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
    if(n > 133)
        bad(90);
    return n;
}

function Ros1Xarm_msgsFtCaliLoadRequestWrite(value, w)
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
}

function Ros1Xarm_msgsFtCaliLoadRequestRead(r)
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
    return value;
}

function Ros1Xarm_msgsFtCaliLoadRequestCapture(value)
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
    return out;
}

/** Complete ROS1 xarm_msgs/FtCaliLoadResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsFtCaliLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsFtCaliLoadResponseSize(Ros1Xarm_msgsFtCaliLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsFtCaliLoadResponseCapture(value), n = Ros1Xarm_msgsFtCaliLoadResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsFtCaliLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsFtCaliLoadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsFtCaliLoadResponseSize(value)
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

function Ros1Xarm_msgsFtCaliLoadResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsFtCaliLoadResponseRead(r)
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

function Ros1Xarm_msgsFtCaliLoadResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/FtIdenLoadRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsFtIdenLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsFtIdenLoadRequestSize(Ros1Xarm_msgsFtIdenLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsFtIdenLoadRequestCapture(value), n = Ros1Xarm_msgsFtIdenLoadRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsFtIdenLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsFtIdenLoadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsFtIdenLoadRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsFtIdenLoadRequestWrite(value, w)
{
}

function Ros1Xarm_msgsFtIdenLoadRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsFtIdenLoadRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/FtIdenLoadResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsFtIdenLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8",
    maxWireBytes : 394,
    minWireBytes : 10,
    cartesianMaxWireBytes : 394n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "datas" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsFtIdenLoadResponseSize(Ros1Xarm_msgsFtIdenLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsFtIdenLoadResponseCapture(value), n = Ros1Xarm_msgsFtIdenLoadResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsFtIdenLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 394, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsFtIdenLoadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsFtIdenLoadResponseSize(value)
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

function Ros1Xarm_msgsFtIdenLoadResponseWrite(value, w)
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

function Ros1Xarm_msgsFtIdenLoadResponseRead(r)
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

function Ros1Xarm_msgsFtIdenLoadResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/GetAnalogIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetAnalogIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port_num" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetAnalogIORequestSize(Ros1Xarm_msgsGetAnalogIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetAnalogIORequestCapture(value), n = Ros1Xarm_msgsGetAnalogIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetAnalogIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetAnalogIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetAnalogIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port_num"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetAnalogIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["port_num"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGetAnalogIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["port_num"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetAnalogIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port_num"];
        out["port_num"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GetAnalogIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetAnalogIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"analog_value" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetAnalogIOResponseSize(Ros1Xarm_msgsGetAnalogIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetAnalogIOResponseCapture(value), n = Ros1Xarm_msgsGetAnalogIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetAnalogIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetAnalogIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetAnalogIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["analog_value"] !== "number" || !Number.isFinite(value["analog_value"]) || !Number.isFinite(Math.fround(value["analog_value"])))
        bad();
    n = addSize(n, 4);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 266)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetAnalogIOResponseWrite(value, w)
{
    w.v.setFloat32(w.at, value["analog_value"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGetAnalogIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_value"] = decoded;
    }
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

function Ros1Xarm_msgsGetAnalogIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["analog_value"];
        out["analog_value"] = field;
    }
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

/** Complete ROS1 xarm_msgs/GetControllerDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetControllerDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"io_num" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetControllerDigitalIORequestSize(Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value), n = Ros1Xarm_msgsGetControllerDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetControllerDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetControllerDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetControllerDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["io_num"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["io_num"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io_num"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetControllerDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["io_num"];
        out["io_num"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GetControllerDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetControllerDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "value" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetControllerDigitalIOResponseSize(Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value), n = Ros1Xarm_msgsGetControllerDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetControllerDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetControllerDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetControllerDigitalIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    integer(value["value"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["value"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["value"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetControllerDigitalIOResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GetDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetDigitalIORequestSize(Ros1Xarm_msgsGetDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetDigitalIORequestCapture(value), n = Ros1Xarm_msgsGetDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetDigitalIORequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetDigitalIORequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/GetDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498",
    maxWireBytes : 270,
    minWireBytes : 14,
    cartesianMaxWireBytes : 270n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"digital_1" : 0, "digital_2" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetDigitalIOResponseSize(Ros1Xarm_msgsGetDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetDigitalIOResponseCapture(value), n = Ros1Xarm_msgsGetDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 270, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetDigitalIOResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["digital_1"], 4, true);
    n = addSize(n, 4);
    integer(value["digital_2"], 4, true);
    n = addSize(n, 4);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 270)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetDigitalIOResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["digital_1"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["digital_2"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGetDigitalIOResponseRead(r)
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
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGetDigitalIOResponseCapture(value)
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
        const field = value["ret"];
        out["ret"] = field;
    }
    {
        const field = value["message"];
        out["message"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GetErrRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetErrRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetErrRequestSize(Ros1Xarm_msgsGetErrRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetErrRequestCapture(value), n = Ros1Xarm_msgsGetErrRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetErrRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetErrRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetErrRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetErrRequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetErrRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetErrRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/GetErrResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetErrResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"err" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetErrResponseSize(Ros1Xarm_msgsGetErrResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetErrResponseCapture(value), n = Ros1Xarm_msgsGetErrResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetErrResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetErrResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetErrResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["err"], 2, true);
    n = addSize(n, 2);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetErrResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["err"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGetErrResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err"] = decoded;
    }
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

function Ros1Xarm_msgsGetErrResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["err"];
        out["err"] = field;
    }
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

/** Complete ROS1 xarm_msgs/GetFloat32ListRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetFloat32ListRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetFloat32ListRequestSize(Ros1Xarm_msgsGetFloat32ListRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetFloat32ListRequestCapture(value), n = Ros1Xarm_msgsGetFloat32ListRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetFloat32ListRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetFloat32ListRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetFloat32ListRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetFloat32ListRequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetFloat32ListRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetFloat32ListRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/GetFloat32ListResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetFloat32ListResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2",
    maxWireBytes : 394,
    minWireBytes : 10,
    cartesianMaxWireBytes : 394n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "datas" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetFloat32ListResponseSize(Ros1Xarm_msgsGetFloat32ListResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetFloat32ListResponseCapture(value), n = Ros1Xarm_msgsGetFloat32ListResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetFloat32ListResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 394, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetFloat32ListResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetFloat32ListResponseSize(value)
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

function Ros1Xarm_msgsGetFloat32ListResponseWrite(value, w)
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

function Ros1Xarm_msgsGetFloat32ListResponseRead(r)
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

function Ros1Xarm_msgsGetFloat32ListResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/GetInt32Request codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetInt32RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetInt32RequestSize(Ros1Xarm_msgsGetInt32RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetInt32RequestCapture(value), n = Ros1Xarm_msgsGetInt32RequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetInt32RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetInt32RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetInt32RequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetInt32RequestWrite(value, w)
{
}

function Ros1Xarm_msgsGetInt32RequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGetInt32RequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/GetInt32Response codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetInt32ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d",
    maxWireBytes : 266,
    minWireBytes : 10,
    cartesianMaxWireBytes : 266n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0, "ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetInt32ResponseSize(Ros1Xarm_msgsGetInt32ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetInt32ResponseCapture(value), n = Ros1Xarm_msgsGetInt32ResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetInt32ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 266, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetInt32ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetInt32ResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["data"], 4, true);
    n = addSize(n, 4);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(n > 266)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetInt32ResponseWrite(value, w)
{
    w.v.setInt32(w.at, value["data"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGetInt32ResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["data"] = decoded;
    }
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

function Ros1Xarm_msgsGetInt32ResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data"];
        out["data"] = field;
    }
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

/** Complete ROS1 xarm_msgs/GetSetModbusDataRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetSetModbusDataRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7",
    maxWireBytes : 4105,
    minWireBytes : 9,
    cartesianMaxWireBytes : 4105n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"send_data" : [], "respond_len" : 0, "host_id" : 0, "is_transparent_transmission" : false, "use_503_port" : false};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetSetModbusDataRequestSize(Ros1Xarm_msgsGetSetModbusDataRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetSetModbusDataRequestCapture(value), n = Ros1Xarm_msgsGetSetModbusDataRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetSetModbusDataRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4105, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetSetModbusDataRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetSetModbusDataRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["send_data"]) || value["send_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["send_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["respond_len"], 2, true);
    n = addSize(n, 2);
    integer(value["host_id"], 1, false);
    n = addSize(n, 1);
    if(typeof value["is_transparent_transmission"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["use_503_port"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 4105)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetSetModbusDataRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["send_data"].length, true);
    w.at += 4;
    for(const element of value["send_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setInt16(w.at, value["respond_len"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["host_id"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["is_transparent_transmission"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["use_503_port"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_msgsGetSetModbusDataRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["send_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["send_data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["respond_len"] = decoded;
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

function Ros1Xarm_msgsGetSetModbusDataRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["send_data"];
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
        out["send_data"] = values;
    }
    {
        const field = value["respond_len"];
        out["respond_len"] = field;
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

/** Complete ROS1 xarm_msgs/GetSetModbusDataResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGetSetModbusDataResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "respond_data" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsGetSetModbusDataResponseSize(Ros1Xarm_msgsGetSetModbusDataResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGetSetModbusDataResponseCapture(value), n = Ros1Xarm_msgsGetSetModbusDataResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGetSetModbusDataResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGetSetModbusDataResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGetSetModbusDataResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["respond_data"]) || value["respond_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["respond_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGetSetModbusDataResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["respond_data"].length, true);
    w.at += 4;
    for(const element of value["respond_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Xarm_msgsGetSetModbusDataResponseRead(r)
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
            value["respond_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["respond_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Xarm_msgsGetSetModbusDataResponseCapture(value)
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
        const field = value["respond_data"];
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
        out["respond_data"] = values;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GripperConfigRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperConfigRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pulse_vel" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperConfigRequestSize(Ros1Xarm_msgsGripperConfigRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperConfigRequestCapture(value), n = Ros1Xarm_msgsGripperConfigRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperConfigRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperConfigRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperConfigRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["pulse_vel"] !== "number" || !Number.isFinite(value["pulse_vel"]) || !Number.isFinite(Math.fround(value["pulse_vel"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperConfigRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["pulse_vel"], true);
    w.at += 4;
}

function Ros1Xarm_msgsGripperConfigRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pulse_vel"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperConfigRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pulse_vel"];
        out["pulse_vel"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GripperConfigResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperConfigResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperConfigResponseSize(Ros1Xarm_msgsGripperConfigResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperConfigResponseCapture(value), n = Ros1Xarm_msgsGripperConfigResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperConfigResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperConfigResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperConfigResponseSize(value)
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

function Ros1Xarm_msgsGripperConfigResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGripperConfigResponseRead(r)
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

function Ros1Xarm_msgsGripperConfigResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/GripperMoveRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pulse_pos" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperMoveRequestSize(Ros1Xarm_msgsGripperMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperMoveRequestCapture(value), n = Ros1Xarm_msgsGripperMoveRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperMoveRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["pulse_pos"] !== "number" || !Number.isFinite(value["pulse_pos"]) || !Number.isFinite(Math.fround(value["pulse_pos"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperMoveRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["pulse_pos"], true);
    w.at += 4;
}

function Ros1Xarm_msgsGripperMoveRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pulse_pos"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperMoveRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pulse_pos"];
        out["pulse_pos"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/GripperMoveResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperMoveResponseSize(Ros1Xarm_msgsGripperMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperMoveResponseCapture(value), n = Ros1Xarm_msgsGripperMoveResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperMoveResponseSize(value)
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

function Ros1Xarm_msgsGripperMoveResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsGripperMoveResponseRead(r)
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

function Ros1Xarm_msgsGripperMoveResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/GripperStateRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperStateRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d",
    maxWireBytes : 0,
    minWireBytes : 0,
    cartesianMaxWireBytes : 0n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperStateRequestSize(Ros1Xarm_msgsGripperStateRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperStateRequestCapture(value), n = Ros1Xarm_msgsGripperStateRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperStateRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 0, 90);
        if(owned.length < 0)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperStateRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperStateRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(n > 0)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperStateRequestWrite(value, w)
{
}

function Ros1Xarm_msgsGripperStateRequestRead(r)
{
    const value = {};
    return value;
}

function Ros1Xarm_msgsGripperStateRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    return out;
}

/** Complete ROS1 xarm_msgs/GripperStateResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsGripperStateResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "curr_pos" : 0, "err_code" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsGripperStateResponseSize(Ros1Xarm_msgsGripperStateResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsGripperStateResponseCapture(value), n = Ros1Xarm_msgsGripperStateResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsGripperStateResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsGripperStateResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsGripperStateResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(typeof value["curr_pos"] !== "number" || !Number.isFinite(value["curr_pos"]) || !Number.isFinite(Math.fround(value["curr_pos"])))
        bad();
    n = addSize(n, 4);
    integer(value["err_code"], 2, true);
    n = addSize(n, 2);
    if(n > 268)
        bad(90);
    return n;
}

function Ros1Xarm_msgsGripperStateResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setFloat32(w.at, value["curr_pos"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["err_code"], true);
    w.at += 2;
}

function Ros1Xarm_msgsGripperStateResponseRead(r)
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
        value["curr_pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err_code"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsGripperStateResponseCapture(value)
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
        const field = value["curr_pos"];
        out["curr_pos"] = field;
    }
    {
        const field = value["err_code"];
        out["err_code"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/MoveRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced",
    maxWireBytes : 148,
    minWireBytes : 20,
    cartesianMaxWireBytes : 148n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : [], "mvvelo" : 0, "mvacc" : 0, "mvtime" : 0, "mvradii" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveRequestSize(Ros1Xarm_msgsMoveRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveRequestCapture(value), n = Ros1Xarm_msgsMoveRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 148, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveRequestSize(value)
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
    if(typeof value["mvvelo"] !== "number" || !Number.isFinite(value["mvvelo"]) || !Number.isFinite(Math.fround(value["mvvelo"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvacc"] !== "number" || !Number.isFinite(value["mvacc"]) || !Number.isFinite(Math.fround(value["mvacc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvradii"] !== "number" || !Number.isFinite(value["mvradii"]) || !Number.isFinite(Math.fround(value["mvradii"])))
        bad();
    n = addSize(n, 4);
    if(n > 148)
        bad(90);
    return n;
}

function Ros1Xarm_msgsMoveRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pose"].length, true);
    w.at += 4;
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["mvvelo"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvacc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvradii"], true);
    w.at += 4;
}

function Ros1Xarm_msgsMoveRequestRead(r)
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
        value["mvvelo"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvacc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvradii"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsMoveRequestCapture(value)
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
        const field = value["mvvelo"];
        out["mvvelo"] = field;
    }
    {
        const field = value["mvacc"];
        out["mvacc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["mvradii"];
        out["mvradii"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/MoveResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveResponseSize(Ros1Xarm_msgsMoveResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveResponseCapture(value), n = Ros1Xarm_msgsMoveResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveResponseSize(value)
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

function Ros1Xarm_msgsMoveResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsMoveResponseRead(r)
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

function Ros1Xarm_msgsMoveResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/MoveAxisAngleRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveAxisAngleRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30",
    maxWireBytes : 148,
    minWireBytes : 20,
    cartesianMaxWireBytes : 148n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : [], "mvvelo" : 0, "mvacc" : 0, "mvtime" : 0, "coord" : 0, "relative" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveAxisAngleRequestSize(Ros1Xarm_msgsMoveAxisAngleRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveAxisAngleRequestCapture(value), n = Ros1Xarm_msgsMoveAxisAngleRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveAxisAngleRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 148, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveAxisAngleRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveAxisAngleRequestSize(value)
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
    if(typeof value["mvvelo"] !== "number" || !Number.isFinite(value["mvvelo"]) || !Number.isFinite(Math.fround(value["mvvelo"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvacc"] !== "number" || !Number.isFinite(value["mvacc"]) || !Number.isFinite(Math.fround(value["mvacc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["mvtime"] !== "number" || !Number.isFinite(value["mvtime"]) || !Number.isFinite(Math.fround(value["mvtime"])))
        bad();
    n = addSize(n, 4);
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    integer(value["relative"], 2, true);
    n = addSize(n, 2);
    if(n > 148)
        bad(90);
    return n;
}

function Ros1Xarm_msgsMoveAxisAngleRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["pose"].length, true);
    w.at += 4;
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["mvvelo"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvacc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["mvtime"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["relative"], true);
    w.at += 2;
}

function Ros1Xarm_msgsMoveAxisAngleRequestRead(r)
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
        value["mvvelo"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvacc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mvtime"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["relative"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsMoveAxisAngleRequestCapture(value)
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
        const field = value["mvvelo"];
        out["mvvelo"] = field;
    }
    {
        const field = value["mvacc"];
        out["mvacc"] = field;
    }
    {
        const field = value["mvtime"];
        out["mvtime"] = field;
    }
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    {
        const field = value["relative"];
        out["relative"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/MoveAxisAngleResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveAxisAngleResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveAxisAngleResponseSize(Ros1Xarm_msgsMoveAxisAngleResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveAxisAngleResponseCapture(value), n = Ros1Xarm_msgsMoveAxisAngleResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveAxisAngleResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveAxisAngleResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveAxisAngleResponseSize(value)
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

function Ros1Xarm_msgsMoveAxisAngleResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsMoveAxisAngleResponseRead(r)
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

function Ros1Xarm_msgsMoveAxisAngleResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/MoveVeloRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveVeloRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204",
    maxWireBytes : 136,
    minWireBytes : 8,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"velocities" : [], "jnt_sync" : 0, "coord" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveVeloRequestSize(Ros1Xarm_msgsMoveVeloRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveVeloRequestCapture(value), n = Ros1Xarm_msgsMoveVeloRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveVeloRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveVeloRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveVeloRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["velocities"]) || value["velocities"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["velocities"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    integer(value["jnt_sync"], 2, true);
    n = addSize(n, 2);
    integer(value["coord"], 2, true);
    n = addSize(n, 2);
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Xarm_msgsMoveVeloRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["velocities"].length, true);
    w.at += 4;
    for(const element of value["velocities"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setInt16(w.at, value["jnt_sync"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["coord"], true);
    w.at += 2;
}

function Ros1Xarm_msgsMoveVeloRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["velocities"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["velocities"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["jnt_sync"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["coord"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsMoveVeloRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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
        const field = value["jnt_sync"];
        out["jnt_sync"] = field;
    }
    {
        const field = value["coord"];
        out["coord"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/MoveVeloResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveVeloResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveVeloResponseSize(Ros1Xarm_msgsMoveVeloResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveVeloResponseCapture(value), n = Ros1Xarm_msgsMoveVeloResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveVeloResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveVeloResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveVeloResponseSize(value)
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

function Ros1Xarm_msgsMoveVeloResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsMoveVeloResponseRead(r)
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

function Ros1Xarm_msgsMoveVeloResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/MoveVelocityRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveVelocityRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef",
    maxWireBytes : 138,
    minWireBytes : 10,
    cartesianMaxWireBytes : 138n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speeds" : [], "is_sync" : false, "is_tool_coord" : false, "duration" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveVelocityRequestSize(Ros1Xarm_msgsMoveVelocityRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveVelocityRequestCapture(value), n = Ros1Xarm_msgsMoveVelocityRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveVelocityRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 138, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveVelocityRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveVelocityRequestSize(value)
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

function Ros1Xarm_msgsMoveVelocityRequestWrite(value, w)
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

function Ros1Xarm_msgsMoveVelocityRequestRead(r)
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

function Ros1Xarm_msgsMoveVelocityRequestCapture(value)
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

/** Complete ROS1 xarm_msgs/MoveVelocityResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsMoveVelocityResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsMoveVelocityResponseSize(Ros1Xarm_msgsMoveVelocityResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsMoveVelocityResponseCapture(value), n = Ros1Xarm_msgsMoveVelocityResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsMoveVelocityResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsMoveVelocityResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsMoveVelocityResponseSize(value)
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

function Ros1Xarm_msgsMoveVelocityResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsMoveVelocityResponseRead(r)
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

function Ros1Xarm_msgsMoveVelocityResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/PlayTrajRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsPlayTrajRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"traj_file" : "", "repeat_times" : 0, "speed_factor" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsPlayTrajRequestSize(Ros1Xarm_msgsPlayTrajRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsPlayTrajRequestCapture(value), n = Ros1Xarm_msgsPlayTrajRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsPlayTrajRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsPlayTrajRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsPlayTrajRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["traj_file"], 256).length);
    integer(value["repeat_times"], 2, true);
    n = addSize(n, 2);
    integer(value["speed_factor"], 2, true);
    n = addSize(n, 2);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Xarm_msgsPlayTrajRequestWrite(value, w)
{
    w.text(value["traj_file"], 256);
    w.v.setInt16(w.at, value["repeat_times"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["speed_factor"], true);
    w.at += 2;
}

function Ros1Xarm_msgsPlayTrajRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["traj_file"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["repeat_times"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed_factor"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsPlayTrajRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["traj_file"];
        out["traj_file"] = field;
    }
    {
        const field = value["repeat_times"];
        out["repeat_times"] = field;
    }
    {
        const field = value["speed_factor"];
        out["speed_factor"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/PlayTrajResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsPlayTrajResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsPlayTrajResponseSize(Ros1Xarm_msgsPlayTrajResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsPlayTrajResponseCapture(value), n = Ros1Xarm_msgsPlayTrajResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsPlayTrajResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsPlayTrajResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsPlayTrajResponseSize(value)
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

function Ros1Xarm_msgsPlayTrajResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsPlayTrajResponseRead(r)
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

function Ros1Xarm_msgsPlayTrajResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetAxisRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetAxisRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"id" : 0, "data" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetAxisRequestSize(Ros1Xarm_msgsSetAxisRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetAxisRequestCapture(value), n = Ros1Xarm_msgsSetAxisRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetAxisRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetAxisRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetAxisRequestSize(value)
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

function Ros1Xarm_msgsSetAxisRequestWrite(value, w)
{
    w.v.setInt16(w.at, value["id"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetAxisRequestRead(r)
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

function Ros1Xarm_msgsSetAxisRequestCapture(value)
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

/** Complete ROS1 xarm_msgs/SetAxisResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetAxisResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetAxisResponseSize(Ros1Xarm_msgsSetAxisResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetAxisResponseCapture(value), n = Ros1Xarm_msgsSetAxisResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetAxisResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetAxisResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetAxisResponseSize(value)
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

function Ros1Xarm_msgsSetAxisResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetAxisResponseRead(r)
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

function Ros1Xarm_msgsSetAxisResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetControllerAnalogIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetControllerAnalogIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66",
    maxWireBytes : 6,
    minWireBytes : 6,
    cartesianMaxWireBytes : 6n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port_num" : 0, "analog_value" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetControllerAnalogIORequestSize(Ros1Xarm_msgsSetControllerAnalogIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetControllerAnalogIORequestCapture(value), n = Ros1Xarm_msgsSetControllerAnalogIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetControllerAnalogIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 6, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetControllerAnalogIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetControllerAnalogIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port_num"], 2, true);
    n = addSize(n, 2);
    if(typeof value["analog_value"] !== "number" || !Number.isFinite(value["analog_value"]) || !Number.isFinite(Math.fround(value["analog_value"])))
        bad();
    n = addSize(n, 4);
    if(n > 6)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetControllerAnalogIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["port_num"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["analog_value"], true);
    w.at += 4;
}

function Ros1Xarm_msgsSetControllerAnalogIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["port_num"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["analog_value"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetControllerAnalogIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port_num"];
        out["port_num"] = field;
    }
    {
        const field = value["analog_value"];
        out["analog_value"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetControllerAnalogIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetControllerAnalogIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetControllerAnalogIOResponseSize(Ros1Xarm_msgsSetControllerAnalogIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetControllerAnalogIOResponseCapture(value), n = Ros1Xarm_msgsSetControllerAnalogIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetControllerAnalogIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetControllerAnalogIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetControllerAnalogIOResponseSize(value)
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

function Ros1Xarm_msgsSetControllerAnalogIOResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetControllerAnalogIOResponseRead(r)
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

function Ros1Xarm_msgsSetControllerAnalogIOResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetDigitalIORequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetDigitalIORequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"io_num" : 0, "value" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetDigitalIORequestSize(Ros1Xarm_msgsSetDigitalIORequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetDigitalIORequestCapture(value), n = Ros1Xarm_msgsSetDigitalIORequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetDigitalIORequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetDigitalIORequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetDigitalIORequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["io_num"], 2, true);
    n = addSize(n, 2);
    integer(value["value"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetDigitalIORequestWrite(value, w)
{
    w.v.setInt16(w.at, value["io_num"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["value"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetDigitalIORequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io_num"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["value"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetDigitalIORequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["io_num"];
        out["io_num"] = field;
    }
    {
        const field = value["value"];
        out["value"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetDigitalIOResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetDigitalIOResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetDigitalIOResponseSize(Ros1Xarm_msgsSetDigitalIOResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetDigitalIOResponseCapture(value), n = Ros1Xarm_msgsSetDigitalIOResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetDigitalIOResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetDigitalIOResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetDigitalIOResponseSize(value)
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

function Ros1Xarm_msgsSetDigitalIOResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetDigitalIOResponseRead(r)
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

function Ros1Xarm_msgsSetDigitalIOResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetFloat32Request codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetFloat32RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetFloat32RequestSize(Ros1Xarm_msgsSetFloat32RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetFloat32RequestCapture(value), n = Ros1Xarm_msgsSetFloat32RequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetFloat32RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetFloat32RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetFloat32RequestSize(value)
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

function Ros1Xarm_msgsSetFloat32RequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["data"], true);
    w.at += 4;
}

function Ros1Xarm_msgsSetFloat32RequestRead(r)
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

function Ros1Xarm_msgsSetFloat32RequestCapture(value)
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

/** Complete ROS1 xarm_msgs/SetFloat32Response codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetFloat32ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetFloat32ResponseSize(Ros1Xarm_msgsSetFloat32ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetFloat32ResponseCapture(value), n = Ros1Xarm_msgsSetFloat32ResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetFloat32ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetFloat32ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetFloat32ResponseSize(value)
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

function Ros1Xarm_msgsSetFloat32ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetFloat32ResponseRead(r)
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

function Ros1Xarm_msgsSetFloat32ResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetInt16Request codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetInt16RequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetInt16RequestSize(Ros1Xarm_msgsSetInt16RequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetInt16RequestCapture(value), n = Ros1Xarm_msgsSetInt16RequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetInt16RequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetInt16RequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetInt16RequestSize(value)
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

function Ros1Xarm_msgsSetInt16RequestWrite(value, w)
{
    w.v.setInt16(w.at, value["data"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetInt16RequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["data"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetInt16RequestCapture(value)
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

/** Complete ROS1 xarm_msgs/SetInt16Response codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetInt16ResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetInt16ResponseSize(Ros1Xarm_msgsSetInt16ResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetInt16ResponseCapture(value), n = Ros1Xarm_msgsSetInt16ResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetInt16ResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetInt16ResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetInt16ResponseSize(value)
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

function Ros1Xarm_msgsSetInt16ResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetInt16ResponseRead(r)
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

function Ros1Xarm_msgsSetInt16ResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetLoadRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetLoadRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mass" : 0, "xc" : 0, "yc" : 0, "zc" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetLoadRequestSize(Ros1Xarm_msgsSetLoadRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetLoadRequestCapture(value), n = Ros1Xarm_msgsSetLoadRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetLoadRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetLoadRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetLoadRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["mass"] !== "number" || !Number.isFinite(value["mass"]) || !Number.isFinite(Math.fround(value["mass"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["xc"] !== "number" || !Number.isFinite(value["xc"]) || !Number.isFinite(Math.fround(value["xc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["yc"] !== "number" || !Number.isFinite(value["yc"]) || !Number.isFinite(Math.fround(value["yc"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["zc"] !== "number" || !Number.isFinite(value["zc"]) || !Number.isFinite(Math.fround(value["zc"])))
        bad();
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetLoadRequestWrite(value, w)
{
    w.v.setFloat32(w.at, value["mass"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["xc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["yc"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["zc"], true);
    w.at += 4;
}

function Ros1Xarm_msgsSetLoadRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["mass"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["xc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yc"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["zc"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetLoadRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mass"];
        out["mass"] = field;
    }
    {
        const field = value["xc"];
        out["xc"] = field;
    }
    {
        const field = value["yc"];
        out["yc"] = field;
    }
    {
        const field = value["zc"];
        out["zc"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetLoadResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetLoadResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetLoadResponseSize(Ros1Xarm_msgsSetLoadResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetLoadResponseCapture(value), n = Ros1Xarm_msgsSetLoadResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetLoadResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetLoadResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetLoadResponseSize(value)
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

function Ros1Xarm_msgsSetLoadResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetLoadResponseRead(r)
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

function Ros1Xarm_msgsSetLoadResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetModbusTimeoutRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetModbusTimeoutRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"timeout_ms" : 0, "is_transparent_transmission" : false};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetModbusTimeoutRequestSize(Ros1Xarm_msgsSetModbusTimeoutRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetModbusTimeoutRequestCapture(value), n = Ros1Xarm_msgsSetModbusTimeoutRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetModbusTimeoutRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetModbusTimeoutRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetModbusTimeoutRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["timeout_ms"], 4, true);
    n = addSize(n, 4);
    if(typeof value["is_transparent_transmission"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetModbusTimeoutRequestWrite(value, w)
{
    w.v.setInt32(w.at, value["timeout_ms"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["is_transparent_transmission"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_msgsSetModbusTimeoutRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["timeout_ms"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["is_transparent_transmission"] = decoded !== 0;
    }
    return value;
}

function Ros1Xarm_msgsSetModbusTimeoutRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["timeout_ms"];
        out["timeout_ms"] = field;
    }
    {
        const field = value["is_transparent_transmission"];
        out["is_transparent_transmission"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetModbusTimeoutResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetModbusTimeoutResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message" : "", "ret" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetModbusTimeoutResponseSize(Ros1Xarm_msgsSetModbusTimeoutResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetModbusTimeoutResponseCapture(value), n = Ros1Xarm_msgsSetModbusTimeoutResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetModbusTimeoutResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetModbusTimeoutResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetModbusTimeoutResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    if(n > 262)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetModbusTimeoutResponseWrite(value, w)
{
    w.text(value["message"], 256);
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetModbusTimeoutResponseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["message"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["ret"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetModbusTimeoutResponseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message"];
        out["message"] = field;
    }
    {
        const field = value["ret"];
        out["ret"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetMultipleIntsRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetMultipleIntsRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"data_int" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetMultipleIntsRequestSize(Ros1Xarm_msgsSetMultipleIntsRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetMultipleIntsRequestCapture(value), n = Ros1Xarm_msgsSetMultipleIntsRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetMultipleIntsRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetMultipleIntsRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetMultipleIntsRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["data_int"]) || value["data_int"].length > 32)
        bad();
    n = addSize(n, 4);
    for(const element of value["data_int"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetMultipleIntsRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["data_int"].length, true);
    w.at += 4;
    for(const element of value["data_int"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
}

function Ros1Xarm_msgsSetMultipleIntsRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 32)
                bad();
            value["data_int"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["data_int"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Xarm_msgsSetMultipleIntsRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["data_int"];
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
        out["data_int"] = values;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetMultipleIntsResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetMultipleIntsResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetMultipleIntsResponseSize(Ros1Xarm_msgsSetMultipleIntsResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetMultipleIntsResponseCapture(value), n = Ros1Xarm_msgsSetMultipleIntsResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetMultipleIntsResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetMultipleIntsResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetMultipleIntsResponseSize(value)
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

function Ros1Xarm_msgsSetMultipleIntsResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetMultipleIntsResponseRead(r)
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

function Ros1Xarm_msgsSetMultipleIntsResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetStringRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetStringRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"str_data" : "", "timeout" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetStringRequestSize(Ros1Xarm_msgsSetStringRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetStringRequestCapture(value), n = Ros1Xarm_msgsSetStringRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetStringRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetStringRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetStringRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["str_data"], 256).length);
    if(typeof value["timeout"] !== "number" || !Number.isFinite(value["timeout"]) || !Number.isFinite(Math.fround(value["timeout"])))
        bad();
    n = addSize(n, 4);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetStringRequestWrite(value, w)
{
    w.text(value["str_data"], 256);
    w.v.setFloat32(w.at, value["timeout"], true);
    w.at += 4;
}

function Ros1Xarm_msgsSetStringRequestRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["str_data"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["timeout"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetStringRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["str_data"];
        out["str_data"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetStringResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetStringResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetStringResponseSize(Ros1Xarm_msgsSetStringResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetStringResponseCapture(value), n = Ros1Xarm_msgsSetStringResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetStringResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetStringResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetStringResponseSize(value)
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

function Ros1Xarm_msgsSetStringResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsSetStringResponseRead(r)
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

function Ros1Xarm_msgsSetStringResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/SetToolModbusRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetToolModbusRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6",
    maxWireBytes : 4102,
    minWireBytes : 6,
    cartesianMaxWireBytes : 4102n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"send_data" : [], "respond_len" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetToolModbusRequestSize(Ros1Xarm_msgsSetToolModbusRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetToolModbusRequestCapture(value), n = Ros1Xarm_msgsSetToolModbusRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetToolModbusRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4102, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetToolModbusRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetToolModbusRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["send_data"]) || value["send_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["send_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    integer(value["respond_len"], 2, true);
    n = addSize(n, 2);
    if(n > 4102)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetToolModbusRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["send_data"].length, true);
    w.at += 4;
    for(const element of value["send_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setInt16(w.at, value["respond_len"], true);
    w.at += 2;
}

function Ros1Xarm_msgsSetToolModbusRequestRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 4096)
                bad();
            value["send_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["send_data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["respond_len"] = decoded;
    }
    return value;
}

function Ros1Xarm_msgsSetToolModbusRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["send_data"];
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
        out["send_data"] = values;
    }
    {
        const field = value["respond_len"];
        out["respond_len"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/SetToolModbusResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsSetToolModbusResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76",
    maxWireBytes : 4362,
    minWireBytes : 10,
    cartesianMaxWireBytes : 4362n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : "", "respond_data" : []};
    },
    validateValue(value) {
        Ros1Xarm_msgsSetToolModbusResponseSize(Ros1Xarm_msgsSetToolModbusResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsSetToolModbusResponseCapture(value), n = Ros1Xarm_msgsSetToolModbusResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsSetToolModbusResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4362, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsSetToolModbusResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsSetToolModbusResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["ret"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["message"], 256).length);
    if(!Array.isArray(value["respond_data"]) || value["respond_data"].length > 4096)
        bad();
    n = addSize(n, 4);
    for(const element of value["respond_data"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 4362)
        bad(90);
    return n;
}

function Ros1Xarm_msgsSetToolModbusResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
    w.v.setUint32(w.at, value["respond_data"].length, true);
    w.at += 4;
    for(const element of value["respond_data"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Xarm_msgsSetToolModbusResponseRead(r)
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
            value["respond_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["respond_data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Xarm_msgsSetToolModbusResponseCapture(value)
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
        const field = value["respond_data"];
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
        out["respond_data"] = values;
    }
    return out;
}

/** Complete ROS1 xarm_msgs/TCPOffsetRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsTCPOffsetRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "roll" : 0, "pitch" : 0, "yaw" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsTCPOffsetRequestSize(Ros1Xarm_msgsTCPOffsetRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsTCPOffsetRequestCapture(value), n = Ros1Xarm_msgsTCPOffsetRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsTCPOffsetRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsTCPOffsetRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsTCPOffsetRequestSize(value)
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

function Ros1Xarm_msgsTCPOffsetRequestWrite(value, w)
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

function Ros1Xarm_msgsTCPOffsetRequestRead(r)
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

function Ros1Xarm_msgsTCPOffsetRequestCapture(value)
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

/** Complete ROS1 xarm_msgs/TCPOffsetResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsTCPOffsetResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsTCPOffsetResponseSize(Ros1Xarm_msgsTCPOffsetResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsTCPOffsetResponseCapture(value), n = Ros1Xarm_msgsTCPOffsetResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsTCPOffsetResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsTCPOffsetResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsTCPOffsetResponseSize(value)
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

function Ros1Xarm_msgsTCPOffsetResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsTCPOffsetResponseRead(r)
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

function Ros1Xarm_msgsTCPOffsetResponseCapture(value)
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

/** Complete ROS1 xarm_msgs/VacuumGripperCtrlRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsVacuumGripperCtrlRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"on" : false, "wait" : false, "timeout" : 0, "delay_sec" : 0, "sync" : false, "hardware_version" : 0};
    },
    validateValue(value) {
        Ros1Xarm_msgsVacuumGripperCtrlRequestSize(Ros1Xarm_msgsVacuumGripperCtrlRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsVacuumGripperCtrlRequestCapture(value), n = Ros1Xarm_msgsVacuumGripperCtrlRequestSize(owned), w = new Writer(n);
        Ros1Xarm_msgsVacuumGripperCtrlRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsVacuumGripperCtrlRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsVacuumGripperCtrlRequestSize(value)
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

function Ros1Xarm_msgsVacuumGripperCtrlRequestWrite(value, w)
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

function Ros1Xarm_msgsVacuumGripperCtrlRequestRead(r)
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

function Ros1Xarm_msgsVacuumGripperCtrlRequestCapture(value)
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

/** Complete ROS1 xarm_msgs/VacuumGripperCtrlResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_msgsVacuumGripperCtrlResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540",
    maxWireBytes : 262,
    minWireBytes : 6,
    cartesianMaxWireBytes : 262n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"ret" : 0, "message" : ""};
    },
    validateValue(value) {
        Ros1Xarm_msgsVacuumGripperCtrlResponseSize(Ros1Xarm_msgsVacuumGripperCtrlResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_msgsVacuumGripperCtrlResponseCapture(value), n = Ros1Xarm_msgsVacuumGripperCtrlResponseSize(owned), w = new Writer(n);
        Ros1Xarm_msgsVacuumGripperCtrlResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 262, 90);
        if(owned.length < 6)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_msgsVacuumGripperCtrlResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_msgsVacuumGripperCtrlResponseSize(value)
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

function Ros1Xarm_msgsVacuumGripperCtrlResponseWrite(value, w)
{
    w.v.setInt16(w.at, value["ret"], true);
    w.at += 2;
    w.text(value["message"], 256);
}

function Ros1Xarm_msgsVacuumGripperCtrlResponseRead(r)
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

function Ros1Xarm_msgsVacuumGripperCtrlResponseCapture(value)
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

/** Complete ROS1 xarm_planner/exec_planRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerExec_planRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"exec" : false};
    },
    validateValue(value) {
        Ros1Xarm_plannerExec_planRequestSize(Ros1Xarm_plannerExec_planRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerExec_planRequestCapture(value), n = Ros1Xarm_plannerExec_planRequestSize(owned), w = new Writer(n);
        Ros1Xarm_plannerExec_planRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerExec_planRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerExec_planRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["exec"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Xarm_plannerExec_planRequestWrite(value, w)
{
    w.v.setUint8(w.at, value["exec"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_plannerExec_planRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["exec"] = decoded !== 0;
    }
    return value;
}

function Ros1Xarm_plannerExec_planRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["exec"];
        out["exec"] = field;
    }
    return out;
}

/** Complete ROS1 xarm_planner/exec_planResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerExec_planResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Xarm_plannerExec_planResponseSize(Ros1Xarm_plannerExec_planResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerExec_planResponseCapture(value), n = Ros1Xarm_plannerExec_planResponseSize(owned), w = new Writer(n);
        Ros1Xarm_plannerExec_planResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerExec_planResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerExec_planResponseSize(value)
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

function Ros1Xarm_plannerExec_planResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_plannerExec_planResponseRead(r)
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

function Ros1Xarm_plannerExec_planResponseCapture(value)
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

/** Complete ROS1 xarm_planner/joint_planRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerJoint_planRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : []};
    },
    validateValue(value) {
        Ros1Xarm_plannerJoint_planRequestSize(Ros1Xarm_plannerJoint_planRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerJoint_planRequestCapture(value), n = Ros1Xarm_plannerJoint_planRequestSize(owned), w = new Writer(n);
        Ros1Xarm_plannerJoint_planRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerJoint_planRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerJoint_planRequestSize(value)
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

function Ros1Xarm_plannerJoint_planRequestWrite(value, w)
{
    w.v.setUint32(w.at, value["target"].length, true);
    w.at += 4;
    for(const element of value["target"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Xarm_plannerJoint_planRequestRead(r)
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

function Ros1Xarm_plannerJoint_planRequestCapture(value)
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

/** Complete ROS1 xarm_planner/joint_planResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerJoint_planResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Xarm_plannerJoint_planResponseSize(Ros1Xarm_plannerJoint_planResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerJoint_planResponseCapture(value), n = Ros1Xarm_plannerJoint_planResponseSize(owned), w = new Writer(n);
        Ros1Xarm_plannerJoint_planResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerJoint_planResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerJoint_planResponseSize(value)
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

function Ros1Xarm_plannerJoint_planResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_plannerJoint_planResponseRead(r)
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

function Ros1Xarm_plannerJoint_planResponseCapture(value)
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

/** Complete ROS1 xarm_planner/pose_planRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerPose_planRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : Ros1Geometry_msgsPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Xarm_plannerPose_planRequestSize(Ros1Xarm_plannerPose_planRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerPose_planRequestCapture(value), n = Ros1Xarm_plannerPose_planRequestSize(owned), w = new Writer(n);
        Ros1Xarm_plannerPose_planRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerPose_planRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerPose_planRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["target"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Xarm_plannerPose_planRequestWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["target"], w);
}

function Ros1Xarm_plannerPose_planRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["target"] = decoded;
    }
    return value;
}

function Ros1Xarm_plannerPose_planRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        out["target"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 xarm_planner/pose_planResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerPose_planResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Xarm_plannerPose_planResponseSize(Ros1Xarm_plannerPose_planResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerPose_planResponseCapture(value), n = Ros1Xarm_plannerPose_planResponseSize(owned), w = new Writer(n);
        Ros1Xarm_plannerPose_planResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerPose_planResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerPose_planResponseSize(value)
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

function Ros1Xarm_plannerPose_planResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_plannerPose_planResponseRead(r)
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

function Ros1Xarm_plannerPose_planResponseCapture(value)
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

/** Complete ROS1 xarm_planner/single_straight_planRequest codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerSingle_straight_planRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"target" : Ros1Geometry_msgsPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Xarm_plannerSingle_straight_planRequestSize(Ros1Xarm_plannerSingle_straight_planRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerSingle_straight_planRequestCapture(value), n = Ros1Xarm_plannerSingle_straight_planRequestSize(owned), w = new Writer(n);
        Ros1Xarm_plannerSingle_straight_planRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerSingle_straight_planRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerSingle_straight_planRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["target"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Xarm_plannerSingle_straight_planRequestWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["target"], w);
}

function Ros1Xarm_plannerSingle_straight_planRequestRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["target"] = decoded;
    }
    return value;
}

function Ros1Xarm_plannerSingle_straight_planRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["target"];
        out["target"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 xarm_planner/single_straight_planResponse codec; maxima are not actual lengths. */
export const Ros1Xarm_plannerSingle_straight_planResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"success" : false};
    },
    validateValue(value) {
        Ros1Xarm_plannerSingle_straight_planResponseSize(Ros1Xarm_plannerSingle_straight_planResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Xarm_plannerSingle_straight_planResponseCapture(value), n = Ros1Xarm_plannerSingle_straight_planResponseSize(owned),
              w = new Writer(n);
        Ros1Xarm_plannerSingle_straight_planResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Xarm_plannerSingle_straight_planResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Xarm_plannerSingle_straight_planResponseSize(value)
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

function Ros1Xarm_plannerSingle_straight_planResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["success"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Xarm_plannerSingle_straight_planResponseRead(r)
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

function Ros1Xarm_plannerSingle_straight_planResponseCapture(value)
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
