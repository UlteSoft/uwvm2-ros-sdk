/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
 * @details The selected domain contains 29 complete record/components and 67 original fields. Declared
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
    codecIdentity : "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7",
    maxWireBytes : 94,
    minWireBytes : 66,
    cartesianMaxWireBytes : 94n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
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
        const owned = copyRaw(bytes, 94, 90);
        if(owned.length < 66)
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
    if(n > 94)
        bad(90);
    return n;
}

function Ros1Xarm_msgsRobotMsgWrite(value, w)
{
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
