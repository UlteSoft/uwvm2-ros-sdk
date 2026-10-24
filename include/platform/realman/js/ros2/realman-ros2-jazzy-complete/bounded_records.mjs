/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original realman/ros2_jazzy canonical value domain.
 * @details The selected domain contains 80 complete record/components and 339 original fields. Declared
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

/** Complete ROS2 rm_ros_interfaces/msg/Alohastate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgAlohastateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"io1_state" : 0, "io2_state" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgAlohastateSize(Ros2Rm_ros_interfacesMsgAlohastateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgAlohastateCapture(value), n = Ros2Rm_ros_interfacesMsgAlohastateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgAlohastateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgAlohastateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgAlohastateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["io1_state"], 2, true);
    n = addSize(n, 2);
    integer(value["io2_state"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgAlohastateWrite(value, w)
{
    w.v.setInt16(w.at, value["io1_state"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["io2_state"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgAlohastateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io1_state"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["io2_state"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgAlohastateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["io1_state"];
        out["io1_state"] = field;
    }
    {
        const field = value["io2_state"];
        out["io2_state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armcurrentstatus codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmcurrentstatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"arm_current_status" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmcurrentstatusSize(Ros2Rm_ros_interfacesMsgArmcurrentstatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmcurrentstatusCapture(value), n = Ros2Rm_ros_interfacesMsgArmcurrentstatusSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmcurrentstatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmcurrentstatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmcurrentstatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["arm_current_status"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmcurrentstatusWrite(value, w)
{
    w.v.setUint16(w.at, value["arm_current_status"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgArmcurrentstatusRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["arm_current_status"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmcurrentstatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["arm_current_status"];
        out["arm_current_status"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armoriginalstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmoriginalstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c",
    maxWireBytes : 96,
    minWireBytes : 32,
    cartesianMaxWireBytes : 96n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "pose" : Array.from({length : 6}, () => (0)), "err" : 0, "err_len" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmoriginalstateSize(Ros2Rm_ros_interfacesMsgArmoriginalstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmoriginalstateCapture(value), n = Ros2Rm_ros_interfacesMsgArmoriginalstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmoriginalstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 96, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmoriginalstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmoriginalstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
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
    integer(value["err"], 2, false);
    n = addSize(n, 2);
    integer(value["err_len"], 1, false);
    n = addSize(n, 1);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 96)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmoriginalstateWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint16(w.at, value["err"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["err_len"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgArmoriginalstateRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
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
        const decoded = r.v.getUint16(r.take(2), true);
        value["err"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["err_len"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmoriginalstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
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
        const field = value["err"];
        out["err"] = field;
    }
    {
        const field = value["err_len"];
        out["err_len"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Softwarebuildinfo codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc",
    maxWireBytes : 520,
    minWireBytes : 8,
    cartesianMaxWireBytes : 520n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"build_time" : "", "version" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(value), n = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 520, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["build_time"], 256).length);
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 520)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value, w)
{
    w.text(value["build_time"], 256);
    w.text(value["version"], 256);
}

function Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["build_time"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["build_time"];
        out["build_time"] = field;
    }
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armsoftversion codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmsoftversionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c",
    maxWireBytes : 4421,
    minWireBytes : 69,
    cartesianMaxWireBytes : 4421n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "product_version" : "",
            "controller_version" : "",
            "algorithm_info" : "",
            "ctrl_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "dynamic_info" : "",
            "plan_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "com_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "program_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "state" : false,
            "planversion" : "",
            "ctrlversion" : "",
            "kernal1" : "",
            "kernal2" : "",
            "productversion" : ""
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmsoftversionSize(Ros2Rm_ros_interfacesMsgArmsoftversionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmsoftversionCapture(value), n = Ros2Rm_ros_interfacesMsgArmsoftversionSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmsoftversionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4421, 90);
        if(owned.length < 69)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmsoftversionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmsoftversionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["controller_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, 4 + textBytes(value["dynamic_info"], 256).length);
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["plan_info"]));
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["com_info"]));
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["program_info"]));
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["planversion"], 256).length);
    n = addSize(n, 4 + textBytes(value["ctrlversion"], 256).length);
    n = addSize(n, 4 + textBytes(value["kernal1"], 256).length);
    n = addSize(n, 4 + textBytes(value["kernal2"], 256).length);
    n = addSize(n, 4 + textBytes(value["productversion"], 256).length);
    if(n > 4421)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionWrite(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["controller_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["ctrl_info"], w);
    w.text(value["dynamic_info"], 256);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["plan_info"], w);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["com_info"], w);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["program_info"], w);
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
    w.text(value["planversion"], 256);
    w.text(value["ctrlversion"], 256);
    w.text(value["kernal1"], 256);
    w.text(value["kernal2"], 256);
    w.text(value["productversion"], 256);
}

function Ros2Rm_ros_interfacesMsgArmsoftversionRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["product_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["controller_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["algorithm_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["dynamic_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["plan_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["com_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["program_info"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    {
        const decoded = r.text(256);
        value["planversion"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ctrlversion"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["kernal1"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["kernal2"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["productversion"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["product_version"];
        out["product_version"] = field;
    }
    {
        const field = value["controller_version"];
        out["controller_version"] = field;
    }
    {
        const field = value["algorithm_info"];
        out["algorithm_info"] = field;
    }
    {
        const field = value["ctrl_info"];
        out["ctrl_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["dynamic_info"];
        out["dynamic_info"] = field;
    }
    {
        const field = value["plan_info"];
        out["plan_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["com_info"];
        out["com_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["program_info"];
        out["program_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["planversion"];
        out["planversion"] = field;
    }
    {
        const field = value["ctrlversion"];
        out["ctrlversion"] = field;
    }
    {
        const field = value["kernal1"];
        out["kernal1"] = field;
    }
    {
        const field = value["kernal2"];
        out["kernal2"] = field;
    }
    {
        const field = value["productversion"];
        out["productversion"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armsoftversionv3 codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmsoftversionv3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b",
    maxWireBytes : 2080,
    minWireBytes : 32,
    cartesianMaxWireBytes : 2080n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "product_version" : "",
            "controller_version" : "",
            "algorithm_info" : "",
            "ctrl_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "dynamic_info" : "",
            "plan_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmsoftversionv3Size(Ros2Rm_ros_interfacesMsgArmsoftversionv3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmsoftversionv3Capture(value), n = Ros2Rm_ros_interfacesMsgArmsoftversionv3Size(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmsoftversionv3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2080, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmsoftversionv3Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmsoftversionv3Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["controller_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, 4 + textBytes(value["dynamic_info"], 256).length);
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["plan_info"]));
    if(n > 2080)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv3Write(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["controller_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["ctrl_info"], w);
    w.text(value["dynamic_info"], 256);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["plan_info"], w);
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv3Read(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["product_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["controller_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["algorithm_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["dynamic_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["plan_info"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv3Capture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["product_version"];
        out["product_version"] = field;
    }
    {
        const field = value["controller_version"];
        out["controller_version"] = field;
    }
    {
        const field = value["algorithm_info"];
        out["algorithm_info"] = field;
    }
    {
        const field = value["ctrl_info"];
        out["ctrl_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["dynamic_info"];
        out["dynamic_info"] = field;
    }
    {
        const field = value["plan_info"];
        out["plan_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armsoftversionv4 codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmsoftversionv4Codec = Object.freeze({
    codecIdentity : "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d",
    maxWireBytes : 2340,
    minWireBytes : 36,
    cartesianMaxWireBytes : 2340n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "product_version" : "",
            "controller_version" : "",
            "algorithm_info" : "",
            "ctrl_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "com_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue(),
            "program_info" : Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmsoftversionv4Size(Ros2Rm_ros_interfacesMsgArmsoftversionv4Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmsoftversionv4Capture(value), n = Ros2Rm_ros_interfacesMsgArmsoftversionv4Size(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmsoftversionv4Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2340, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmsoftversionv4Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmsoftversionv4Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["controller_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["com_info"]));
    n = addSize(n, Ros2Rm_ros_interfacesMsgSoftwarebuildinfoSize(value["program_info"]));
    if(n > 2340)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv4Write(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["controller_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["ctrl_info"], w);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["com_info"], w);
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfoWrite(value["program_info"], w);
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv4Read(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["product_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["controller_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["algorithm_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["com_info"] = decoded;
    }
    {
        const decoded = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoRead(r);
        value["program_info"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmsoftversionv4Capture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["product_version"];
        out["product_version"] = field;
    }
    {
        const field = value["controller_version"];
        out["controller_version"] = field;
    }
    {
        const field = value["algorithm_info"];
        out["algorithm_info"] = field;
    }
    {
        const field = value["ctrl_info"];
        out["ctrl_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["com_info"];
        out["com_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["program_info"];
        out["program_info"] = Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCapture(field);
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Armstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgArmstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7",
    maxWireBytes : 128,
    minWireBytes : 64,
    cartesianMaxWireBytes : 128n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "err" : 0, "err_len" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgArmstateSize(Ros2Rm_ros_interfacesMsgArmstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgArmstateCapture(value), n = Ros2Rm_ros_interfacesMsgArmstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgArmstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 128, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgArmstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgArmstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    integer(value["err"], 2, false);
    n = addSize(n, 2);
    integer(value["err_len"], 1, false);
    n = addSize(n, 1);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 128)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgArmstateWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint16(w.at, value["err"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["err_len"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgArmstateRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["err"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["err_len"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgArmstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["err"];
        out["err"] = field;
    }
    {
        const field = value["err_len"];
        out["err_len"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Cartepos codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgCarteposCodec = Object.freeze({
    codecIdentity : "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13",
    maxWireBytes : 57,
    minWireBytes : 57,
    cartesianMaxWireBytes : 57n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "follow" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgCarteposSize(Ros2Rm_ros_interfacesMsgCarteposCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgCarteposCapture(value), n = Ros2Rm_ros_interfacesMsgCarteposSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgCarteposWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 57, 90);
        if(owned.length < 57)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgCarteposRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgCarteposSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 57)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgCarteposWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgCarteposRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgCarteposCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Carteposcustom codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgCarteposcustomCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c",
    maxWireBytes : 59,
    minWireBytes : 59,
    cartesianMaxWireBytes : 59n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "follow" : false, "trajectory_mode" : 0, "radio" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgCarteposcustomSize(Ros2Rm_ros_interfacesMsgCarteposcustomCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgCarteposcustomCapture(value), n = Ros2Rm_ros_interfacesMsgCarteposcustomSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgCarteposcustomWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 59, 90);
        if(owned.length < 59)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgCarteposcustomRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgCarteposcustomSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["trajectory_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["radio"], 1, false);
    n = addSize(n, 1);
    if(n > 59)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgCarteposcustomWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["radio"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgCarteposcustomRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["radio"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgCarteposcustomCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    {
        const field = value["trajectory_mode"];
        out["trajectory_mode"] = field;
    }
    {
        const field = value["radio"];
        out["radio"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Expandpos codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgExpandposCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c",
    maxWireBytes : 7,
    minWireBytes : 7,
    cartesianMaxWireBytes : 7n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "speed" : 0, "block" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgExpandposSize(Ros2Rm_ros_interfacesMsgExpandposCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgExpandposCapture(value), n = Ros2Rm_ros_interfacesMsgExpandposSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgExpandposWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 7, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgExpandposRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgExpandposSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 4, true);
    n = addSize(n, 4);
    integer(value["speed"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 7)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgExpandposWrite(value, w)
{
    w.v.setInt32(w.at, value["pos"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgExpandposRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgExpandposCapture(value)
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
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Expandstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgExpandstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "current" : 0, "err_flag" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgExpandstateSize(Ros2Rm_ros_interfacesMsgExpandstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgExpandstateCapture(value), n = Ros2Rm_ros_interfacesMsgExpandstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgExpandstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgExpandstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgExpandstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 4, true);
    n = addSize(n, 4);
    integer(value["current"], 4, true);
    n = addSize(n, 4);
    integer(value["err_flag"], 2, false);
    n = addSize(n, 2);
    integer(value["mode"], 2, true);
    n = addSize(n, 2);
    if(n > 12)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgExpandstateWrite(value, w)
{
    w.v.setInt32(w.at, value["pos"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["current"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["err_flag"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mode"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgExpandstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["err_flag"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgExpandstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["err_flag"];
        out["err_flag"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Flowchartrunstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgFlowchartrunstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f",
    maxWireBytes : 525,
    minWireBytes : 13,
    cartesianMaxWireBytes : 525n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"run_state" : 0, "id" : 0, "name" : "", "plan_speed" : 0, "step_mode" : 0, "modal_id" : "", "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgFlowchartrunstateSize(Ros2Rm_ros_interfacesMsgFlowchartrunstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgFlowchartrunstateCapture(value), n = Ros2Rm_ros_interfacesMsgFlowchartrunstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgFlowchartrunstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 525, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgFlowchartrunstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgFlowchartrunstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["run_state"], 1, false);
    n = addSize(n, 1);
    integer(value["id"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    integer(value["plan_speed"], 1, false);
    n = addSize(n, 1);
    integer(value["step_mode"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["modal_id"], 256).length);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 525)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgFlowchartrunstateWrite(value, w)
{
    w.v.setUint8(w.at, value["run_state"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["id"], true);
    w.at += 1;
    w.text(value["name"], 256);
    w.v.setUint8(w.at, value["plan_speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["step_mode"], true);
    w.at += 1;
    w.text(value["modal_id"], 256);
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgFlowchartrunstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["run_state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["plan_speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["step_mode"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["modal_id"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgFlowchartrunstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["run_state"];
        out["run_state"] = field;
    }
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["plan_speed"];
        out["plan_speed"] = field;
    }
    {
        const field = value["step_mode"];
        out["step_mode"] = field;
    }
    {
        const field = value["modal_id"];
        out["modal_id"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Force_Position_State codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgForce_Position_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7",
    maxWireBytes : 30,
    minWireBytes : 30,
    cartesianMaxWireBytes : 30n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : Array.from({length : 6}, () => (0)), "force" : 0, "arm_err" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgForce_Position_StateSize(Ros2Rm_ros_interfacesMsgForce_Position_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgForce_Position_StateCapture(value), n = Ros2Rm_ros_interfacesMsgForce_Position_StateSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgForce_Position_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 30, 90);
        if(owned.length < 30)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgForce_Position_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgForce_Position_StateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length !== 6)
        bad();
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["force"] !== "number" || !Number.isFinite(value["force"]) || !Number.isFinite(Math.fround(value["force"])))
        bad();
    n = addSize(n, 4);
    integer(value["arm_err"], 2, false);
    n = addSize(n, 2);
    if(n > 30)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgForce_Position_StateWrite(value, w)
{
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["force"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["arm_err"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgForce_Position_StateRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["arm_err"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgForce_Position_StateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["arm_err"];
        out["arm_err"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Forcepositionmove codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgForcepositionmoveCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224",
    maxWireBytes : 185,
    minWireBytes : 121,
    cartesianMaxWireBytes : 185n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "joint" : [],
            "flag" : 0,
            "sensor" : 0,
            "mode" : 0,
            "control_mode" : Array.from({length : 6}, () => (0)),
            "follow" : false,
            "desired_force" : Array.from({length : 6}, () => (0)),
            "limit_vel" : Array.from({length : 6}, () => (0)),
            "trajectory_mode" : 0,
            "radio" : 0
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgForcepositionmoveSize(Ros2Rm_ros_interfacesMsgForcepositionmoveCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgForcepositionmoveCapture(value), n = Ros2Rm_ros_interfacesMsgForcepositionmoveSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgForcepositionmoveWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 185, 90);
        if(owned.length < 121)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgForcepositionmoveRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgForcepositionmoveSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    integer(value["flag"], 1, false);
    n = addSize(n, 1);
    integer(value["sensor"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["control_mode"]) || value["control_mode"].length !== 6)
        bad();
    for(const element of value["control_mode"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["desired_force"]) || value["desired_force"].length !== 6)
        bad();
    for(const element of value["desired_force"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["limit_vel"]) || value["limit_vel"].length !== 6)
        bad();
    for(const element of value["limit_vel"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    integer(value["trajectory_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["radio"], 2, false);
    n = addSize(n, 2);
    if(n > 185)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["flag"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    for(const element of value["control_mode"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    for(const element of value["desired_force"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["limit_vel"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint16(w.at, value["radio"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["flag"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["sensor"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["control_mode"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["control_mode"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["desired_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["desired_force"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["limit_vel"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["limit_vel"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["radio"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["flag"];
        out["flag"] = field;
    }
    {
        const field = value["sensor"];
        out["sensor"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["control_mode"];
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
        out["control_mode"] = values;
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    {
        const field = value["desired_force"];
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
        out["desired_force"] = values;
    }
    {
        const field = value["limit_vel"];
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
        out["limit_vel"] = values;
    }
    {
        const field = value["trajectory_mode"];
        out["trajectory_mode"] = field;
    }
    {
        const field = value["radio"];
        out["radio"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Forcepositionmovejoint codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgForcepositionmovejointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed",
    maxWireBytes : 78,
    minWireBytes : 14,
    cartesianMaxWireBytes : 78n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "sensor" : 0, "mode" : 0, "dir" : 0, "force" : 0, "follow" : false, "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgForcepositionmovejointSize(Ros2Rm_ros_interfacesMsgForcepositionmovejointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgForcepositionmovejointCapture(value), n = Ros2Rm_ros_interfacesMsgForcepositionmovejointSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgForcepositionmovejointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 78, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgForcepositionmovejointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgForcepositionmovejointSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    integer(value["sensor"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["dir"], 2, true);
    n = addSize(n, 2);
    if(typeof value["force"] !== "number" || !Number.isFinite(value["force"]) || !Number.isFinite(Math.fround(value["force"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 78)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgForcepositionmovejointWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["dir"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["force"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgForcepositionmovejointRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["sensor"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["dir"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgForcepositionmovejointCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["sensor"];
        out["sensor"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["dir"];
        out["dir"] = field;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Forcepositionmovepose codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgForcepositionmoveposeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3",
    maxWireBytes : 62,
    minWireBytes : 62,
    cartesianMaxWireBytes : 62n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "sensor" : 0, "mode" : 0, "dir" : 0, "force" : 0, "follow" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgForcepositionmoveposeSize(Ros2Rm_ros_interfacesMsgForcepositionmoveposeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgForcepositionmoveposeCapture(value), n = Ros2Rm_ros_interfacesMsgForcepositionmoveposeSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgForcepositionmoveposeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 62, 90);
        if(owned.length < 62)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgForcepositionmoveposeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgForcepositionmoveposeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    integer(value["sensor"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["dir"], 1, false);
    n = addSize(n, 1);
    integer(value["force"], 2, true);
    n = addSize(n, 2);
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 62)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveposeWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["dir"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["force"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveposeRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["sensor"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dir"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgForcepositionmoveposeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["sensor"];
        out["sensor"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["dir"];
        out["dir"] = field;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/GetArmState_Command codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGetArmState_CommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGetArmState_CommandSize(Ros2Rm_ros_interfacesMsgGetArmState_CommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGetArmState_CommandCapture(value), n = Ros2Rm_ros_interfacesMsgGetArmState_CommandSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGetArmState_CommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGetArmState_CommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGetArmState_CommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGetArmState_CommandWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros2Rm_ros_interfacesMsgGetArmState_CommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGetArmState_CommandCapture(value)
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

/** Complete ROS2 rm_ros_interfaces/msg/Getallframe codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGetallframeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef",
    maxWireBytes : 2600,
    minWireBytes : 40,
    cartesianMaxWireBytes : 2600n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"frame_name" : Array.from({length : 10}, () => (""))};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGetallframeSize(Ros2Rm_ros_interfacesMsgGetallframeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGetallframeCapture(value), n = Ros2Rm_ros_interfacesMsgGetallframeSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGetallframeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2600, 90);
        if(owned.length < 40)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGetallframeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGetallframeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["frame_name"]) || value["frame_name"].length !== 10)
        bad();
    for(const element of value["frame_name"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 2600)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGetallframeWrite(value, w)
{
    for(const element of value["frame_name"])
    {
        w.text(element, 256);
    }
}

function Ros2Rm_ros_interfacesMsgGetallframeRead(r)
{
    const value = {};
    {
        {
            const count = 10;
            if(count > 10)
                bad();
            value["frame_name"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["frame_name"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGetallframeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["frame_name"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 10)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["frame_name"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Getmodbustcpmasterlist codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "vague_search" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistSize(Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCapture(value), n = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["page_num"], 4, true);
    n = addSize(n, 4);
    integer(value["page_size"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["vague_search"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistWrite(value, w)
{
    w.v.setInt32(w.at, value["page_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["page_size"], true);
    w.at += 4;
    w.text(value["vague_search"], 256);
}

function Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_num"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_size"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["vague_search"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["page_num"];
        out["page_num"] = field;
    }
    {
        const field = value["page_size"];
        out["page_size"] = field;
    }
    {
        const field = value["vague_search"];
        out["vague_search"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Gettrajectorylist codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGettrajectorylistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "vague_search" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGettrajectorylistSize(Ros2Rm_ros_interfacesMsgGettrajectorylistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGettrajectorylistCapture(value), n = Ros2Rm_ros_interfacesMsgGettrajectorylistSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGettrajectorylistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGettrajectorylistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGettrajectorylistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["page_num"], 4, true);
    n = addSize(n, 4);
    integer(value["page_size"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["vague_search"], 256).length);
    if(n > 268)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGettrajectorylistWrite(value, w)
{
    w.v.setInt32(w.at, value["page_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["page_size"], true);
    w.at += 4;
    w.text(value["vague_search"], 256);
}

function Ros2Rm_ros_interfacesMsgGettrajectorylistRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_num"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_size"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["vague_search"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGettrajectorylistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["page_num"];
        out["page_num"] = field;
    }
    {
        const field = value["page_size"];
        out["page_size"] = field;
    }
    {
        const field = value["vague_search"];
        out["vague_search"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Gripperpick codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGripperpickCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2",
    maxWireBytes : 7,
    minWireBytes : 7,
    cartesianMaxWireBytes : 7n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0, "force" : 0, "block" : false, "timeout" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGripperpickSize(Ros2Rm_ros_interfacesMsgGripperpickCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGripperpickCapture(value), n = Ros2Rm_ros_interfacesMsgGripperpickSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGripperpickWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 7, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGripperpickRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGripperpickSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 2, false);
    n = addSize(n, 2);
    integer(value["force"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["timeout"], 2, false);
    n = addSize(n, 2);
    if(n > 7)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGripperpickWrite(value, w)
{
    w.v.setUint16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["force"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["timeout"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgGripperpickRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGripperpickCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Gripperset codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgGrippersetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : 0, "block" : false, "timeout" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgGrippersetSize(Ros2Rm_ros_interfacesMsgGrippersetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgGrippersetCapture(value), n = Ros2Rm_ros_interfacesMsgGrippersetSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgGrippersetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgGrippersetRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgGrippersetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["position"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["timeout"], 2, false);
    n = addSize(n, 2);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgGrippersetWrite(value, w)
{
    w.v.setUint16(w.at, value["position"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["timeout"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgGrippersetRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["position"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgGrippersetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handangle codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandangleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_angle" : Array.from({length : 6}, () => (0)), "block" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandangleSize(Ros2Rm_ros_interfacesMsgHandangleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandangleCapture(value), n = Ros2Rm_ros_interfacesMsgHandangleSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandangleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandangleRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandangleSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["hand_angle"]) || value["hand_angle"].length !== 6)
        bad();
    for(const element of value["hand_angle"])
    {
        integer(element, 2, true);
        n = addSize(n, 2);
    }
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 13)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandangleWrite(value, w)
{
    for(const element of value["hand_angle"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgHandangleRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["hand_angle"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt16(r.take(2), true);
                value["hand_angle"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandangleCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_angle"];
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
        out["hand_angle"] = values;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handforce codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandforceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_force" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandforceSize(Ros2Rm_ros_interfacesMsgHandforceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandforceCapture(value), n = Ros2Rm_ros_interfacesMsgHandforceSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandforceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandforceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandforceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["hand_force"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandforceWrite(value, w)
{
    w.v.setUint16(w.at, value["hand_force"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgHandforceRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["hand_force"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandforceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_force"];
        out["hand_force"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handposture codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandpostureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"posture_num" : 0, "block" : false, "timeout" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandpostureSize(Ros2Rm_ros_interfacesMsgHandpostureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandpostureCapture(value), n = Ros2Rm_ros_interfacesMsgHandpostureSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandpostureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandpostureRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandpostureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["posture_num"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["timeout"], 2, false);
    n = addSize(n, 2);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandpostureWrite(value, w)
{
    w.v.setUint16(w.at, value["posture_num"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["timeout"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgHandpostureRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["posture_num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandpostureCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["posture_num"];
        out["posture_num"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handseq codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandseqCodec = Object.freeze({
    codecIdentity : "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"seq_num" : 0, "block" : false, "timeout" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandseqSize(Ros2Rm_ros_interfacesMsgHandseqCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandseqCapture(value), n = Ros2Rm_ros_interfacesMsgHandseqSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandseqWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandseqRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandseqSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["seq_num"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["timeout"], 2, false);
    n = addSize(n, 2);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandseqWrite(value, w)
{
    w.v.setUint16(w.at, value["seq_num"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["timeout"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgHandseqRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["seq_num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["timeout"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandseqCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["seq_num"];
        out["seq_num"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handspeed codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandspeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_speed" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandspeedSize(Ros2Rm_ros_interfacesMsgHandspeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandspeedCapture(value), n = Ros2Rm_ros_interfacesMsgHandspeedSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandspeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandspeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandspeedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["hand_speed"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandspeedWrite(value, w)
{
    w.v.setUint16(w.at, value["hand_speed"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgHandspeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["hand_speed"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandspeedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_speed"];
        out["hand_speed"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Handstatus codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgHandstatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3",
    maxWireBytes : 50,
    minWireBytes : 50,
    cartesianMaxWireBytes : 50n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "hand_angle" : Array.from({length : 6}, () => (0)),
            "hand_pos" : Array.from({length : 6}, () => (0)),
            "hand_state" : Array.from({length : 6}, () => (0)),
            "hand_force" : Array.from({length : 6}, () => (0)),
            "hand_err" : 0
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgHandstatusSize(Ros2Rm_ros_interfacesMsgHandstatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgHandstatusCapture(value), n = Ros2Rm_ros_interfacesMsgHandstatusSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgHandstatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgHandstatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgHandstatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["hand_angle"]) || value["hand_angle"].length !== 6)
        bad();
    for(const element of value["hand_angle"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["hand_pos"]) || value["hand_pos"].length !== 6)
        bad();
    for(const element of value["hand_pos"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["hand_state"]) || value["hand_state"].length !== 6)
        bad();
    for(const element of value["hand_state"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(!Array.isArray(value["hand_force"]) || value["hand_force"].length !== 6)
        bad();
    for(const element of value["hand_force"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    integer(value["hand_err"], 2, false);
    n = addSize(n, 2);
    if(n > 50)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgHandstatusWrite(value, w)
{
    for(const element of value["hand_angle"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["hand_pos"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["hand_state"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    for(const element of value["hand_force"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint16(w.at, value["hand_err"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgHandstatusRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["hand_angle"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["hand_angle"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["hand_pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["hand_pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["hand_state"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["hand_state"].push(decoded);
            }
        }
    }
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["hand_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["hand_force"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["hand_err"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgHandstatusCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_angle"];
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
        out["hand_angle"] = values;
    }
    {
        const field = value["hand_pos"];
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
        out["hand_pos"] = values;
    }
    {
        const field = value["hand_state"];
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
        out["hand_state"] = values;
    }
    {
        const field = value["hand_force"];
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
        out["hand_force"] = values;
    }
    {
        const field = value["hand_err"];
        out["hand_err"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointcurrent codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointcurrentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_current" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointcurrentSize(Ros2Rm_ros_interfacesMsgJointcurrentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointcurrentCapture(value), n = Ros2Rm_ros_interfacesMsgJointcurrentSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointcurrentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointcurrentRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointcurrentSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_current"]) || value["joint_current"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_current"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointcurrentWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_current"].length, true);
    w.at += 4;
    for(const element of value["joint_current"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgJointcurrentRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_current"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_current"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointcurrentCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_current"];
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
        out["joint_current"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointenflag codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointenflagCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187",
    maxWireBytes : 20,
    minWireBytes : 4,
    cartesianMaxWireBytes : 20n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_en_flag" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointenflagSize(Ros2Rm_ros_interfacesMsgJointenflagCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointenflagCapture(value), n = Ros2Rm_ros_interfacesMsgJointenflagSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointenflagWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 20, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointenflagRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointenflagSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_en_flag"]) || value["joint_en_flag"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_en_flag"])
    {
        if(typeof element !== "boolean")
            bad();
        n = addSize(n, 1);
    }
    if(n > 20)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointenflagWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_en_flag"].length, true);
    w.at += 4;
    for(const element of value["joint_en_flag"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
}

function Ros2Rm_ros_interfacesMsgJointenflagRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_en_flag"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                if(decoded > 1)
                    bad();
                value["joint_en_flag"].push(decoded !== 0);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointenflagCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_en_flag"];
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
        out["joint_en_flag"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointerrclear codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointerrclearCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_num" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointerrclearSize(Ros2Rm_ros_interfacesMsgJointerrclearCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointerrclearCapture(value), n = Ros2Rm_ros_interfacesMsgJointerrclearSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointerrclearWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointerrclearRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointerrclearSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["joint_num"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointerrclearWrite(value, w)
{
    w.v.setUint8(w.at, value["joint_num"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointerrclearRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["joint_num"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointerrclearCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_num"];
        out["joint_num"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointerrorcode codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointerrorcodeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b",
    maxWireBytes : 37,
    minWireBytes : 5,
    cartesianMaxWireBytes : 37n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_error" : [], "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointerrorcodeSize(Ros2Rm_ros_interfacesMsgJointerrorcodeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointerrorcodeCapture(value), n = Ros2Rm_ros_interfacesMsgJointerrorcodeSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointerrorcodeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 37, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointerrorcodeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointerrorcodeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_error"]) || value["joint_error"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_error"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 37)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointerrorcodeWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_error"].length, true);
    w.at += 4;
    for(const element of value["joint_error"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointerrorcodeRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_error"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["joint_error"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointerrorcodeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_error"];
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
        out["joint_error"] = values;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointpos codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointposCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9",
    maxWireBytes : 74,
    minWireBytes : 10,
    cartesianMaxWireBytes : 74n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "follow" : false, "expand" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointposSize(Ros2Rm_ros_interfacesMsgJointposCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointposCapture(value), n = Ros2Rm_ros_interfacesMsgJointposSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointposWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 74, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointposRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointposSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["expand"] !== "number" || !Number.isFinite(value["expand"]) || !Number.isFinite(Math.fround(value["expand"])))
        bad();
    n = addSize(n, 4);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 74)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointposWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["expand"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointposRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["expand"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointposCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    {
        const field = value["expand"];
        out["expand"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointposcustom codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointposcustomCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128",
    maxWireBytes : 76,
    minWireBytes : 12,
    cartesianMaxWireBytes : 76n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "follow" : false, "expand" : 0, "dof" : 0, "trajectory_mode" : 0, "radio" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointposcustomSize(Ros2Rm_ros_interfacesMsgJointposcustomCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointposcustomCapture(value), n = Ros2Rm_ros_interfacesMsgJointposcustomSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointposcustomWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 76, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointposcustomRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointposcustomSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["expand"] !== "number" || !Number.isFinite(value["expand"]) || !Number.isFinite(Math.fround(value["expand"])))
        bad();
    n = addSize(n, 4);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    integer(value["trajectory_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["radio"], 1, false);
    n = addSize(n, 1);
    if(n > 76)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointposcustomWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setFloat32(w.at, value["expand"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["radio"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointposcustomRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["follow"] = decoded !== 0;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["expand"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["radio"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointposcustomCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["follow"];
        out["follow"] = field;
    }
    {
        const field = value["expand"];
        out["expand"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    {
        const field = value["trajectory_mode"];
        out["trajectory_mode"] = field;
    }
    {
        const field = value["radio"];
        out["radio"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointposeeuler codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointposeeulerCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"euler" : Array.from({length : 3}, () => (0)), "position" : Array.from({length : 3}, () => (0))};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointposeeulerSize(Ros2Rm_ros_interfacesMsgJointposeeulerCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointposeeulerCapture(value), n = Ros2Rm_ros_interfacesMsgJointposeeulerSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointposeeulerWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointposeeulerRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointposeeulerSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["euler"]) || value["euler"].length !== 3)
        bad();
    for(const element of value["euler"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["position"]) || value["position"].length !== 3)
        bad();
    for(const element of value["position"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointposeeulerWrite(value, w)
{
    for(const element of value["euler"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["position"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgJointposeeulerRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["euler"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["euler"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["position"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointposeeulerCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["euler"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["euler"] = values;
    }
    {
        const field = value["position"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 3)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["position"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointspeed codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointspeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_speed" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointspeedSize(Ros2Rm_ros_interfacesMsgJointspeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointspeedCapture(value), n = Ros2Rm_ros_interfacesMsgJointspeedSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointspeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointspeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointspeedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_speed"]) || value["joint_speed"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_speed"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointspeedWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_speed"].length, true);
    w.at += 4;
    for(const element of value["joint_speed"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgJointspeedRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_speed"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_speed"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointspeedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_speed"];
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
        out["joint_speed"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointteach codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointteachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"num" : 0, "direction" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointteachSize(Ros2Rm_ros_interfacesMsgJointteachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointteachCapture(value), n = Ros2Rm_ros_interfacesMsgJointteachSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointteachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointteachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointteachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["num"], 1, false);
    n = addSize(n, 1);
    integer(value["direction"], 1, false);
    n = addSize(n, 1);
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    if(n > 3)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointteachWrite(value, w)
{
    w.v.setUint8(w.at, value["num"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["direction"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointteachRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointteachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointtemperature codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointtemperatureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_temperature" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointtemperatureSize(Ros2Rm_ros_interfacesMsgJointtemperatureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointtemperatureCapture(value), n = Ros2Rm_ros_interfacesMsgJointtemperatureSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointtemperatureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointtemperatureRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointtemperatureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_temperature"]) || value["joint_temperature"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_temperature"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointtemperatureWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_temperature"].length, true);
    w.at += 4;
    for(const element of value["joint_temperature"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgJointtemperatureRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_temperature"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_temperature"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointtemperatureCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_temperature"];
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
        out["joint_temperature"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointversion codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointversionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962",
    maxWireBytes : 4165,
    minWireBytes : 5,
    cartesianMaxWireBytes : 4165n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_version" : [], "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointversionSize(Ros2Rm_ros_interfacesMsgJointversionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointversionCapture(value), n = Ros2Rm_ros_interfacesMsgJointversionSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointversionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4165, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointversionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointversionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_version"]) || value["joint_version"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_version"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 4165)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointversionWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_version"].length, true);
    w.at += 4;
    for(const element of value["joint_version"])
    {
        w.text(element, 256);
    }
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgJointversionRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_version"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_version"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointversionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_version"];
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
        out["joint_version"] = values;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Jointvoltage codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgJointvoltageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_voltage" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgJointvoltageSize(Ros2Rm_ros_interfacesMsgJointvoltageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgJointvoltageCapture(value), n = Ros2Rm_ros_interfacesMsgJointvoltageSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgJointvoltageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgJointvoltageRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgJointvoltageSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_voltage"]) || value["joint_voltage"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_voltage"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(n > 68)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgJointvoltageWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_voltage"].length, true);
    w.at += 4;
    for(const element of value["joint_voltage"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgJointvoltageRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_voltage"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_voltage"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgJointvoltageCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_voltage"];
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
        out["joint_voltage"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Liftheight codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgLiftheightCodec = Object.freeze({
    codecIdentity : "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"height" : 0, "speed" : 0, "block" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgLiftheightSize(Ros2Rm_ros_interfacesMsgLiftheightCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgLiftheightCapture(value), n = Ros2Rm_ros_interfacesMsgLiftheightSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgLiftheightWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgLiftheightRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgLiftheightSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["height"], 2, false);
    n = addSize(n, 2);
    integer(value["speed"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgLiftheightWrite(value, w)
{
    w.v.setUint16(w.at, value["height"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgLiftheightRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgLiftheightCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Liftspeed codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgLiftspeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgLiftspeedSize(Ros2Rm_ros_interfacesMsgLiftspeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgLiftspeedCapture(value), n = Ros2Rm_ros_interfacesMsgLiftspeedSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgLiftspeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgLiftspeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgLiftspeedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 2, true);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgLiftspeedWrite(value, w)
{
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgLiftspeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgLiftspeedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Liftstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgLiftstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"height" : 0, "current" : 0, "err_flag" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgLiftstateSize(Ros2Rm_ros_interfacesMsgLiftstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgLiftstateCapture(value), n = Ros2Rm_ros_interfacesMsgLiftstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgLiftstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgLiftstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgLiftstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["height"], 2, true);
    n = addSize(n, 2);
    integer(value["current"], 2, true);
    n = addSize(n, 2);
    integer(value["err_flag"], 2, false);
    n = addSize(n, 2);
    integer(value["mode"], 2, true);
    n = addSize(n, 2);
    if(n > 8)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgLiftstateWrite(value, w)
{
    w.v.setInt16(w.at, value["height"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["current"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["err_flag"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["mode"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgLiftstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["err_flag"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgLiftstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["err_flag"];
        out["err_flag"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Mastername codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMasternameCodec = Object.freeze({
    codecIdentity : "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMasternameSize(Ros2Rm_ros_interfacesMsgMasternameCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMasternameCapture(value), n = Ros2Rm_ros_interfacesMsgMasternameSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMasternameWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMasternameRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMasternameSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMasternameWrite(value, w)
{
    w.text(value["master_name"], 256);
}

function Ros2Rm_ros_interfacesMsgMasternameRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMasternameCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbusreaddata codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbusreaddataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4",
    maxWireBytes : 69,
    minWireBytes : 5,
    cartesianMaxWireBytes : 69n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"read_data" : [], "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbusreaddataSize(Ros2Rm_ros_interfacesMsgModbusreaddataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbusreaddataCapture(value), n = Ros2Rm_ros_interfacesMsgModbusreaddataSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbusreaddataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 69, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbusreaddataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbusreaddataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["read_data"]) || value["read_data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["read_data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 69)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbusreaddataWrite(value, w)
{
    w.v.setUint32(w.at, value["read_data"].length, true);
    w.at += 4;
    for(const element of value["read_data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgModbusreaddataRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["read_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["read_data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbusreaddataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["read_data"];
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
        out["read_data"] = values;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbusrtureadparams codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbusrtureadparamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "device" : 0, "type" : 0, "num" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbusrtureadparamsSize(Ros2Rm_ros_interfacesMsgModbusrtureadparamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbusrtureadparamsCapture(value), n = Ros2Rm_ros_interfacesMsgModbusrtureadparamsSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbusrtureadparamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbusrtureadparamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbusrtureadparamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbusrtureadparamsWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
}

function Ros2Rm_ros_interfacesMsgModbusrtureadparamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["device"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["num"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbusrtureadparamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbusrtuwriteparams codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18",
    maxWireBytes : 84,
    minWireBytes : 20,
    cartesianMaxWireBytes : 84n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "device" : 0, "type" : 0, "num" : 0, "data" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsSize(Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCapture(value), n = Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 84, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 84)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["device"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["num"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterinfo codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa",
    maxWireBytes : 525,
    minWireBytes : 13,
    cartesianMaxWireBytes : 525n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : "", "ip" : "", "port" : 0, "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbustcpmasterinfoSize(Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCapture(value), n = Ros2Rm_ros_interfacesMsgModbustcpmasterinfoSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbustcpmasterinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 525, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbustcpmasterinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbustcpmasterinfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 525)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterinfoWrite(value, w)
{
    w.text(value["master_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterinfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterlist codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbustcpmasterlistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1",
    maxWireBytes : 8668,
    minWireBytes : 12,
    cartesianMaxWireBytes : 8668n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "total_size" : 0, "vague_search" : "", "master_list" : [], "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbustcpmasterlistSize(Ros2Rm_ros_interfacesMsgModbustcpmasterlistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbustcpmasterlistCapture(value), n = Ros2Rm_ros_interfacesMsgModbustcpmasterlistSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbustcpmasterlistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8668, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbustcpmasterlistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbustcpmasterlistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["page_num"], 1, false);
    n = addSize(n, 1);
    integer(value["page_size"], 1, false);
    n = addSize(n, 1);
    integer(value["total_size"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["vague_search"], 256).length);
    if(!Array.isArray(value["master_list"]) || value["master_list"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["master_list"])
    {
        n = addSize(n, Ros2Rm_ros_interfacesMsgModbustcpmasterinfoSize(element));
    }
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 8668)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterlistWrite(value, w)
{
    w.v.setUint8(w.at, value["page_num"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["page_size"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["total_size"], true);
    w.at += 1;
    w.text(value["vague_search"], 256);
    w.v.setUint32(w.at, value["master_list"].length, true);
    w.at += 4;
    for(const element of value["master_list"])
    {
        Ros2Rm_ros_interfacesMsgModbustcpmasterinfoWrite(element, w);
    }
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterlistRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["page_num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["page_size"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["total_size"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["vague_search"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["master_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Rm_ros_interfacesMsgModbustcpmasterinfoRead(r);
                value["master_list"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterlistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["page_num"];
        out["page_num"] = field;
    }
    {
        const field = value["page_size"];
        out["page_size"] = field;
    }
    {
        const field = value["total_size"];
        out["total_size"] = field;
    }
    {
        const field = value["vague_search"];
        out["vague_search"] = field;
    }
    {
        const field = value["master_list"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCapture(element);
        }
        out["master_list"] = values;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterupdata codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad",
    maxWireBytes : 784,
    minWireBytes : 16,
    cartesianMaxWireBytes : 784n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : "", "new_master_name" : "", "ip" : "", "port" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbustcpmasterupdataSize(Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCapture(value), n = Ros2Rm_ros_interfacesMsgModbustcpmasterupdataSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbustcpmasterupdataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 784, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbustcpmasterupdataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbustcpmasterupdataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["new_master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    if(n > 784)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterupdataWrite(value, w)
{
    w.text(value["master_name"], 256);
    w.text(value["new_master_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterupdataRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["new_master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["new_master_name"];
        out["new_master_name"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbustcpreadparams codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbustcpreadparamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7",
    maxWireBytes : 532,
    minWireBytes : 20,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "master_name" : "", "ip" : "", "port" : 0, "num" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbustcpreadparamsSize(Ros2Rm_ros_interfacesMsgModbustcpreadparamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbustcpreadparamsCapture(value), n = Ros2Rm_ros_interfacesMsgModbustcpreadparamsSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbustcpreadparamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbustcpreadparamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbustcpreadparamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    if(n > 532)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbustcpreadparamsWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.text(value["master_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
}

function Ros2Rm_ros_interfacesMsgModbustcpreadparamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["num"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbustcpreadparamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Modbustcpwriteparams codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b",
    maxWireBytes : 600,
    minWireBytes : 24,
    cartesianMaxWireBytes : 600n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "master_name" : "", "ip" : "", "port" : 0, "num" : 0, "data" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgModbustcpwriteparamsSize(Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCapture(value), n = Ros2Rm_ros_interfacesMsgModbustcpwriteparamsSize(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgModbustcpwriteparamsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 600, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgModbustcpwriteparamsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgModbustcpwriteparamsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 600)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgModbustcpwriteparamsWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.text(value["master_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgModbustcpwriteparamsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["num"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["data"];
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
        out["data"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Movec codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMovecCodec = Object.freeze({
    codecIdentity : "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b",
    maxWireBytes : 116,
    minWireBytes : 116,
    cartesianMaxWireBytes : 116n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pose_mid" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "pose_end" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "speed" : 0,
            "trajectory_connect" : 0,
            "block" : false,
            "loop" : 0
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMovecSize(Ros2Rm_ros_interfacesMsgMovecCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMovecCapture(value), n = Ros2Rm_ros_interfacesMsgMovecSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMovecWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 116, 90);
        if(owned.length < 116)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMovecRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMovecSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose_mid"]));
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose_end"]));
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["loop"], 1, false);
    n = addSize(n, 1);
    if(n > 116)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMovecWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose_mid"], w);
    Ros2Geometry_msgsMsgPoseWrite(value["pose_end"], w);
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["loop"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgMovecRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose_mid"] = decoded;
    }
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose_end"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["loop"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMovecCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose_mid"];
        out["pose_mid"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["pose_end"];
        out["pose_end"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["loop"];
        out["loop"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Movej codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMovejCodec = Object.freeze({
    codecIdentity : "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "speed" : 0, "block" : false, "trajectory_connect" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMovejSize(Ros2Rm_ros_interfacesMsgMovejCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMovejCapture(value), n = Ros2Rm_ros_interfacesMsgMovejSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMovejWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMovejRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMovejSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 72)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMovejWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgMovejRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMovejCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint"];
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
        out["joint"] = values;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Movejp codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMovejpCodec = Object.freeze({
    codecIdentity : "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72",
    maxWireBytes : 59,
    minWireBytes : 59,
    cartesianMaxWireBytes : 59n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "speed" : 0, "trajectory_connect" : 0, "block" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMovejpSize(Ros2Rm_ros_interfacesMsgMovejpCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMovejpCapture(value), n = Ros2Rm_ros_interfacesMsgMovejpSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMovejpWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 59, 90);
        if(owned.length < 59)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMovejpRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMovejpSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 59)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMovejpWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgMovejpRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMovejpCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Movel codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMovelCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8",
    maxWireBytes : 59,
    minWireBytes : 59,
    cartesianMaxWireBytes : 59n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(), "speed" : 0, "trajectory_connect" : 0, "block" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMovelSize(Ros2Rm_ros_interfacesMsgMovelCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMovelCapture(value), n = Ros2Rm_ros_interfacesMsgMovelSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMovelWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 59, 90);
        if(owned.length < 59)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMovelRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMovelSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 59)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMovelWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgMovelRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMovelCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Moveloffset codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgMoveloffsetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493",
    maxWireBytes : 67,
    minWireBytes : 67,
    cartesianMaxWireBytes : 67n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pose" : Ros2Geometry_msgsMsgPoseCodec.defaultValue(),
            "speed" : 0,
            "r" : 0,
            "trajectory_connect" : false,
            "frame_type" : false,
            "block" : false
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgMoveloffsetSize(Ros2Rm_ros_interfacesMsgMoveloffsetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgMoveloffsetCapture(value), n = Ros2Rm_ros_interfacesMsgMoveloffsetSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgMoveloffsetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 67, 90);
        if(owned.length < 67)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgMoveloffsetRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgMoveloffsetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros2Geometry_msgsMsgPoseSize(value["pose"]));
    integer(value["speed"], 4, true);
    n = addSize(n, 4);
    integer(value["r"], 4, true);
    n = addSize(n, 4);
    if(typeof value["trajectory_connect"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["frame_type"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 67)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgMoveloffsetWrite(value, w)
{
    Ros2Geometry_msgsMsgPoseWrite(value["pose"], w);
    w.v.setInt32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["r"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["trajectory_connect"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["frame_type"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgMoveloffsetRead(r)
{
    const value = {};
    {
        const decoded = Ros2Geometry_msgsMsgPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["r"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["trajectory_connect"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["frame_type"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["block"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgMoveloffsetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = Ros2Geometry_msgsMsgPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["r"];
        out["r"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["frame_type"];
        out["frame_type"] = field;
    }
    {
        const field = value["block"];
        out["block"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Ortteach codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgOrtteachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"type" : 0, "direction" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgOrtteachSize(Ros2Rm_ros_interfacesMsgOrtteachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgOrtteachCapture(value), n = Ros2Rm_ros_interfacesMsgOrtteachSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgOrtteachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgOrtteachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgOrtteachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    integer(value["direction"], 1, false);
    n = addSize(n, 1);
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    if(n > 3)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgOrtteachWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["direction"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgOrtteachRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgOrtteachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Posteach codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgPosteachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"type" : 0, "direction" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgPosteachSize(Ros2Rm_ros_interfacesMsgPosteachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgPosteachCapture(value), n = Ros2Rm_ros_interfacesMsgPosteachSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgPosteachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgPosteachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgPosteachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    integer(value["direction"], 1, false);
    n = addSize(n, 1);
    integer(value["speed"], 1, false);
    n = addSize(n, 1);
    if(n > 3)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgPosteachWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["direction"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["speed"], true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgPosteachRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgPosteachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Programrunstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgProgramrunstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964",
    maxWireBytes : 165,
    minWireBytes : 37,
    cartesianMaxWireBytes : 165n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "run_state" : 0,
            "id" : 0,
            "edit_id" : 0,
            "plan_num" : 0,
            "total_loop" : 0,
            "step_mode" : 0,
            "plan_speed" : 0,
            "loop_num" : [],
            "loop_cont" : [],
            "state" : false
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgProgramrunstateSize(Ros2Rm_ros_interfacesMsgProgramrunstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgProgramrunstateCapture(value), n = Ros2Rm_ros_interfacesMsgProgramrunstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgProgramrunstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 165, 90);
        if(owned.length < 37)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgProgramrunstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgProgramrunstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["run_state"], 4, true);
    n = addSize(n, 4);
    integer(value["id"], 4, true);
    n = addSize(n, 4);
    integer(value["edit_id"], 4, true);
    n = addSize(n, 4);
    integer(value["plan_num"], 4, true);
    n = addSize(n, 4);
    integer(value["total_loop"], 4, true);
    n = addSize(n, 4);
    integer(value["step_mode"], 4, true);
    n = addSize(n, 4);
    integer(value["plan_speed"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["loop_num"]) || value["loop_num"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["loop_num"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["loop_cont"]) || value["loop_cont"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["loop_cont"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 165)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgProgramrunstateWrite(value, w)
{
    w.v.setInt32(w.at, value["run_state"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["edit_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["plan_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["total_loop"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["step_mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["plan_speed"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["loop_num"].length, true);
    w.at += 4;
    for(const element of value["loop_num"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["loop_cont"].length, true);
    w.at += 4;
    for(const element of value["loop_cont"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgProgramrunstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["run_state"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["edit_id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["plan_num"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["total_loop"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["step_mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["plan_speed"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["loop_num"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["loop_num"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["loop_cont"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["loop_cont"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgProgramrunstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["run_state"];
        out["run_state"] = field;
    }
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["edit_id"];
        out["edit_id"] = field;
    }
    {
        const field = value["plan_num"];
        out["plan_num"] = field;
    }
    {
        const field = value["total_loop"];
        out["total_loop"] = field;
    }
    {
        const field = value["step_mode"];
        out["step_mode"] = field;
    }
    {
        const field = value["plan_speed"];
        out["plan_speed"] = field;
    }
    {
        const field = value["loop_num"];
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
        out["loop_num"] = values;
    }
    {
        const field = value["loop_cont"];
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
        out["loop_cont"] = values;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/RS485params codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRS485paramsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "baudrate" : 0, "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRS485paramsSize(Ros2Rm_ros_interfacesMsgRS485paramsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRS485paramsCapture(value), n = Ros2Rm_ros_interfacesMsgRS485paramsSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRS485paramsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRS485paramsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRS485paramsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 4, true);
    n = addSize(n, 4);
    integer(value["baudrate"], 4, true);
    n = addSize(n, 4);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 9)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRS485paramsWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["baudrate"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgRS485paramsRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["baudrate"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRS485paramsCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["baudrate"];
        out["baudrate"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Rmerr codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRmerrCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b",
    maxWireBytes : 69,
    minWireBytes : 5,
    cartesianMaxWireBytes : 69n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"err_len" : 0, "err" : []};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRmerrSize(Ros2Rm_ros_interfacesMsgRmerrCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRmerrCapture(value), n = Ros2Rm_ros_interfacesMsgRmerrSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRmerrWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 69, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRmerrRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRmerrSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["err_len"], 1, false);
    n = addSize(n, 1);
    if(!Array.isArray(value["err"]) || value["err"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["err"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 69)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRmerrWrite(value, w)
{
    w.v.setUint8(w.at, value["err_len"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["err"].length, true);
    w.at += 4;
    for(const element of value["err"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgRmerrRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["err_len"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["err"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRmerrCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["err_len"];
        out["err_len"] = field;
    }
    {
        const field = value["err"];
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
        out["err"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Rmplusbase codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRmplusbaseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6",
    maxWireBytes : 1437,
    minWireBytes : 413,
    cartesianMaxWireBytes : 1437n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "manu" : "",
            "type" : 0,
            "hv" : "",
            "sv" : "",
            "bv" : "",
            "id" : 0,
            "dof" : 0,
            "check" : 0,
            "bee" : 0,
            "force" : false,
            "touch" : false,
            "touch_num" : 0,
            "touch_sw" : 0,
            "hand" : 0,
            "pos_up" : Array.from({length : 12}, () => (0)),
            "pos_low" : Array.from({length : 12}, () => (0)),
            "angle_up" : Array.from({length : 12}, () => (0)),
            "angle_low" : Array.from({length : 12}, () => (0)),
            "speed_up" : Array.from({length : 12}, () => (0)),
            "speed_low" : Array.from({length : 12}, () => (0)),
            "force_up" : Array.from({length : 12}, () => (0)),
            "force_low" : Array.from({length : 12}, () => (0))
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRmplusbaseSize(Ros2Rm_ros_interfacesMsgRmplusbaseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRmplusbaseCapture(value), n = Ros2Rm_ros_interfacesMsgRmplusbaseSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRmplusbaseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1437, 90);
        if(owned.length < 413)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRmplusbaseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRmplusbaseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["manu"], 256).length);
    integer(value["type"], 1, true);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["hv"], 256).length);
    n = addSize(n, 4 + textBytes(value["sv"], 256).length);
    n = addSize(n, 4 + textBytes(value["bv"], 256).length);
    integer(value["id"], 4, true);
    n = addSize(n, 4);
    integer(value["dof"], 1, true);
    n = addSize(n, 1);
    integer(value["check"], 1, true);
    n = addSize(n, 1);
    integer(value["bee"], 1, true);
    n = addSize(n, 1);
    if(typeof value["force"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["touch"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["touch_num"], 1, true);
    n = addSize(n, 1);
    integer(value["touch_sw"], 1, true);
    n = addSize(n, 1);
    integer(value["hand"], 1, true);
    n = addSize(n, 1);
    if(!Array.isArray(value["pos_up"]) || value["pos_up"].length !== 12)
        bad();
    for(const element of value["pos_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pos_low"]) || value["pos_low"].length !== 12)
        bad();
    for(const element of value["pos_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle_up"]) || value["angle_up"].length !== 12)
        bad();
    for(const element of value["angle_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle_low"]) || value["angle_low"].length !== 12)
        bad();
    for(const element of value["angle_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed_up"]) || value["speed_up"].length !== 12)
        bad();
    for(const element of value["speed_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed_low"]) || value["speed_low"].length !== 12)
        bad();
    for(const element of value["speed_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force_up"]) || value["force_up"].length !== 12)
        bad();
    for(const element of value["force_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force_low"]) || value["force_low"].length !== 12)
        bad();
    for(const element of value["force_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 1437)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRmplusbaseWrite(value, w)
{
    w.text(value["manu"], 256);
    w.v.setInt8(w.at, value["type"], true);
    w.at += 1;
    w.text(value["hv"], 256);
    w.text(value["sv"], 256);
    w.text(value["bv"], 256);
    w.v.setInt32(w.at, value["id"], true);
    w.at += 4;
    w.v.setInt8(w.at, value["dof"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["check"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["bee"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["force"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["touch"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt8(w.at, value["touch_num"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["touch_sw"], true);
    w.at += 1;
    w.v.setInt8(w.at, value["hand"], true);
    w.at += 1;
    for(const element of value["pos_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["pos_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["angle_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["angle_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["speed_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["speed_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["force_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["force_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgRmplusbaseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["manu"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["hv"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["sv"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["bv"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["id"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["dof"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["check"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["bee"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["force"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["touch"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["touch_num"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["touch_sw"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["hand"] = decoded;
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["pos_up"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["pos_up"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["pos_low"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["pos_low"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["angle_up"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["angle_up"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["angle_low"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["angle_low"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["speed_up"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["speed_up"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["speed_low"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["speed_low"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["force_up"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["force_up"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["force_low"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["force_low"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRmplusbaseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["manu"];
        out["manu"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["hv"];
        out["hv"] = field;
    }
    {
        const field = value["sv"];
        out["sv"] = field;
    }
    {
        const field = value["bv"];
        out["bv"] = field;
    }
    {
        const field = value["id"];
        out["id"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    {
        const field = value["check"];
        out["check"] = field;
    }
    {
        const field = value["bee"];
        out["bee"] = field;
    }
    {
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["touch"];
        out["touch"] = field;
    }
    {
        const field = value["touch_num"];
        out["touch_num"] = field;
    }
    {
        const field = value["touch_sw"];
        out["touch_sw"] = field;
    }
    {
        const field = value["hand"];
        out["hand"] = field;
    }
    {
        const field = value["pos_up"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos_up"] = values;
    }
    {
        const field = value["pos_low"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos_low"] = values;
    }
    {
        const field = value["angle_up"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["angle_up"] = values;
    }
    {
        const field = value["angle_low"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["angle_low"] = values;
    }
    {
        const field = value["speed_up"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["speed_up"] = values;
    }
    {
        const field = value["speed_low"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["speed_low"] = values;
    }
    {
        const field = value["force_up"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["force_up"] = values;
    }
    {
        const field = value["force_low"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["force_low"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Rmplusstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRmplusstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1",
    maxWireBytes : 724,
    minWireBytes : 724,
    cartesianMaxWireBytes : 724n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "sys_state" : 0,
            "dof_state" : Array.from({length : 12}, () => (0)),
            "dof_err" : Array.from({length : 12}, () => (0)),
            "pos" : Array.from({length : 12}, () => (0)),
            "speed" : Array.from({length : 12}, () => (0)),
            "angle" : Array.from({length : 12}, () => (0)),
            "current" : Array.from({length : 12}, () => (0)),
            "normal_force" : Array.from({length : 18}, () => (0)),
            "tangential_force" : Array.from({length : 18}, () => (0)),
            "tangential_force_dir" : Array.from({length : 18}, () => (0)),
            "tsa" : Array.from({length : 12}, () => (0)),
            "tma" : Array.from({length : 12}, () => (0)),
            "touch_data" : Array.from({length : 18}, () => (0)),
            "force" : Array.from({length : 12}, () => (0))
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRmplusstateSize(Ros2Rm_ros_interfacesMsgRmplusstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRmplusstateCapture(value), n = Ros2Rm_ros_interfacesMsgRmplusstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRmplusstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 724, 90);
        if(owned.length < 724)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRmplusstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRmplusstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sys_state"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["dof_state"]) || value["dof_state"].length !== 12)
        bad();
    for(const element of value["dof_state"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["dof_err"]) || value["dof_err"].length !== 12)
        bad();
    for(const element of value["dof_err"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pos"]) || value["pos"].length !== 12)
        bad();
    for(const element of value["pos"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed"]) || value["speed"].length !== 12)
        bad();
    for(const element of value["speed"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle"]) || value["angle"].length !== 12)
        bad();
    for(const element of value["angle"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["current"]) || value["current"].length !== 12)
        bad();
    for(const element of value["current"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["normal_force"]) || value["normal_force"].length !== 18)
        bad();
    for(const element of value["normal_force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tangential_force"]) || value["tangential_force"].length !== 18)
        bad();
    for(const element of value["tangential_force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tangential_force_dir"]) || value["tangential_force_dir"].length !== 18)
        bad();
    for(const element of value["tangential_force_dir"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tsa"]) || value["tsa"].length !== 12)
        bad();
    for(const element of value["tsa"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tma"]) || value["tma"].length !== 12)
        bad();
    for(const element of value["tma"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["touch_data"]) || value["touch_data"].length !== 18)
        bad();
    for(const element of value["touch_data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force"]) || value["force"].length !== 12)
        bad();
    for(const element of value["force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 724)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRmplusstateWrite(value, w)
{
    w.v.setInt32(w.at, value["sys_state"], true);
    w.at += 4;
    for(const element of value["dof_state"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["dof_err"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["pos"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["speed"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["angle"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["current"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["normal_force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["tangential_force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["tangential_force_dir"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["tsa"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["tma"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["touch_data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros2Rm_ros_interfacesMsgRmplusstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sys_state"] = decoded;
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["dof_state"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["dof_state"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["dof_err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["dof_err"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["pos"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["pos"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["speed"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["speed"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["angle"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["angle"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["current"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["current"].push(decoded);
            }
        }
    }
    {
        {
            const count = 18;
            if(count > 18)
                bad();
            value["normal_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["normal_force"].push(decoded);
            }
        }
    }
    {
        {
            const count = 18;
            if(count > 18)
                bad();
            value["tangential_force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["tangential_force"].push(decoded);
            }
        }
    }
    {
        {
            const count = 18;
            if(count > 18)
                bad();
            value["tangential_force_dir"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["tangential_force_dir"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["tsa"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["tsa"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["tma"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint32(r.take(4), true);
                value["tma"].push(decoded);
            }
        }
    }
    {
        {
            const count = 18;
            if(count > 18)
                bad();
            value["touch_data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["touch_data"].push(decoded);
            }
        }
    }
    {
        {
            const count = 12;
            if(count > 12)
                bad();
            value["force"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["force"].push(decoded);
            }
        }
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRmplusstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sys_state"];
        out["sys_state"] = field;
    }
    {
        const field = value["dof_state"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dof_state"] = values;
    }
    {
        const field = value["dof_err"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["dof_err"] = values;
    }
    {
        const field = value["pos"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["pos"] = values;
    }
    {
        const field = value["speed"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["speed"] = values;
    }
    {
        const field = value["angle"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
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
        const field = value["current"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["current"] = values;
    }
    {
        const field = value["normal_force"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 18)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["normal_force"] = values;
    }
    {
        const field = value["tangential_force"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 18)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tangential_force"] = values;
    }
    {
        const field = value["tangential_force_dir"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 18)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tangential_force_dir"] = values;
    }
    {
        const field = value["tsa"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tsa"] = values;
    }
    {
        const field = value["tma"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["tma"] = values;
    }
    {
        const field = value["touch_data"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 18)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["touch_data"] = values;
    }
    {
        const field = value["force"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count !== 12)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = element;
        }
        out["force"] = values;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Rmversion codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRmversionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"version" : ""};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRmversionSize(Ros2Rm_ros_interfacesMsgRmversionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRmversionCapture(value), n = Ros2Rm_ros_interfacesMsgRmversionSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRmversionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRmversionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRmversionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["version"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRmversionWrite(value, w)
{
    w.text(value["version"], 256);
}

function Ros2Rm_ros_interfacesMsgRmversionRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["version"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRmversionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["version"];
        out["version"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/RobotInfo codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgRobotInfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"arm_dof" : 0, "arm_model" : 0, "force_type" : 0, "robot_controller_version" : 0, "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgRobotInfoSize(Ros2Rm_ros_interfacesMsgRobotInfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgRobotInfoCapture(value), n = Ros2Rm_ros_interfacesMsgRobotInfoSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgRobotInfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgRobotInfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgRobotInfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["arm_dof"], 1, false);
    n = addSize(n, 1);
    integer(value["arm_model"], 1, false);
    n = addSize(n, 1);
    integer(value["force_type"], 1, false);
    n = addSize(n, 1);
    integer(value["robot_controller_version"], 1, false);
    n = addSize(n, 1);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgRobotInfoWrite(value, w)
{
    w.v.setUint8(w.at, value["arm_dof"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["arm_model"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["force_type"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["robot_controller_version"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgRobotInfoRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["arm_dof"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["arm_model"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["force_type"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["robot_controller_version"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgRobotInfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["arm_dof"];
        out["arm_dof"] = field;
    }
    {
        const field = value["arm_model"];
        out["arm_model"] = field;
    }
    {
        const field = value["force_type"];
        out["force_type"] = field;
    }
    {
        const field = value["robot_controller_version"];
        out["robot_controller_version"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Sendproject codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgSendprojectCodec = Object.freeze({
    codecIdentity : "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330",
    maxWireBytes : 288,
    minWireBytes : 32,
    cartesianMaxWireBytes : 288n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "project_path" : "",
            "project_path_len" : 0,
            "plan_speed" : 0,
            "only_save" : 0,
            "save_id" : 0,
            "step_flag" : 0,
            "auto_start" : 0,
            "project_type" : 0
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgSendprojectSize(Ros2Rm_ros_interfacesMsgSendprojectCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgSendprojectCapture(value), n = Ros2Rm_ros_interfacesMsgSendprojectSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgSendprojectWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 288, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgSendprojectRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgSendprojectSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["project_path"], 256).length);
    integer(value["project_path_len"], 4, true);
    n = addSize(n, 4);
    integer(value["plan_speed"], 4, true);
    n = addSize(n, 4);
    integer(value["only_save"], 4, true);
    n = addSize(n, 4);
    integer(value["save_id"], 4, true);
    n = addSize(n, 4);
    integer(value["step_flag"], 4, true);
    n = addSize(n, 4);
    integer(value["auto_start"], 4, true);
    n = addSize(n, 4);
    integer(value["project_type"], 4, true);
    n = addSize(n, 4);
    if(n > 288)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgSendprojectWrite(value, w)
{
    w.text(value["project_path"], 256);
    w.v.setInt32(w.at, value["project_path_len"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["plan_speed"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["only_save"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["save_id"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["step_flag"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["auto_start"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["project_type"], true);
    w.at += 4;
}

function Ros2Rm_ros_interfacesMsgSendprojectRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["project_path"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["project_path_len"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["plan_speed"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["only_save"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["save_id"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["step_flag"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["auto_start"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["project_type"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgSendprojectCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["project_path"];
        out["project_path"] = field;
    }
    {
        const field = value["project_path_len"];
        out["project_path_len"] = field;
    }
    {
        const field = value["plan_speed"];
        out["plan_speed"] = field;
    }
    {
        const field = value["only_save"];
        out["only_save"] = field;
    }
    {
        const field = value["save_id"];
        out["save_id"] = field;
    }
    {
        const field = value["step_flag"];
        out["step_flag"] = field;
    }
    {
        const field = value["auto_start"];
        out["auto_start"] = field;
    }
    {
        const field = value["project_type"];
        out["project_type"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Setforceposition codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgSetforcepositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sensor" : 0, "mode" : 0, "direction" : 0, "n" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgSetforcepositionSize(Ros2Rm_ros_interfacesMsgSetforcepositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgSetforcepositionCapture(value), n = Ros2Rm_ros_interfacesMsgSetforcepositionSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgSetforcepositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgSetforcepositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgSetforcepositionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sensor"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["direction"], 1, false);
    n = addSize(n, 1);
    integer(value["n"], 2, true);
    n = addSize(n, 2);
    if(n > 5)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgSetforcepositionWrite(value, w)
{
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["direction"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["n"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgSetforcepositionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["sensor"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["n"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgSetforcepositionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sensor"];
        out["sensor"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["n"];
        out["n"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Setrealtimepush codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgSetrealtimepushCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368",
    maxWireBytes : 274,
    minWireBytes : 18,
    cartesianMaxWireBytes : 274n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "cycle" : 0,
            "port" : 0,
            "force_coordinate" : 0,
            "ip" : "",
            "aloha_state_enable" : false,
            "arm_current_status_enable" : false,
            "expand_state_enable" : false,
            "hand_enable" : false,
            "joint_speed_enable" : false,
            "lift_state_enable" : false,
            "plus_base_enable" : false,
            "plus_state_enable" : false
        };
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgSetrealtimepushSize(Ros2Rm_ros_interfacesMsgSetrealtimepushCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgSetrealtimepushCapture(value), n = Ros2Rm_ros_interfacesMsgSetrealtimepushSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgSetrealtimepushWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 274, 90);
        if(owned.length < 18)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgSetrealtimepushRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgSetrealtimepushSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["cycle"], 2, false);
    n = addSize(n, 2);
    integer(value["port"], 2, false);
    n = addSize(n, 2);
    integer(value["force_coordinate"], 2, false);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    if(typeof value["aloha_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["arm_current_status_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["expand_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["hand_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["joint_speed_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["lift_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["plus_base_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["plus_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 274)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgSetrealtimepushWrite(value, w)
{
    w.v.setUint16(w.at, value["cycle"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["port"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["force_coordinate"], true);
    w.at += 2;
    w.text(value["ip"], 256);
    w.v.setUint8(w.at, value["aloha_state_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["arm_current_status_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["expand_state_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["hand_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["joint_speed_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["lift_state_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["plus_base_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["plus_state_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgSetrealtimepushRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["cycle"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["force_coordinate"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["aloha_state_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["arm_current_status_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["expand_state_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["hand_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["joint_speed_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["lift_state_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["plus_base_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["plus_state_enable"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgSetrealtimepushCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["cycle"];
        out["cycle"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["force_coordinate"];
        out["force_coordinate"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["aloha_state_enable"];
        out["aloha_state_enable"] = field;
    }
    {
        const field = value["arm_current_status_enable"];
        out["arm_current_status_enable"] = field;
    }
    {
        const field = value["expand_state_enable"];
        out["expand_state_enable"] = field;
    }
    {
        const field = value["hand_enable"];
        out["hand_enable"] = field;
    }
    {
        const field = value["joint_speed_enable"];
        out["joint_speed_enable"] = field;
    }
    {
        const field = value["lift_state_enable"];
        out["lift_state_enable"] = field;
    }
    {
        const field = value["plus_base_enable"];
        out["plus_base_enable"] = field;
    }
    {
        const field = value["plus_state_enable"];
        out["plus_state_enable"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Sixforce codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgSixforceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force_fx" : 0, "force_fy" : 0, "force_fz" : 0, "force_mx" : 0, "force_my" : 0, "force_mz" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgSixforceSize(Ros2Rm_ros_interfacesMsgSixforceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgSixforceCapture(value), n = Ros2Rm_ros_interfacesMsgSixforceSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgSixforceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgSixforceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgSixforceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["force_fx"] !== "number" || !Number.isFinite(value["force_fx"]) || !Number.isFinite(Math.fround(value["force_fx"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_fy"] !== "number" || !Number.isFinite(value["force_fy"]) || !Number.isFinite(Math.fround(value["force_fy"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_fz"] !== "number" || !Number.isFinite(value["force_fz"]) || !Number.isFinite(Math.fround(value["force_fz"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_mx"] !== "number" || !Number.isFinite(value["force_mx"]) || !Number.isFinite(Math.fround(value["force_mx"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_my"] !== "number" || !Number.isFinite(value["force_my"]) || !Number.isFinite(Math.fround(value["force_my"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_mz"] !== "number" || !Number.isFinite(value["force_mz"]) || !Number.isFinite(Math.fround(value["force_mz"])))
        bad();
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgSixforceWrite(value, w)
{
    w.v.setFloat32(w.at, value["force_fx"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_fy"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_fz"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_mx"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_my"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_mz"], true);
    w.at += 4;
}

function Ros2Rm_ros_interfacesMsgSixforceRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_fx"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_fy"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_fz"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_mx"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_my"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_mz"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgSixforceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force_fx"];
        out["force_fx"] = field;
    }
    {
        const field = value["force_fy"];
        out["force_fy"] = field;
    }
    {
        const field = value["force_fz"];
        out["force_fz"] = field;
    }
    {
        const field = value["force_mx"];
        out["force_mx"] = field;
    }
    {
        const field = value["force_my"];
        out["force_my"] = field;
    }
    {
        const field = value["force_mz"];
        out["force_mz"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Stop codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgStopCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgStopSize(Ros2Rm_ros_interfacesMsgStopCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgStopCapture(value), n = Ros2Rm_ros_interfacesMsgStopSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgStopWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgStopRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgStopSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgStopWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgStopRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgStopCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Toolsoftwareversionv4 codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Codec = Object.freeze({
    codecIdentity : "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991",
    maxWireBytes : 261,
    minWireBytes : 5,
    cartesianMaxWireBytes : 261n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"tool_version" : "", "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Size(Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Capture(value), n = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Size(owned),
              w = new Writer(n);
        Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 261, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["tool_version"], 256).length);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 261)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Write(value, w)
{
    w.text(value["tool_version"], 256);
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Read(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["tool_version"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Capture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["tool_version"];
        out["tool_version"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Trajectoryinfo codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgTrajectoryinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1",
    maxWireBytes : 525,
    minWireBytes : 13,
    cartesianMaxWireBytes : 525n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "create_time" : "", "point_num" : 0, "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgTrajectoryinfoSize(Ros2Rm_ros_interfacesMsgTrajectoryinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgTrajectoryinfoCapture(value), n = Ros2Rm_ros_interfacesMsgTrajectoryinfoSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgTrajectoryinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 525, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgTrajectoryinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgTrajectoryinfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    n = addSize(n, 4 + textBytes(value["create_time"], 256).length);
    integer(value["point_num"], 4, true);
    n = addSize(n, 4);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 525)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgTrajectoryinfoWrite(value, w)
{
    w.text(value["name"], 256);
    w.text(value["create_time"], 256);
    w.v.setInt32(w.at, value["point_num"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgTrajectoryinfoRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["create_time"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["point_num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgTrajectoryinfoCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["name"];
        out["name"] = field;
    }
    {
        const field = value["create_time"];
        out["create_time"] = field;
    }
    {
        const field = value["point_num"];
        out["point_num"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Trajectorylist codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgTrajectorylistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f",
    maxWireBytes : 8677,
    minWireBytes : 21,
    cartesianMaxWireBytes : 8677n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "total_size" : 0, "vague_search" : "", "tra_list" : [], "state" : false};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgTrajectorylistSize(Ros2Rm_ros_interfacesMsgTrajectorylistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgTrajectorylistCapture(value), n = Ros2Rm_ros_interfacesMsgTrajectorylistSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgTrajectorylistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8677, 90);
        if(owned.length < 21)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgTrajectorylistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgTrajectorylistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["page_num"], 4, true);
    n = addSize(n, 4);
    integer(value["page_size"], 4, true);
    n = addSize(n, 4);
    integer(value["total_size"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["vague_search"], 256).length);
    if(!Array.isArray(value["tra_list"]) || value["tra_list"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tra_list"])
    {
        n = addSize(n, Ros2Rm_ros_interfacesMsgTrajectoryinfoSize(element));
    }
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 8677)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgTrajectorylistWrite(value, w)
{
    w.v.setInt32(w.at, value["page_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["page_size"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["total_size"], true);
    w.at += 4;
    w.text(value["vague_search"], 256);
    w.v.setUint32(w.at, value["tra_list"].length, true);
    w.at += 4;
    for(const element of value["tra_list"])
    {
        Ros2Rm_ros_interfacesMsgTrajectoryinfoWrite(element, w);
    }
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros2Rm_ros_interfacesMsgTrajectorylistRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_num"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["page_size"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["total_size"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["vague_search"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["tra_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros2Rm_ros_interfacesMsgTrajectoryinfoRead(r);
                value["tra_list"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgTrajectorylistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["page_num"];
        out["page_num"] = field;
    }
    {
        const field = value["page_size"];
        out["page_size"] = field;
    }
    {
        const field = value["total_size"];
        out["total_size"] = field;
    }
    {
        const field = value["vague_search"];
        out["vague_search"] = field;
    }
    {
        const field = value["tra_list"];
        if(!Array.isArray(field))
            bad();
        const count = field.length;
        if(!Number.isInteger(count) || count < 0 || count > 16)
            bad();
        const values = new Array(count);
        for(let i = 0; i < count; ++i)
        {
            const element = field[i];
            values[i] = Ros2Rm_ros_interfacesMsgTrajectoryinfoCapture(element);
        }
        out["tra_list"] = values;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Udpexpandstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgUdpexpandstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5",
    maxWireBytes : 14,
    minWireBytes : 14,
    cartesianMaxWireBytes : 14n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "current" : 0, "err_flag" : 0, "en_flag" : false, "joint_id" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgUdpexpandstateSize(Ros2Rm_ros_interfacesMsgUdpexpandstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgUdpexpandstateCapture(value), n = Ros2Rm_ros_interfacesMsgUdpexpandstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgUdpexpandstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 14, 90);
        if(owned.length < 14)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgUdpexpandstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgUdpexpandstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 4, true);
    n = addSize(n, 4);
    integer(value["current"], 4, true);
    n = addSize(n, 4);
    integer(value["err_flag"], 2, false);
    n = addSize(n, 2);
    if(typeof value["en_flag"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["joint_id"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 2, true);
    n = addSize(n, 2);
    if(n > 14)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgUdpexpandstateWrite(value, w)
{
    w.v.setInt32(w.at, value["pos"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["current"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["err_flag"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["en_flag"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["joint_id"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["mode"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgUdpexpandstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["err_flag"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["en_flag"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["joint_id"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgUdpexpandstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["err_flag"];
        out["err_flag"] = field;
    }
    {
        const field = value["en_flag"];
        out["en_flag"] = field;
    }
    {
        const field = value["joint_id"];
        out["joint_id"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    return out;
}

/** Complete ROS2 rm_ros_interfaces/msg/Udpliftstate codec; maxima are not actual lengths. */
export const Ros2Rm_ros_interfacesMsgUdpliftstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"height" : 0, "pos" : 0, "current" : 0, "en_flag" : false, "err_flag" : 0};
    },
    validateValue(value) {
        Ros2Rm_ros_interfacesMsgUdpliftstateSize(Ros2Rm_ros_interfacesMsgUdpliftstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros2Rm_ros_interfacesMsgUdpliftstateCapture(value), n = Ros2Rm_ros_interfacesMsgUdpliftstateSize(owned), w = new Writer(n);
        Ros2Rm_ros_interfacesMsgUdpliftstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros2Rm_ros_interfacesMsgUdpliftstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros2Rm_ros_interfacesMsgUdpliftstateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["height"], 4, true);
    n = addSize(n, 4);
    if(typeof value["pos"] !== "number" || !Number.isFinite(value["pos"]) || !Number.isFinite(Math.fround(value["pos"])))
        bad();
    n = addSize(n, 4);
    integer(value["current"], 2, true);
    n = addSize(n, 2);
    if(typeof value["en_flag"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["err_flag"], 2, false);
    n = addSize(n, 2);
    if(n > 13)
        bad(90);
    return n;
}

function Ros2Rm_ros_interfacesMsgUdpliftstateWrite(value, w)
{
    w.v.setInt32(w.at, value["height"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["pos"], true);
    w.at += 4;
    w.v.setInt16(w.at, value["current"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["en_flag"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint16(w.at, value["err_flag"], true);
    w.at += 2;
}

function Ros2Rm_ros_interfacesMsgUdpliftstateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["height"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["en_flag"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["err_flag"] = decoded;
    }
    return value;
}

function Ros2Rm_ros_interfacesMsgUdpliftstateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["height"];
        out["height"] = field;
    }
    {
        const field = value["pos"];
        out["pos"] = field;
    }
    {
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["en_flag"];
        out["en_flag"] = field;
    }
    {
        const field = value["err_flag"];
        out["err_flag"] = field;
    }
    return out;
}
