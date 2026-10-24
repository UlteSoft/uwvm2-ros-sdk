/**
 * @file bounded_records.mjs
 * @brief Preserve the complete original realman/ros1_main canonical value domain.
 * @details The selected domain contains 105 complete record/components and 349 original fields. Declared
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

/** Complete ROS1 rm_msgs/ArmState codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArmStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93",
    maxWireBytes : 161,
    minWireBytes : 65,
    cartesianMaxWireBytes : 161n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "err" : [], "dof" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsArmStateSize(Ros1Rm_msgsArmStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArmStateCapture(value), n = Ros1Rm_msgsArmStateSize(owned), w = new Writer(n);
        Ros1Rm_msgsArmStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 161, 90);
        if(owned.length < 65)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArmStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArmStateSize(value)
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
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
    if(!Array.isArray(value["err"]) || value["err"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["err"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 161)
        bad(90);
    return n;
}

function Ros1Rm_msgsArmStateWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
    w.v.setUint32(w.at, value["err"].length, true);
    w.at += 4;
    for(const element of value["err"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros1Rm_msgsArmStateRead(r)
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
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["err"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArmStateCapture(value)
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
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
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
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_Analog_Output codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Analog_OutputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"num" : 0, "voltage" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Analog_OutputSize(Ros1Rm_msgsArm_Analog_OutputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Analog_OutputCapture(value), n = Ros1Rm_msgsArm_Analog_OutputSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Analog_OutputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Analog_OutputRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Analog_OutputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["voltage"] !== "number" || !Number.isFinite(value["voltage"]) || !Number.isFinite(Math.fround(value["voltage"])))
        bad();
    n = addSize(n, 4);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Analog_OutputWrite(value, w)
{
    w.v.setUint8(w.at, value["num"], true);
    w.at += 1;
    w.v.setFloat32(w.at, value["voltage"], true);
    w.at += 4;
}

function Ros1Rm_msgsArm_Analog_OutputRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["voltage"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Analog_OutputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["voltage"];
        out["voltage"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_Current_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Current_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844",
    maxWireBytes : 129,
    minWireBytes : 33,
    cartesianMaxWireBytes : 129n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "Pose" : Array.from({length : 6}, () => (0)), "err" : [], "dof" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Current_StateSize(Ros1Rm_msgsArm_Current_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Current_StateCapture(value), n = Ros1Rm_msgsArm_Current_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Current_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 129, 90);
        if(owned.length < 33)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Current_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Current_StateSize(value)
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
    if(!Array.isArray(value["Pose"]) || value["Pose"].length !== 6)
        bad();
    for(const element of value["Pose"])
    {
        if(typeof element !== "number" || !Number.isFinite(element) || !Number.isFinite(Math.fround(element)))
            bad();
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["err"]) || value["err"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["err"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 129)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Current_StateWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    for(const element of value["Pose"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["err"].length, true);
    w.at += 4;
    for(const element of value["err"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros1Rm_msgsArm_Current_StateRead(r)
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
            value["Pose"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat32(r.take(4), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["Pose"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["err"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Current_StateCapture(value)
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
        const field = value["Pose"];
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
        out["Pose"] = values;
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
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_Current_Status codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Current_StatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"arm_current_status" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Current_StatusSize(Ros1Rm_msgsArm_Current_StatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Current_StatusCapture(value), n = Ros1Rm_msgsArm_Current_StatusSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Current_StatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Current_StatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Current_StatusSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["arm_current_status"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Current_StatusWrite(value, w)
{
    w.text(value["arm_current_status"], 256);
}

function Ros1Rm_msgsArm_Current_StatusRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["arm_current_status"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Current_StatusCapture(value)
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

/** Complete ROS1 rm_msgs/Arm_Digital_Output codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Digital_OutputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"num" : 0, "state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Digital_OutputSize(Ros1Rm_msgsArm_Digital_OutputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Digital_OutputCapture(value), n = Ros1Rm_msgsArm_Digital_OutputSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Digital_OutputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Digital_OutputRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Digital_OutputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Digital_OutputWrite(value, w)
{
    w.v.setUint8(w.at, value["num"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsArm_Digital_OutputRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsArm_Digital_OutputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_IO_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_IO_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Arm_Digital_Input" : Array.from({length : 4}, () => (0))};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_IO_StateSize(Ros1Rm_msgsArm_IO_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_IO_StateCapture(value), n = Ros1Rm_msgsArm_IO_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_IO_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_IO_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_IO_StateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["Arm_Digital_Input"]) || value["Arm_Digital_Input"].length !== 4)
        bad();
    for(const element of value["Arm_Digital_Input"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_IO_StateWrite(value, w)
{
    for(const element of value["Arm_Digital_Input"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Rm_msgsArm_IO_StateRead(r)
{
    const value = {};
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["Arm_Digital_Input"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["Arm_Digital_Input"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsArm_IO_StateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Arm_Digital_Input"];
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
        out["Arm_Digital_Input"] = values;
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

/** Complete ROS1 rm_msgs/Arm_Joint_Speed_Max codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Joint_Speed_MaxCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d",
    maxWireBytes : 4568,
    minWireBytes : 24,
    cartesianMaxWireBytes : 4568n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "name" : [], "max_velocity" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Joint_Speed_MaxSize(Ros1Rm_msgsArm_Joint_Speed_MaxCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Joint_Speed_MaxCapture(value), n = Ros1Rm_msgsArm_Joint_Speed_MaxSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Joint_Speed_MaxWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4568, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Joint_Speed_MaxRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Joint_Speed_MaxSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["name"]) || value["name"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["name"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(!Array.isArray(value["max_velocity"]) || value["max_velocity"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["max_velocity"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 4568)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Joint_Speed_MaxWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["name"].length, true);
    w.at += 4;
    for(const element of value["name"])
    {
        w.text(element, 256);
    }
    w.v.setUint32(w.at, value["max_velocity"].length, true);
    w.at += 4;
    for(const element of value["max_velocity"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Rm_msgsArm_Joint_Speed_MaxRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
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
            if(count > 16)
                bad();
            value["max_velocity"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["max_velocity"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsArm_Joint_Speed_MaxCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["name"];
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
        out["name"] = values;
    }
    {
        const field = value["max_velocity"];
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
        out["max_velocity"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Softwarebuildinfo codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSoftwarebuildinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5",
    maxWireBytes : 520,
    minWireBytes : 8,
    cartesianMaxWireBytes : 520n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"build_time" : "", "version" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsSoftwarebuildinfoSize(Ros1Rm_msgsSoftwarebuildinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSoftwarebuildinfoCapture(value), n = Ros1Rm_msgsSoftwarebuildinfoSize(owned), w = new Writer(n);
        Ros1Rm_msgsSoftwarebuildinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 520, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSoftwarebuildinfoSize(value)
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

function Ros1Rm_msgsSoftwarebuildinfoWrite(value, w)
{
    w.text(value["build_time"], 256);
    w.text(value["version"], 256);
}

function Ros1Rm_msgsSoftwarebuildinfoRead(r)
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

function Ros1Rm_msgsSoftwarebuildinfoCapture(value)
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

/** Complete ROS1 rm_msgs/Arm_Softversion_v3 codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Softversion_v3Codec = Object.freeze({
    codecIdentity : "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394",
    maxWireBytes : 1820,
    minWireBytes : 28,
    cartesianMaxWireBytes : 1820n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "product_version" : "",
            "algorithm_info" : "",
            "ctrl_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "dynamic_info" : "",
            "plan_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Softversion_v3Size(Ros1Rm_msgsArm_Softversion_v3Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Softversion_v3Capture(value), n = Ros1Rm_msgsArm_Softversion_v3Size(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Softversion_v3Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1820, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Softversion_v3Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Softversion_v3Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, 4 + textBytes(value["dynamic_info"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["plan_info"]));
    if(n > 1820)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Softversion_v3Write(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["ctrl_info"], w);
    w.text(value["dynamic_info"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["plan_info"], w);
}

function Ros1Rm_msgsArm_Softversion_v3Read(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["product_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["algorithm_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["dynamic_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["plan_info"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Softversion_v3Capture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["product_version"];
        out["product_version"] = field;
    }
    {
        const field = value["algorithm_info"];
        out["algorithm_info"] = field;
    }
    {
        const field = value["ctrl_info"];
        out["ctrl_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["dynamic_info"];
        out["dynamic_info"] = field;
    }
    {
        const field = value["plan_info"];
        out["plan_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_Softversion_v4 codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Softversion_v4Codec = Object.freeze({
    codecIdentity : "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f",
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
            "ctrl_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "com_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "program_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Softversion_v4Size(Ros1Rm_msgsArm_Softversion_v4Capture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Softversion_v4Capture(value), n = Ros1Rm_msgsArm_Softversion_v4Size(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Softversion_v4Write(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2340, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Softversion_v4Read(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Softversion_v4Size(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["controller_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["com_info"]));
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["program_info"]));
    if(n > 2340)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Softversion_v4Write(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["controller_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["ctrl_info"], w);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["com_info"], w);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["program_info"], w);
}

function Ros1Rm_msgsArm_Softversion_v4Read(r)
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
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["com_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["program_info"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Softversion_v4Capture(value)
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
        out["ctrl_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["com_info"];
        out["com_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["program_info"];
        out["program_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    return out;
}

/** Complete ROS1 rm_msgs/Arm_Software_Version codec; maxima are not actual lengths. */
export const Ros1Rm_msgsArm_Software_VersionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5",
    maxWireBytes : 3120,
    minWireBytes : 48,
    cartesianMaxWireBytes : 3120n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "product_version" : "",
            "algorithm_info" : "",
            "ctrl_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "dynamic_info" : "",
            "plan_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "controller_version" : "",
            "com_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue(),
            "program_info" : Ros1Rm_msgsSoftwarebuildinfoCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Rm_msgsArm_Software_VersionSize(Ros1Rm_msgsArm_Software_VersionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsArm_Software_VersionCapture(value), n = Ros1Rm_msgsArm_Software_VersionSize(owned), w = new Writer(n);
        Ros1Rm_msgsArm_Software_VersionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3120, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsArm_Software_VersionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsArm_Software_VersionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["product_version"], 256).length);
    n = addSize(n, 4 + textBytes(value["algorithm_info"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["ctrl_info"]));
    n = addSize(n, 4 + textBytes(value["dynamic_info"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["plan_info"]));
    n = addSize(n, 4 + textBytes(value["controller_version"], 256).length);
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["com_info"]));
    n = addSize(n, Ros1Rm_msgsSoftwarebuildinfoSize(value["program_info"]));
    if(n > 3120)
        bad(90);
    return n;
}

function Ros1Rm_msgsArm_Software_VersionWrite(value, w)
{
    w.text(value["product_version"], 256);
    w.text(value["algorithm_info"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["ctrl_info"], w);
    w.text(value["dynamic_info"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["plan_info"], w);
    w.text(value["controller_version"], 256);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["com_info"], w);
    Ros1Rm_msgsSoftwarebuildinfoWrite(value["program_info"], w);
}

function Ros1Rm_msgsArm_Software_VersionRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["product_version"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["algorithm_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["ctrl_info"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["dynamic_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["plan_info"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["controller_version"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["com_info"] = decoded;
    }
    {
        const decoded = Ros1Rm_msgsSoftwarebuildinfoRead(r);
        value["program_info"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsArm_Software_VersionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["product_version"];
        out["product_version"] = field;
    }
    {
        const field = value["algorithm_info"];
        out["algorithm_info"] = field;
    }
    {
        const field = value["ctrl_info"];
        out["ctrl_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["dynamic_info"];
        out["dynamic_info"] = field;
    }
    {
        const field = value["plan_info"];
        out["plan_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["controller_version"];
        out["controller_version"] = field;
    }
    {
        const field = value["com_info"];
        out["com_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    {
        const field = value["program_info"];
        out["program_info"] = Ros1Rm_msgsSoftwarebuildinfoCapture(field);
    }
    return out;
}

/** Complete ROS1 rm_msgs/Cabinet codec; maxima are not actual lengths. */
export const Ros1Rm_msgsCabinetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf",
    maxWireBytes : 334,
    minWireBytes : 78,
    cartesianMaxWireBytes : 334n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "label" : 0, "angle" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsCabinetSize(Ros1Rm_msgsCabinetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsCabinetCapture(value), n = Ros1Rm_msgsCabinetSize(owned), w = new Writer(n);
        Ros1Rm_msgsCabinetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 334, 90);
        if(owned.length < 78)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsCabinetRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsCabinetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["pose"]));
    integer(value["label"], 2, true);
    n = addSize(n, 2);
    if(typeof value["angle"] !== "number" || !Number.isFinite(value["angle"]) || !Number.isFinite(Math.fround(value["angle"])))
        bad();
    n = addSize(n, 4);
    if(n > 334)
        bad(90);
    return n;
}

function Ros1Rm_msgsCabinetWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Geometry_msgsPoseWrite(value["pose"], w);
    w.v.setInt16(w.at, value["label"], true);
    w.at += 2;
    w.v.setFloat32(w.at, value["angle"], true);
    w.at += 4;
}

function Ros1Rm_msgsCabinetRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["pose"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["label"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["angle"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsCabinetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["pose"];
        out["pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["label"];
        out["label"] = field;
    }
    {
        const field = value["angle"];
        out["angle"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/CartePos codec; maxima are not actual lengths. */
export const Ros1Rm_msgsCartePosCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Pose" : Ros1Geometry_msgsPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Rm_msgsCartePosSize(Ros1Rm_msgsCartePosCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsCartePosCapture(value), n = Ros1Rm_msgsCartePosSize(owned), w = new Writer(n);
        Ros1Rm_msgsCartePosWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsCartePosRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsCartePosSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Rm_msgsCartePosWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
}

function Ros1Rm_msgsCartePosRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsCartePosCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 rm_msgs/CartePosCustom codec; maxima are not actual lengths. */
export const Ros1Rm_msgsCartePosCustomCodec = Object.freeze({
    codecIdentity : "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c",
    maxWireBytes : 59,
    minWireBytes : 59,
    cartesianMaxWireBytes : 59n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "follow" : false, "trajectory_mode" : 0, "radio" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsCartePosCustomSize(Ros1Rm_msgsCartePosCustomCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsCartePosCustomCapture(value), n = Ros1Rm_msgsCartePosCustomSize(owned), w = new Writer(n);
        Ros1Rm_msgsCartePosCustomWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 59, 90);
        if(owned.length < 59)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsCartePosCustomRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsCartePosCustomSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
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

function Ros1Rm_msgsCartePosCustomWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["radio"], true);
    w.at += 1;
}

function Ros1Rm_msgsCartePosCustomRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
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

function Ros1Rm_msgsCartePosCustomCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
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

/** Complete ROS1 rm_msgs/ChangeTool_Name codec; maxima are not actual lengths. */
export const Ros1Rm_msgsChangeTool_NameCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"toolname" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsChangeTool_NameSize(Ros1Rm_msgsChangeTool_NameCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsChangeTool_NameCapture(value), n = Ros1Rm_msgsChangeTool_NameSize(owned), w = new Writer(n);
        Ros1Rm_msgsChangeTool_NameWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsChangeTool_NameRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsChangeTool_NameSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["toolname"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsChangeTool_NameWrite(value, w)
{
    w.text(value["toolname"], 256);
}

function Ros1Rm_msgsChangeTool_NameRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["toolname"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsChangeTool_NameCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["toolname"];
        out["toolname"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/ChangeTool_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsChangeTool_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsChangeTool_StateSize(Ros1Rm_msgsChangeTool_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsChangeTool_StateCapture(value), n = Ros1Rm_msgsChangeTool_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsChangeTool_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsChangeTool_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsChangeTool_StateSize(value)
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

function Ros1Rm_msgsChangeTool_StateWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsChangeTool_StateRead(r)
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

function Ros1Rm_msgsChangeTool_StateCapture(value)
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

/** Complete ROS1 rm_msgs/ChangeWorkFrame_Name codec; maxima are not actual lengths. */
export const Ros1Rm_msgsChangeWorkFrame_NameCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"WorkFrame_name" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsChangeWorkFrame_NameSize(Ros1Rm_msgsChangeWorkFrame_NameCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsChangeWorkFrame_NameCapture(value), n = Ros1Rm_msgsChangeWorkFrame_NameSize(owned), w = new Writer(n);
        Ros1Rm_msgsChangeWorkFrame_NameWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsChangeWorkFrame_NameRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsChangeWorkFrame_NameSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["WorkFrame_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsChangeWorkFrame_NameWrite(value, w)
{
    w.text(value["WorkFrame_name"], 256);
}

function Ros1Rm_msgsChangeWorkFrame_NameRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["WorkFrame_name"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsChangeWorkFrame_NameCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["WorkFrame_name"];
        out["WorkFrame_name"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/ChangeWorkFrame_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsChangeWorkFrame_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsChangeWorkFrame_StateSize(Ros1Rm_msgsChangeWorkFrame_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsChangeWorkFrame_StateCapture(value), n = Ros1Rm_msgsChangeWorkFrame_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsChangeWorkFrame_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsChangeWorkFrame_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsChangeWorkFrame_StateSize(value)
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

function Ros1Rm_msgsChangeWorkFrame_StateWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsChangeWorkFrame_StateRead(r)
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

function Ros1Rm_msgsChangeWorkFrame_StateCapture(value)
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

/** Complete ROS1 rm_msgs/Err codec; maxima are not actual lengths. */
export const Ros1Rm_msgsErrCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117",
    maxWireBytes : 36,
    minWireBytes : 4,
    cartesianMaxWireBytes : 36n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"err" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsErrSize(Ros1Rm_msgsErrCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsErrCapture(value), n = Ros1Rm_msgsErrSize(owned), w = new Writer(n);
        Ros1Rm_msgsErrWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 36, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsErrRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsErrSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["err"]) || value["err"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["err"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(n > 36)
        bad(90);
    return n;
}

function Ros1Rm_msgsErrWrite(value, w)
{
    w.v.setUint32(w.at, value["err"].length, true);
    w.at += 4;
    for(const element of value["err"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
}

function Ros1Rm_msgsErrRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["err"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["err"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsErrCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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

/** Complete ROS1 rm_msgs/ExpandState codec; maxima are not actual lengths. */
export const Ros1Rm_msgsExpandStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_640f4cf4113a2c38af646bd4b1a112916b795daec1b8c4b4362712ab473d3f1a",
    maxWireBytes : 12,
    minWireBytes : 12,
    cartesianMaxWireBytes : 12n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"get_state" : false, "pos" : 0, "err_flag" : 0, "en_flag" : 0, "current" : 0, "mode" : 0, "joint_id" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsExpandStateSize(Ros1Rm_msgsExpandStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsExpandStateCapture(value), n = Ros1Rm_msgsExpandStateSize(owned), w = new Writer(n);
        Ros1Rm_msgsExpandStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 12, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsExpandStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsExpandStateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["get_state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["pos"], 2, true);
    n = addSize(n, 2);
    integer(value["err_flag"], 2, true);
    n = addSize(n, 2);
    integer(value["en_flag"], 2, false);
    n = addSize(n, 2);
    integer(value["current"], 2, false);
    n = addSize(n, 2);
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    integer(value["joint_id"], 2, false);
    n = addSize(n, 2);
    if(n > 12)
        bad(90);
    return n;
}

function Ros1Rm_msgsExpandStateWrite(value, w)
{
    w.v.setUint8(w.at, value["get_state"] ? 1 : 0, true);
    w.at += 1;
    w.v.setInt16(w.at, value["pos"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["err_flag"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["en_flag"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["current"], true);
    w.at += 2;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setUint16(w.at, value["joint_id"], true);
    w.at += 2;
}

function Ros1Rm_msgsExpandStateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["get_state"] = decoded !== 0;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["pos"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["err_flag"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["en_flag"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["current"] = decoded;
    }
    {
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["joint_id"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsExpandStateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["get_state"];
        out["get_state"] = field;
    }
    {
        const field = value["pos"];
        out["pos"] = field;
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
        const field = value["current"];
        out["current"] = field;
    }
    {
        const field = value["mode"];
        out["mode"] = field;
    }
    {
        const field = value["joint_id"];
        out["joint_id"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Expand_In_Position codec; maxima are not actual lengths. */
export const Ros1Rm_msgsExpand_In_PositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_51acd7ca334e74e4c8ba72027230530ec5b1e63865cc0c35172aa6040969f3b0",
    maxWireBytes : 263,
    minWireBytes : 7,
    cartesianMaxWireBytes : 263n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"device" : 0, "state" : "", "trajectory_connect" : 0, "trajectory_state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsExpand_In_PositionSize(Ros1Rm_msgsExpand_In_PositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsExpand_In_PositionCapture(value), n = Ros1Rm_msgsExpand_In_PositionSize(owned), w = new Writer(n);
        Ros1Rm_msgsExpand_In_PositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 263, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsExpand_In_PositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsExpand_In_PositionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["device"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["state"], 256).length);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(typeof value["trajectory_state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 263)
        bad(90);
    return n;
}

function Ros1Rm_msgsExpand_In_PositionWrite(value, w)
{
    w.v.setUint8(w.at, value["device"], true);
    w.at += 1;
    w.text(value["state"], 256);
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsExpand_In_PositionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["device"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["trajectory_state"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsExpand_In_PositionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["device"];
        out["device"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["trajectory_state"];
        out["trajectory_state"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Expand_Position codec; maxima are not actual lengths. */
export const Ros1Rm_msgsExpand_PositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd07785998b7fd5698c8606538f9ed6b35ae5f0aded4ca768c446dd7d235faed",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pos" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsExpand_PositionSize(Ros1Rm_msgsExpand_PositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsExpand_PositionCapture(value), n = Ros1Rm_msgsExpand_PositionSize(owned), w = new Writer(n);
        Ros1Rm_msgsExpand_PositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsExpand_PositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsExpand_PositionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["pos"], 2, true);
    n = addSize(n, 2);
    integer(value["speed"], 2, true);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsExpand_PositionWrite(value, w)
{
    w.v.setInt16(w.at, value["pos"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
}

function Ros1Rm_msgsExpand_PositionRead(r)
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
    return value;
}

function Ros1Rm_msgsExpand_PositionCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Expand_Speed codec; maxima are not actual lengths. */
export const Ros1Rm_msgsExpand_SpeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_1ec010d530738e2f4f9ba5fe992202886bb3485be97f1e72b5b36ba0f6b5d9d4",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsExpand_SpeedSize(Ros1Rm_msgsExpand_SpeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsExpand_SpeedCapture(value), n = Ros1Rm_msgsExpand_SpeedSize(owned), w = new Writer(n);
        Ros1Rm_msgsExpand_SpeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsExpand_SpeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsExpand_SpeedSize(value)
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

function Ros1Rm_msgsExpand_SpeedWrite(value, w)
{
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
}

function Ros1Rm_msgsExpand_SpeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsExpand_SpeedCapture(value)
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

/** Complete ROS1 rm_msgs/Flowchartrunstate codec; maxima are not actual lengths. */
export const Ros1Rm_msgsFlowchartrunstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030",
    maxWireBytes : 524,
    minWireBytes : 12,
    cartesianMaxWireBytes : 524n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"run_state" : 0, "id" : 0, "name" : "", "plan_speed" : 0, "step_mode" : 0, "modal_id" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsFlowchartrunstateSize(Ros1Rm_msgsFlowchartrunstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsFlowchartrunstateCapture(value), n = Ros1Rm_msgsFlowchartrunstateSize(owned), w = new Writer(n);
        Ros1Rm_msgsFlowchartrunstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 524, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsFlowchartrunstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsFlowchartrunstateSize(value)
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
    if(n > 524)
        bad(90);
    return n;
}

function Ros1Rm_msgsFlowchartrunstateWrite(value, w)
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
}

function Ros1Rm_msgsFlowchartrunstateRead(r)
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
    return value;
}

function Ros1Rm_msgsFlowchartrunstateCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Force_Position_Move_Joint codec; maxima are not actual lengths. */
export const Ros1Rm_msgsForce_Position_Move_JointCodec = Object.freeze({
    codecIdentity : "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39",
    maxWireBytes : 74,
    minWireBytes : 10,
    cartesianMaxWireBytes : 74n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "sensor" : 0, "mode" : 0, "dir" : 0, "force" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsForce_Position_Move_JointSize(Ros1Rm_msgsForce_Position_Move_JointCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsForce_Position_Move_JointCapture(value), n = Ros1Rm_msgsForce_Position_Move_JointSize(owned), w = new Writer(n);
        Ros1Rm_msgsForce_Position_Move_JointWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 74, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsForce_Position_Move_JointRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsForce_Position_Move_JointSize(value)
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
    integer(value["dir"], 1, false);
    n = addSize(n, 1);
    integer(value["force"], 2, true);
    n = addSize(n, 2);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 74)
        bad(90);
    return n;
}

function Ros1Rm_msgsForce_Position_Move_JointWrite(value, w)
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
    w.v.setUint8(w.at, value["dir"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["force"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros1Rm_msgsForce_Position_Move_JointRead(r)
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
        const decoded = r.v.getUint8(r.take(1), true);
        value["dir"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsForce_Position_Move_JointCapture(value)
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
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Force_Position_Move_Pose codec; maxima are not actual lengths. */
export const Ros1Rm_msgsForce_Position_Move_PoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02",
    maxWireBytes : 61,
    minWireBytes : 61,
    cartesianMaxWireBytes : 61n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "sensor" : 0, "mode" : 0, "dir" : 0, "force" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsForce_Position_Move_PoseSize(Ros1Rm_msgsForce_Position_Move_PoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsForce_Position_Move_PoseCapture(value), n = Ros1Rm_msgsForce_Position_Move_PoseSize(owned), w = new Writer(n);
        Ros1Rm_msgsForce_Position_Move_PoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 61, 90);
        if(owned.length < 61)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsForce_Position_Move_PoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsForce_Position_Move_PoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
    integer(value["sensor"], 1, false);
    n = addSize(n, 1);
    integer(value["mode"], 1, false);
    n = addSize(n, 1);
    integer(value["dir"], 1, false);
    n = addSize(n, 1);
    integer(value["force"], 2, true);
    n = addSize(n, 2);
    if(n > 61)
        bad(90);
    return n;
}

function Ros1Rm_msgsForce_Position_Move_PoseWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["dir"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["force"], true);
    w.at += 2;
}

function Ros1Rm_msgsForce_Position_Move_PoseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
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
    return value;
}

function Ros1Rm_msgsForce_Position_Move_PoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
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
    return out;
}

/** Complete ROS1 rm_msgs/Force_Position_Move_Pose_Custom codec; maxima are not actual lengths. */
export const Ros1Rm_msgsForce_Position_Move_Pose_CustomCodec = Object.freeze({
    codecIdentity : "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd",
    maxWireBytes : 64,
    minWireBytes : 64,
    cartesianMaxWireBytes : 64n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "sensor" : 0,
            "mode" : 0,
            "dir" : 0,
            "force" : 0,
            "follow" : false,
            "trajectory_mode" : 0,
            "radio" : 0
        };
    },
    validateValue(value) {
        Ros1Rm_msgsForce_Position_Move_Pose_CustomSize(Ros1Rm_msgsForce_Position_Move_Pose_CustomCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsForce_Position_Move_Pose_CustomCapture(value), n = Ros1Rm_msgsForce_Position_Move_Pose_CustomSize(owned), w = new Writer(n);
        Ros1Rm_msgsForce_Position_Move_Pose_CustomWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 64, 90);
        if(owned.length < 64)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsForce_Position_Move_Pose_CustomRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsForce_Position_Move_Pose_CustomSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
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
    integer(value["trajectory_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["radio"], 1, false);
    n = addSize(n, 1);
    if(n > 64)
        bad(90);
    return n;
}

function Ros1Rm_msgsForce_Position_Move_Pose_CustomWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
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
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["radio"], true);
    w.at += 1;
}

function Ros1Rm_msgsForce_Position_Move_Pose_CustomRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
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

function Ros1Rm_msgsForce_Position_Move_Pose_CustomCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
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
        const field = value["trajectory_mode"];
        out["trajectory_mode"] = field;
    }
    {
        const field = value["radio"];
        out["radio"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Force_Position_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsForce_Position_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367",
    maxWireBytes : 75,
    minWireBytes : 11,
    cartesianMaxWireBytes : 75n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "force" : 0, "arm_err" : 0, "dof" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsForce_Position_StateSize(Ros1Rm_msgsForce_Position_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsForce_Position_StateCapture(value), n = Ros1Rm_msgsForce_Position_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsForce_Position_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 75, 90);
        if(owned.length < 11)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsForce_Position_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsForce_Position_StateSize(value)
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
    if(typeof value["force"] !== "number" || !Number.isFinite(value["force"]) || !Number.isFinite(Math.fround(value["force"])))
        bad();
    n = addSize(n, 4);
    integer(value["arm_err"], 2, false);
    n = addSize(n, 2);
    integer(value["dof"], 1, false);
    n = addSize(n, 1);
    if(n > 75)
        bad(90);
    return n;
}

function Ros1Rm_msgsForce_Position_StateWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["force"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["arm_err"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["dof"], true);
    w.at += 1;
}

function Ros1Rm_msgsForce_Position_StateRead(r)
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
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["arm_err"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["dof"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsForce_Position_StateCapture(value)
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
        const field = value["force"];
        out["force"] = field;
    }
    {
        const field = value["arm_err"];
        out["arm_err"] = field;
    }
    {
        const field = value["dof"];
        out["dof"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/GetArmState_Command codec; maxima are not actual lengths. */
export const Ros1Rm_msgsGetArmState_CommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsGetArmState_CommandSize(Ros1Rm_msgsGetArmState_CommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsGetArmState_CommandCapture(value), n = Ros1Rm_msgsGetArmState_CommandSize(owned), w = new Writer(n);
        Ros1Rm_msgsGetArmState_CommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsGetArmState_CommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsGetArmState_CommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsGetArmState_CommandWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros1Rm_msgsGetArmState_CommandRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsGetArmState_CommandCapture(value)
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

/** Complete ROS1 rm_msgs/Get_TCP_Master_List_Param codec; maxima are not actual lengths. */
export const Ros1Rm_msgsGet_TCP_Master_List_ParamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "vague_search" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsGet_TCP_Master_List_ParamSize(Ros1Rm_msgsGet_TCP_Master_List_ParamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsGet_TCP_Master_List_ParamCapture(value), n = Ros1Rm_msgsGet_TCP_Master_List_ParamSize(owned), w = new Writer(n);
        Ros1Rm_msgsGet_TCP_Master_List_ParamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsGet_TCP_Master_List_ParamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsGet_TCP_Master_List_ParamSize(value)
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

function Ros1Rm_msgsGet_TCP_Master_List_ParamWrite(value, w)
{
    w.v.setInt32(w.at, value["page_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["page_size"], true);
    w.at += 4;
    w.text(value["vague_search"], 256);
}

function Ros1Rm_msgsGet_TCP_Master_List_ParamRead(r)
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

function Ros1Rm_msgsGet_TCP_Master_List_ParamCapture(value)
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

/** Complete ROS1 rm_msgs/Gettrajectorylist codec; maxima are not actual lengths. */
export const Ros1Rm_msgsGettrajectorylistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0",
    maxWireBytes : 268,
    minWireBytes : 12,
    cartesianMaxWireBytes : 268n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "vague_search" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsGettrajectorylistSize(Ros1Rm_msgsGettrajectorylistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsGettrajectorylistCapture(value), n = Ros1Rm_msgsGettrajectorylistSize(owned), w = new Writer(n);
        Ros1Rm_msgsGettrajectorylistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 268, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsGettrajectorylistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsGettrajectorylistSize(value)
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

function Ros1Rm_msgsGettrajectorylistWrite(value, w)
{
    w.v.setInt32(w.at, value["page_num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["page_size"], true);
    w.at += 4;
    w.text(value["vague_search"], 256);
}

function Ros1Rm_msgsGettrajectorylistRead(r)
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

function Ros1Rm_msgsGettrajectorylistCapture(value)
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

/** Complete ROS1 rm_msgs/Gripper_Pick codec; maxima are not actual lengths. */
export const Ros1Rm_msgsGripper_PickCodec = Object.freeze({
    codecIdentity : "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0, "force" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsGripper_PickSize(Ros1Rm_msgsGripper_PickCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsGripper_PickCapture(value), n = Ros1Rm_msgsGripper_PickSize(owned), w = new Writer(n);
        Ros1Rm_msgsGripper_PickWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsGripper_PickRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsGripper_PickSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["speed"], 2, false);
    n = addSize(n, 2);
    integer(value["force"], 2, false);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsGripper_PickWrite(value, w)
{
    w.v.setUint16(w.at, value["speed"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["force"], true);
    w.at += 2;
}

function Ros1Rm_msgsGripper_PickRead(r)
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
    return value;
}

function Ros1Rm_msgsGripper_PickCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Gripper_Set codec; maxima are not actual lengths. */
export const Ros1Rm_msgsGripper_SetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"position" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsGripper_SetSize(Ros1Rm_msgsGripper_SetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsGripper_SetCapture(value), n = Ros1Rm_msgsGripper_SetSize(owned), w = new Writer(n);
        Ros1Rm_msgsGripper_SetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsGripper_SetRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsGripper_SetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["position"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsGripper_SetWrite(value, w)
{
    w.v.setUint16(w.at, value["position"], true);
    w.at += 2;
}

function Ros1Rm_msgsGripper_SetRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["position"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsGripper_SetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["position"];
        out["position"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Hand_Angle codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_AngleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_angle" : Array.from({length : 6}, () => (0)), "block" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsHand_AngleSize(Ros1Rm_msgsHand_AngleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_AngleCapture(value), n = Ros1Rm_msgsHand_AngleSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_AngleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_AngleRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_AngleSize(value)
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

function Ros1Rm_msgsHand_AngleWrite(value, w)
{
    for(const element of value["hand_angle"])
    {
        w.v.setInt16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsHand_AngleRead(r)
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

function Ros1Rm_msgsHand_AngleCapture(value)
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

/** Complete ROS1 rm_msgs/Hand_Force codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_ForceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_force" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsHand_ForceSize(Ros1Rm_msgsHand_ForceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_ForceCapture(value), n = Ros1Rm_msgsHand_ForceSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_ForceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_ForceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_ForceSize(value)
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

function Ros1Rm_msgsHand_ForceWrite(value, w)
{
    w.v.setUint16(w.at, value["hand_force"], true);
    w.at += 2;
}

function Ros1Rm_msgsHand_ForceRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["hand_force"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsHand_ForceCapture(value)
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

/** Complete ROS1 rm_msgs/Hand_Posture codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_PostureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"posture_num" : 0, "block" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsHand_PostureSize(Ros1Rm_msgsHand_PostureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_PostureCapture(value), n = Ros1Rm_msgsHand_PostureSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_PostureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_PostureRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_PostureSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["posture_num"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 3)
        bad(90);
    return n;
}

function Ros1Rm_msgsHand_PostureWrite(value, w)
{
    w.v.setUint16(w.at, value["posture_num"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsHand_PostureRead(r)
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
    return value;
}

function Ros1Rm_msgsHand_PostureCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Hand_Seq codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_SeqCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0",
    maxWireBytes : 3,
    minWireBytes : 3,
    cartesianMaxWireBytes : 3n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"seq_num" : 0, "block" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsHand_SeqSize(Ros1Rm_msgsHand_SeqCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_SeqCapture(value), n = Ros1Rm_msgsHand_SeqSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_SeqWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 3, 90);
        if(owned.length < 3)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_SeqRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_SeqSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["seq_num"], 2, false);
    n = addSize(n, 2);
    if(typeof value["block"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 3)
        bad(90);
    return n;
}

function Ros1Rm_msgsHand_SeqWrite(value, w)
{
    w.v.setUint16(w.at, value["seq_num"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["block"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsHand_SeqRead(r)
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
    return value;
}

function Ros1Rm_msgsHand_SeqCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Hand_Speed codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_SpeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"hand_speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsHand_SpeedSize(Ros1Rm_msgsHand_SpeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_SpeedCapture(value), n = Ros1Rm_msgsHand_SpeedSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_SpeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_SpeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_SpeedSize(value)
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

function Ros1Rm_msgsHand_SpeedWrite(value, w)
{
    w.v.setUint16(w.at, value["hand_speed"], true);
    w.at += 2;
}

function Ros1Rm_msgsHand_SpeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["hand_speed"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsHand_SpeedCapture(value)
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

/** Complete ROS1 rm_msgs/Hand_Status codec; maxima are not actual lengths. */
export const Ros1Rm_msgsHand_StatusCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8",
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
        Ros1Rm_msgsHand_StatusSize(Ros1Rm_msgsHand_StatusCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsHand_StatusCapture(value), n = Ros1Rm_msgsHand_StatusSize(owned), w = new Writer(n);
        Ros1Rm_msgsHand_StatusWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 50, 90);
        if(owned.length < 50)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsHand_StatusRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsHand_StatusSize(value)
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

function Ros1Rm_msgsHand_StatusWrite(value, w)
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

function Ros1Rm_msgsHand_StatusRead(r)
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

function Ros1Rm_msgsHand_StatusCapture(value)
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

/** Complete ROS1 rm_msgs/IO_Update codec; maxima are not actual lengths. */
export const Ros1Rm_msgsIO_UpdateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"type" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsIO_UpdateSize(Ros1Rm_msgsIO_UpdateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsIO_UpdateCapture(value), n = Ros1Rm_msgsIO_UpdateSize(owned), w = new Writer(n);
        Ros1Rm_msgsIO_UpdateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsIO_UpdateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsIO_UpdateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["type"], 1, false);
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Rm_msgsIO_UpdateWrite(value, w)
{
    w.v.setUint8(w.at, value["type"], true);
    w.at += 1;
}

function Ros1Rm_msgsIO_UpdateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsIO_UpdateCapture(value)
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

/** Complete ROS1 rm_msgs/JointPos codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJointPosCodec = Object.freeze({
    codecIdentity : "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623",
    maxWireBytes : 72,
    minWireBytes : 8,
    cartesianMaxWireBytes : 72n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "expand" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsJointPosSize(Ros1Rm_msgsJointPosCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJointPosCapture(value), n = Ros1Rm_msgsJointPosSize(owned), w = new Writer(n);
        Ros1Rm_msgsJointPosWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 72, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJointPosRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJointPosSize(value)
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
    if(typeof value["expand"] !== "number" || !Number.isFinite(value["expand"]) || !Number.isFinite(Math.fround(value["expand"])))
        bad();
    n = addSize(n, 4);
    if(n > 72)
        bad(90);
    return n;
}

function Ros1Rm_msgsJointPosWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["expand"], true);
    w.at += 4;
}

function Ros1Rm_msgsJointPosRead(r)
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
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["expand"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsJointPosCapture(value)
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
        const field = value["expand"];
        out["expand"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/JointPosCustom codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJointPosCustomCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676",
    maxWireBytes : 75,
    minWireBytes : 11,
    cartesianMaxWireBytes : 75n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "expand" : 0, "follow" : false, "trajectory_mode" : 0, "radio" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsJointPosCustomSize(Ros1Rm_msgsJointPosCustomCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJointPosCustomCapture(value), n = Ros1Rm_msgsJointPosCustomSize(owned), w = new Writer(n);
        Ros1Rm_msgsJointPosCustomWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 75, 90);
        if(owned.length < 11)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJointPosCustomRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJointPosCustomSize(value)
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
    if(typeof value["expand"] !== "number" || !Number.isFinite(value["expand"]) || !Number.isFinite(Math.fround(value["expand"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["follow"] !== "boolean")
        bad();
    n = addSize(n, 1);
    integer(value["trajectory_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["radio"], 1, false);
    n = addSize(n, 1);
    if(n > 75)
        bad(90);
    return n;
}

function Ros1Rm_msgsJointPosCustomWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["expand"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["follow"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["radio"], true);
    w.at += 1;
}

function Ros1Rm_msgsJointPosCustomRead(r)
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
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["expand"] = decoded;
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

function Ros1Rm_msgsJointPosCustomCapture(value)
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
        const field = value["expand"];
        out["expand"] = field;
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

/** Complete ROS1 rm_msgs/Joint_Current codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_CurrentCodec = Object.freeze({
    codecIdentity : "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_current" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_CurrentSize(Ros1Rm_msgsJoint_CurrentCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_CurrentCapture(value), n = Ros1Rm_msgsJoint_CurrentSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_CurrentWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_CurrentRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_CurrentSize(value)
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

function Ros1Rm_msgsJoint_CurrentWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_current"].length, true);
    w.at += 4;
    for(const element of value["joint_current"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsJoint_CurrentRead(r)
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

function Ros1Rm_msgsJoint_CurrentCapture(value)
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

/** Complete ROS1 rm_msgs/Joint_En_Flag codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_En_FlagCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8",
    maxWireBytes : 20,
    minWireBytes : 4,
    cartesianMaxWireBytes : 20n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_en_flag" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_En_FlagSize(Ros1Rm_msgsJoint_En_FlagCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_En_FlagCapture(value), n = Ros1Rm_msgsJoint_En_FlagSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_En_FlagWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 20, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_En_FlagRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_En_FlagSize(value)
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

function Ros1Rm_msgsJoint_En_FlagWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_en_flag"].length, true);
    w.at += 4;
    for(const element of value["joint_en_flag"])
    {
        w.v.setUint8(w.at, element ? 1 : 0, true);
        w.at += 1;
    }
}

function Ros1Rm_msgsJoint_En_FlagRead(r)
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

function Ros1Rm_msgsJoint_En_FlagCapture(value)
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

/** Complete ROS1 rm_msgs/Joint_Enable codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_EnableCodec = Object.freeze({
    codecIdentity : "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_num" : 0, "state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_EnableSize(Ros1Rm_msgsJoint_EnableCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_EnableCapture(value), n = Ros1Rm_msgsJoint_EnableSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_EnableWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_EnableRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_EnableSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["joint_num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsJoint_EnableWrite(value, w)
{
    w.v.setUint8(w.at, value["joint_num"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsJoint_EnableRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["joint_num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsJoint_EnableCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_num"];
        out["joint_num"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Joint_Error_Code codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_Error_CodeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361",
    maxWireBytes : 36,
    minWireBytes : 4,
    cartesianMaxWireBytes : 36n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_error" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_Error_CodeSize(Ros1Rm_msgsJoint_Error_CodeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_Error_CodeCapture(value), n = Ros1Rm_msgsJoint_Error_CodeSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_Error_CodeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 36, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_Error_CodeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_Error_CodeSize(value)
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
    if(n > 36)
        bad(90);
    return n;
}

function Ros1Rm_msgsJoint_Error_CodeWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_error"].length, true);
    w.at += 4;
    for(const element of value["joint_error"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
}

function Ros1Rm_msgsJoint_Error_CodeRead(r)
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
    return value;
}

function Ros1Rm_msgsJoint_Error_CodeCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Joint_Max_Speed codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_Max_SpeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_num" : 0, "joint_max_speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_Max_SpeedSize(Ros1Rm_msgsJoint_Max_SpeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_Max_SpeedCapture(value), n = Ros1Rm_msgsJoint_Max_SpeedSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_Max_SpeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_Max_SpeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_Max_SpeedSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["joint_num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["joint_max_speed"] !== "number" || !Number.isFinite(value["joint_max_speed"]) || !Number.isFinite(Math.fround(value["joint_max_speed"])))
        bad();
    n = addSize(n, 4);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Rm_msgsJoint_Max_SpeedWrite(value, w)
{
    w.v.setUint8(w.at, value["joint_num"], true);
    w.at += 1;
    w.v.setFloat32(w.at, value["joint_max_speed"], true);
    w.at += 4;
}

function Ros1Rm_msgsJoint_Max_SpeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["joint_num"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["joint_max_speed"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsJoint_Max_SpeedCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_num"];
        out["joint_num"] = field;
    }
    {
        const field = value["joint_max_speed"];
        out["joint_max_speed"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Joint_PoseEuler codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_PoseEulerCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"euler" : Array.from({length : 3}, () => (0)), "position" : Array.from({length : 3}, () => (0))};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_PoseEulerSize(Ros1Rm_msgsJoint_PoseEulerCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_PoseEulerCapture(value), n = Ros1Rm_msgsJoint_PoseEulerSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_PoseEulerWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_PoseEulerRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_PoseEulerSize(value)
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

function Ros1Rm_msgsJoint_PoseEulerWrite(value, w)
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

function Ros1Rm_msgsJoint_PoseEulerRead(r)
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

function Ros1Rm_msgsJoint_PoseEulerCapture(value)
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

/** Complete ROS1 rm_msgs/Joint_Speed codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_SpeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_speed" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_SpeedSize(Ros1Rm_msgsJoint_SpeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_SpeedCapture(value), n = Ros1Rm_msgsJoint_SpeedSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_SpeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_SpeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_SpeedSize(value)
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

function Ros1Rm_msgsJoint_SpeedWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_speed"].length, true);
    w.at += 4;
    for(const element of value["joint_speed"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsJoint_SpeedRead(r)
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

function Ros1Rm_msgsJoint_SpeedCapture(value)
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

/** Complete ROS1 rm_msgs/Joint_Step codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_StepCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b",
    maxWireBytes : 9,
    minWireBytes : 9,
    cartesianMaxWireBytes : 9n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_num" : 0, "step_angle" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_StepSize(Ros1Rm_msgsJoint_StepCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_StepCapture(value), n = Ros1Rm_msgsJoint_StepSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_StepWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 9, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_StepRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_StepSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["joint_num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["step_angle"] !== "number" || !Number.isFinite(value["step_angle"]) || !Number.isFinite(Math.fround(value["step_angle"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    if(n > 9)
        bad(90);
    return n;
}

function Ros1Rm_msgsJoint_StepWrite(value, w)
{
    w.v.setUint8(w.at, value["joint_num"], true);
    w.at += 1;
    w.v.setFloat32(w.at, value["step_angle"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
}

function Ros1Rm_msgsJoint_StepRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["joint_num"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["step_angle"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsJoint_StepCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_num"];
        out["joint_num"] = field;
    }
    {
        const field = value["step_angle"];
        out["step_angle"] = field;
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Joint_Teach codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_TeachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717",
    maxWireBytes : 264,
    minWireBytes : 8,
    cartesianMaxWireBytes : 264n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"teach_joint" : 0, "direction" : "", "v" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_TeachSize(Ros1Rm_msgsJoint_TeachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_TeachCapture(value), n = Ros1Rm_msgsJoint_TeachSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_TeachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 264, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_TeachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_TeachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["teach_joint"], 2, true);
    n = addSize(n, 2);
    n = addSize(n, 4 + textBytes(value["direction"], 256).length);
    integer(value["v"], 2, true);
    n = addSize(n, 2);
    if(n > 264)
        bad(90);
    return n;
}

function Ros1Rm_msgsJoint_TeachWrite(value, w)
{
    w.v.setInt16(w.at, value["teach_joint"], true);
    w.at += 2;
    w.text(value["direction"], 256);
    w.v.setInt16(w.at, value["v"], true);
    w.at += 2;
}

function Ros1Rm_msgsJoint_TeachRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["teach_joint"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["v"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsJoint_TeachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["teach_joint"];
        out["teach_joint"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["v"];
        out["v"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Joint_Temperature codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_TemperatureCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_temperature" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_TemperatureSize(Ros1Rm_msgsJoint_TemperatureCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_TemperatureCapture(value), n = Ros1Rm_msgsJoint_TemperatureSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_TemperatureWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_TemperatureRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_TemperatureSize(value)
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

function Ros1Rm_msgsJoint_TemperatureWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_temperature"].length, true);
    w.at += 4;
    for(const element of value["joint_temperature"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsJoint_TemperatureRead(r)
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

function Ros1Rm_msgsJoint_TemperatureCapture(value)
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

/** Complete ROS1 rm_msgs/Joint_Voltage codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJoint_VoltageCodec = Object.freeze({
    codecIdentity : "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_voltage" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsJoint_VoltageSize(Ros1Rm_msgsJoint_VoltageCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJoint_VoltageCapture(value), n = Ros1Rm_msgsJoint_VoltageSize(owned), w = new Writer(n);
        Ros1Rm_msgsJoint_VoltageWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJoint_VoltageRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJoint_VoltageSize(value)
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

function Ros1Rm_msgsJoint_VoltageWrite(value, w)
{
    w.v.setUint32(w.at, value["joint_voltage"].length, true);
    w.at += 4;
    for(const element of value["joint_voltage"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsJoint_VoltageRead(r)
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

function Ros1Rm_msgsJoint_VoltageCapture(value)
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

/** Complete ROS1 rm_msgs/Jointversion codec; maxima are not actual lengths. */
export const Ros1Rm_msgsJointversionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e",
    maxWireBytes : 1820,
    minWireBytes : 28,
    cartesianMaxWireBytes : 1820n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint_version" : Array.from({length : 7}, () => (""))};
    },
    validateValue(value) {
        Ros1Rm_msgsJointversionSize(Ros1Rm_msgsJointversionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsJointversionCapture(value), n = Ros1Rm_msgsJointversionSize(owned), w = new Writer(n);
        Ros1Rm_msgsJointversionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1820, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsJointversionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsJointversionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["joint_version"]) || value["joint_version"].length !== 7)
        bad();
    for(const element of value["joint_version"])
    {
        n = addSize(n, 4 + textBytes(element, 256).length);
    }
    if(n > 1820)
        bad(90);
    return n;
}

function Ros1Rm_msgsJointversionWrite(value, w)
{
    for(const element of value["joint_version"])
    {
        w.text(element, 256);
    }
}

function Ros1Rm_msgsJointversionRead(r)
{
    const value = {};
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["joint_version"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.text(256);
                value["joint_version"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsJointversionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["joint_version"];
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
        out["joint_version"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/LiftState codec; maxima are not actual lengths. */
export const Ros1Rm_msgsLiftStateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea",
    maxWireBytes : 7,
    minWireBytes : 7,
    cartesianMaxWireBytes : 7n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"height" : 0, "current" : 0, "err_flag" : 0, "mode" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsLiftStateSize(Ros1Rm_msgsLiftStateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsLiftStateCapture(value), n = Ros1Rm_msgsLiftStateSize(owned), w = new Writer(n);
        Ros1Rm_msgsLiftStateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 7, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsLiftStateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsLiftStateSize(value)
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
    integer(value["mode"], 1, true);
    n = addSize(n, 1);
    if(n > 7)
        bad(90);
    return n;
}

function Ros1Rm_msgsLiftStateWrite(value, w)
{
    w.v.setInt16(w.at, value["height"], true);
    w.at += 2;
    w.v.setInt16(w.at, value["current"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["err_flag"], true);
    w.at += 2;
    w.v.setInt8(w.at, value["mode"], true);
    w.at += 1;
}

function Ros1Rm_msgsLiftStateRead(r)
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
        const decoded = r.v.getInt8(r.take(1), true);
        value["mode"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsLiftStateCapture(value)
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

/** Complete ROS1 rm_msgs/Lift_Height codec; maxima are not actual lengths. */
export const Ros1Rm_msgsLift_HeightCodec = Object.freeze({
    codecIdentity : "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"height" : 0, "speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsLift_HeightSize(Ros1Rm_msgsLift_HeightCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsLift_HeightCapture(value), n = Ros1Rm_msgsLift_HeightSize(owned), w = new Writer(n);
        Ros1Rm_msgsLift_HeightWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsLift_HeightRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsLift_HeightSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["height"], 2, false);
    n = addSize(n, 2);
    integer(value["speed"], 2, false);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsLift_HeightWrite(value, w)
{
    w.v.setUint16(w.at, value["height"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["speed"], true);
    w.at += 2;
}

function Ros1Rm_msgsLift_HeightRead(r)
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
    return value;
}

function Ros1Rm_msgsLift_HeightCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Lift_In_Position codec; maxima are not actual lengths. */
export const Ros1Rm_msgsLift_In_PositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787",
    maxWireBytes : 263,
    minWireBytes : 7,
    cartesianMaxWireBytes : 263n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"device" : 0, "state" : "", "trajectory_connect" : 0, "trajectory_state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsLift_In_PositionSize(Ros1Rm_msgsLift_In_PositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsLift_In_PositionCapture(value), n = Ros1Rm_msgsLift_In_PositionSize(owned), w = new Writer(n);
        Ros1Rm_msgsLift_In_PositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 263, 90);
        if(owned.length < 7)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsLift_In_PositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsLift_In_PositionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["device"], 1, false);
    n = addSize(n, 1);
    n = addSize(n, 4 + textBytes(value["state"], 256).length);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(typeof value["trajectory_state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 263)
        bad(90);
    return n;
}

function Ros1Rm_msgsLift_In_PositionWrite(value, w)
{
    w.v.setUint8(w.at, value["device"], true);
    w.at += 1;
    w.text(value["state"], 256);
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["trajectory_state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsLift_In_PositionRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["device"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["state"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["trajectory_state"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsLift_In_PositionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["device"];
        out["device"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    {
        const field = value["trajectory_state"];
        out["trajectory_state"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Lift_Speed codec; maxima are not actual lengths. */
export const Ros1Rm_msgsLift_SpeedCodec = Object.freeze({
    codecIdentity : "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"speed" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsLift_SpeedSize(Ros1Rm_msgsLift_SpeedCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsLift_SpeedCapture(value), n = Ros1Rm_msgsLift_SpeedSize(owned), w = new Writer(n);
        Ros1Rm_msgsLift_SpeedWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsLift_SpeedRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsLift_SpeedSize(value)
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

function Ros1Rm_msgsLift_SpeedWrite(value, w)
{
    w.v.setInt16(w.at, value["speed"], true);
    w.at += 2;
}

function Ros1Rm_msgsLift_SpeedRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["speed"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsLift_SpeedCapture(value)
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

/** Complete ROS1 rm_msgs/Manual_Set_Force_Pose codec; maxima are not actual lengths. */
export const Ros1Rm_msgsManual_Set_Force_PoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0",
    maxWireBytes : 392,
    minWireBytes : 8,
    cartesianMaxWireBytes : 392n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"pose" : "", "joint" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsManual_Set_Force_PoseSize(Ros1Rm_msgsManual_Set_Force_PoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsManual_Set_Force_PoseCapture(value), n = Ros1Rm_msgsManual_Set_Force_PoseSize(owned), w = new Writer(n);
        Ros1Rm_msgsManual_Set_Force_PoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 392, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsManual_Set_Force_PoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsManual_Set_Force_PoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["pose"], 256).length);
    if(!Array.isArray(value["joint"]) || value["joint"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint"])
    {
        integer(element, 8, true);
        n = addSize(n, 8);
    }
    if(n > 392)
        bad(90);
    return n;
}

function Ros1Rm_msgsManual_Set_Force_PoseWrite(value, w)
{
    w.text(value["pose"], 256);
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setBigInt64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Rm_msgsManual_Set_Force_PoseRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
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
                const decoded = r.v.getBigInt64(r.take(8), true);
                value["joint"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsManual_Set_Force_PoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pose"];
        out["pose"] = field;
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
    return out;
}

/** Complete ROS1 rm_msgs/Mastername codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMasternameCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsMasternameSize(Ros1Rm_msgsMasternameCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMasternameCapture(value), n = Ros1Rm_msgsMasternameSize(owned), w = new Writer(n);
        Ros1Rm_msgsMasternameWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMasternameRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMasternameSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsMasternameWrite(value, w)
{
    w.text(value["master_name"], 256);
}

function Ros1Rm_msgsMasternameRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsMasternameCapture(value)
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

/** Complete ROS1 rm_msgs/Modbusreaddata codec; maxima are not actual lengths. */
export const Ros1Rm_msgsModbusreaddataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20",
    maxWireBytes : 68,
    minWireBytes : 4,
    cartesianMaxWireBytes : 68n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"read_data" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsModbusreaddataSize(Ros1Rm_msgsModbusreaddataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsModbusreaddataCapture(value), n = Ros1Rm_msgsModbusreaddataSize(owned), w = new Writer(n);
        Ros1Rm_msgsModbusreaddataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 68, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsModbusreaddataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsModbusreaddataSize(value)
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
    if(n > 68)
        bad(90);
    return n;
}

function Ros1Rm_msgsModbusreaddataWrite(value, w)
{
    w.v.setUint32(w.at, value["read_data"].length, true);
    w.at += 4;
    for(const element of value["read_data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsModbusreaddataRead(r)
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
    return value;
}

function Ros1Rm_msgsModbusreaddataCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Modbustcpmasterinfo codec; maxima are not actual lengths. */
export const Ros1Rm_msgsModbustcpmasterinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680",
    maxWireBytes : 524,
    minWireBytes : 12,
    cartesianMaxWireBytes : 524n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : "", "ip" : "", "port" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsModbustcpmasterinfoSize(Ros1Rm_msgsModbustcpmasterinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsModbustcpmasterinfoCapture(value), n = Ros1Rm_msgsModbustcpmasterinfoSize(owned), w = new Writer(n);
        Ros1Rm_msgsModbustcpmasterinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 524, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsModbustcpmasterinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsModbustcpmasterinfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    if(n > 524)
        bad(90);
    return n;
}

function Ros1Rm_msgsModbustcpmasterinfoWrite(value, w)
{
    w.text(value["master_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
}

function Ros1Rm_msgsModbustcpmasterinfoRead(r)
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
    return value;
}

function Ros1Rm_msgsModbustcpmasterinfoCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Modbustcpmasterlist codec; maxima are not actual lengths. */
export const Ros1Rm_msgsModbustcpmasterlistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1",
    maxWireBytes : 8388,
    minWireBytes : 4,
    cartesianMaxWireBytes : 8388n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_list" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsModbustcpmasterlistSize(Ros1Rm_msgsModbustcpmasterlistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsModbustcpmasterlistCapture(value), n = Ros1Rm_msgsModbustcpmasterlistSize(owned), w = new Writer(n);
        Ros1Rm_msgsModbustcpmasterlistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8388, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsModbustcpmasterlistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsModbustcpmasterlistSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["master_list"]) || value["master_list"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["master_list"])
    {
        n = addSize(n, Ros1Rm_msgsModbustcpmasterinfoSize(element));
    }
    if(n > 8388)
        bad(90);
    return n;
}

function Ros1Rm_msgsModbustcpmasterlistWrite(value, w)
{
    w.v.setUint32(w.at, value["master_list"].length, true);
    w.at += 4;
    for(const element of value["master_list"])
    {
        Ros1Rm_msgsModbustcpmasterinfoWrite(element, w);
    }
}

function Ros1Rm_msgsModbustcpmasterlistRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["master_list"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = Ros1Rm_msgsModbustcpmasterinfoRead(r);
                value["master_list"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsModbustcpmasterlistCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
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
            values[i] = Ros1Rm_msgsModbustcpmasterinfoCapture(element);
        }
        out["master_list"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/MoveC codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMoveCCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69",
    maxWireBytes : 119,
    minWireBytes : 119,
    cartesianMaxWireBytes : 119n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "Mid_Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "End_Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "speed" : 0,
            "loop" : 0,
            "trajectory_connect" : 0
        };
    },
    validateValue(value) {
        Ros1Rm_msgsMoveCSize(Ros1Rm_msgsMoveCCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMoveCCapture(value), n = Ros1Rm_msgsMoveCSize(owned), w = new Writer(n);
        Ros1Rm_msgsMoveCWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 119, 90);
        if(owned.length < 119)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMoveCRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMoveCSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Mid_Pose"]));
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["End_Pose"]));
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    integer(value["loop"], 2, false);
    n = addSize(n, 2);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(n > 119)
        bad(90);
    return n;
}

function Ros1Rm_msgsMoveCWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Mid_Pose"], w);
    Ros1Geometry_msgsPoseWrite(value["End_Pose"], w);
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setUint16(w.at, value["loop"], true);
    w.at += 2;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
}

function Ros1Rm_msgsMoveCRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Mid_Pose"] = decoded;
    }
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["End_Pose"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["loop"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsMoveCCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Mid_Pose"];
        out["Mid_Pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["End_Pose"];
        out["End_Pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["loop"];
        out["loop"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/MoveJ codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMoveJCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93",
    maxWireBytes : 73,
    minWireBytes : 9,
    cartesianMaxWireBytes : 73n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"joint" : [], "speed" : 0, "trajectory_connect" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsMoveJSize(Ros1Rm_msgsMoveJCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMoveJCapture(value), n = Ros1Rm_msgsMoveJSize(owned), w = new Writer(n);
        Ros1Rm_msgsMoveJWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 73, 90);
        if(owned.length < 9)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMoveJRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMoveJSize(value)
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
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(n > 73)
        bad(90);
    return n;
}

function Ros1Rm_msgsMoveJWrite(value, w)
{
    w.v.setUint32(w.at, value["joint"].length, true);
    w.at += 4;
    for(const element of value["joint"])
    {
        w.v.setFloat32(w.at, element, true);
        w.at += 4;
    }
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
}

function Ros1Rm_msgsMoveJRead(r)
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
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsMoveJCapture(value)
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
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/MoveJ_P codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMoveJ_PCodec = Object.freeze({
    codecIdentity : "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65",
    maxWireBytes : 61,
    minWireBytes : 61,
    cartesianMaxWireBytes : 61n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "speed" : 0, "trajectory_connect" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsMoveJ_PSize(Ros1Rm_msgsMoveJ_PCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMoveJ_PCapture(value), n = Ros1Rm_msgsMoveJ_PSize(owned), w = new Writer(n);
        Ros1Rm_msgsMoveJ_PWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 61, 90);
        if(owned.length < 61)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMoveJ_PRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMoveJ_PSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(n > 61)
        bad(90);
    return n;
}

function Ros1Rm_msgsMoveJ_PWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
}

function Ros1Rm_msgsMoveJ_PRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsMoveJ_PCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/MoveL codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMoveLCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49",
    maxWireBytes : 61,
    minWireBytes : 61,
    cartesianMaxWireBytes : 61n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Pose" : Ros1Geometry_msgsPoseCodec.defaultValue(), "speed" : 0, "trajectory_connect" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsMoveLSize(Ros1Rm_msgsMoveLCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMoveLCapture(value), n = Ros1Rm_msgsMoveLSize(owned), w = new Writer(n);
        Ros1Rm_msgsMoveLWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 61, 90);
        if(owned.length < 61)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMoveLRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMoveLSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["Pose"]));
    if(typeof value["speed"] !== "number" || !Number.isFinite(value["speed"]) || !Number.isFinite(Math.fround(value["speed"])))
        bad();
    n = addSize(n, 4);
    integer(value["trajectory_connect"], 1, false);
    n = addSize(n, 1);
    if(n > 61)
        bad(90);
    return n;
}

function Ros1Rm_msgsMoveLWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["Pose"], w);
    w.v.setFloat32(w.at, value["speed"], true);
    w.at += 4;
    w.v.setUint8(w.at, value["trajectory_connect"], true);
    w.at += 1;
}

function Ros1Rm_msgsMoveLRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["Pose"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["speed"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["trajectory_connect"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsMoveLCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Pose"];
        out["Pose"] = Ros1Geometry_msgsPoseCapture(field);
    }
    {
        const field = value["speed"];
        out["speed"] = field;
    }
    {
        const field = value["trajectory_connect"];
        out["trajectory_connect"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Moveloffset codec; maxima are not actual lengths. */
export const Ros1Rm_msgsMoveloffsetCodec = Object.freeze({
    codecIdentity : "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28",
    maxWireBytes : 67,
    minWireBytes : 67,
    cartesianMaxWireBytes : 67n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "offset" : Ros1Geometry_msgsPoseCodec.defaultValue(),
            "speed" : 0,
            "r" : 0,
            "trajectory_connect" : false,
            "frame_type" : false,
            "block" : false
        };
    },
    validateValue(value) {
        Ros1Rm_msgsMoveloffsetSize(Ros1Rm_msgsMoveloffsetCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsMoveloffsetCapture(value), n = Ros1Rm_msgsMoveloffsetSize(owned), w = new Writer(n);
        Ros1Rm_msgsMoveloffsetWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 67, 90);
        if(owned.length < 67)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsMoveloffsetRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsMoveloffsetSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Geometry_msgsPoseSize(value["offset"]));
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

function Ros1Rm_msgsMoveloffsetWrite(value, w)
{
    Ros1Geometry_msgsPoseWrite(value["offset"], w);
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

function Ros1Rm_msgsMoveloffsetRead(r)
{
    const value = {};
    {
        const decoded = Ros1Geometry_msgsPoseRead(r);
        value["offset"] = decoded;
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

function Ros1Rm_msgsMoveloffsetCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["offset"];
        out["offset"] = Ros1Geometry_msgsPoseCapture(field);
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

/** Complete ROS1 rm_msgs/Ort_Teach codec; maxima are not actual lengths. */
export const Ros1Rm_msgsOrt_TeachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497",
    maxWireBytes : 522,
    minWireBytes : 10,
    cartesianMaxWireBytes : 522n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"teach_type" : "", "direction" : "", "v" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsOrt_TeachSize(Ros1Rm_msgsOrt_TeachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsOrt_TeachCapture(value), n = Ros1Rm_msgsOrt_TeachSize(owned), w = new Writer(n);
        Ros1Rm_msgsOrt_TeachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 522, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsOrt_TeachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsOrt_TeachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["teach_type"], 256).length);
    n = addSize(n, 4 + textBytes(value["direction"], 256).length);
    integer(value["v"], 2, true);
    n = addSize(n, 2);
    if(n > 522)
        bad(90);
    return n;
}

function Ros1Rm_msgsOrt_TeachWrite(value, w)
{
    w.text(value["teach_type"], 256);
    w.text(value["direction"], 256);
    w.v.setInt16(w.at, value["v"], true);
    w.at += 2;
}

function Ros1Rm_msgsOrt_TeachRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["teach_type"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["v"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsOrt_TeachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["teach_type"];
        out["teach_type"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["v"];
        out["v"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Plan_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsPlan_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsPlan_StateSize(Ros1Rm_msgsPlan_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsPlan_StateCapture(value), n = Ros1Rm_msgsPlan_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsPlan_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsPlan_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsPlan_StateSize(value)
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

function Ros1Rm_msgsPlan_StateWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsPlan_StateRead(r)
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

function Ros1Rm_msgsPlan_StateCapture(value)
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

/** Complete ROS1 rm_msgs/Pos_Teach codec; maxima are not actual lengths. */
export const Ros1Rm_msgsPos_TeachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a",
    maxWireBytes : 522,
    minWireBytes : 10,
    cartesianMaxWireBytes : 522n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"teach_type" : "", "direction" : "", "v" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsPos_TeachSize(Ros1Rm_msgsPos_TeachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsPos_TeachCapture(value), n = Ros1Rm_msgsPos_TeachSize(owned), w = new Writer(n);
        Ros1Rm_msgsPos_TeachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 522, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsPos_TeachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsPos_TeachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["teach_type"], 256).length);
    n = addSize(n, 4 + textBytes(value["direction"], 256).length);
    integer(value["v"], 2, true);
    n = addSize(n, 2);
    if(n > 522)
        bad(90);
    return n;
}

function Ros1Rm_msgsPos_TeachWrite(value, w)
{
    w.text(value["teach_type"], 256);
    w.text(value["direction"], 256);
    w.v.setInt16(w.at, value["v"], true);
    w.at += 2;
}

function Ros1Rm_msgsPos_TeachRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["teach_type"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["direction"] = decoded;
    }
    {
        const decoded = r.v.getInt16(r.take(2), true);
        value["v"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsPos_TeachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["teach_type"];
        out["teach_type"] = field;
    }
    {
        const field = value["direction"];
        out["direction"] = field;
    }
    {
        const field = value["v"];
        out["v"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Programrunstate codec; maxima are not actual lengths. */
export const Ros1Rm_msgsProgramrunstateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a",
    maxWireBytes : 164,
    minWireBytes : 36,
    cartesianMaxWireBytes : 164n,
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
            "loop_cont" : []
        };
    },
    validateValue(value) {
        Ros1Rm_msgsProgramrunstateSize(Ros1Rm_msgsProgramrunstateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsProgramrunstateCapture(value), n = Ros1Rm_msgsProgramrunstateSize(owned), w = new Writer(n);
        Ros1Rm_msgsProgramrunstateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 164, 90);
        if(owned.length < 36)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsProgramrunstateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsProgramrunstateSize(value)
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
    if(n > 164)
        bad(90);
    return n;
}

function Ros1Rm_msgsProgramrunstateWrite(value, w)
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
}

function Ros1Rm_msgsProgramrunstateRead(r)
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
    return value;
}

function Ros1Rm_msgsProgramrunstateCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/RS485_Mode codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRS485_ModeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424",
    maxWireBytes : 10,
    minWireBytes : 10,
    cartesianMaxWireBytes : 10n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"controller_RS485_mode" : 0, "tool_RS485_mode" : 0, "baudrate" : 0, "modbus_timeout" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsRS485_ModeSize(Ros1Rm_msgsRS485_ModeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRS485_ModeCapture(value), n = Ros1Rm_msgsRS485_ModeSize(owned), w = new Writer(n);
        Ros1Rm_msgsRS485_ModeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 10, 90);
        if(owned.length < 10)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRS485_ModeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRS485_ModeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["controller_RS485_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["tool_RS485_mode"], 1, false);
    n = addSize(n, 1);
    integer(value["baudrate"], 4, false);
    n = addSize(n, 4);
    integer(value["modbus_timeout"], 4, false);
    n = addSize(n, 4);
    if(n > 10)
        bad(90);
    return n;
}

function Ros1Rm_msgsRS485_ModeWrite(value, w)
{
    w.v.setUint8(w.at, value["controller_RS485_mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["tool_RS485_mode"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["baudrate"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["modbus_timeout"], true);
    w.at += 4;
}

function Ros1Rm_msgsRS485_ModeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["controller_RS485_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["tool_RS485_mode"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["baudrate"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["modbus_timeout"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsRS485_ModeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["controller_RS485_mode"];
        out["controller_RS485_mode"] = field;
    }
    {
        const field = value["tool_RS485_mode"];
        out["tool_RS485_mode"] = field;
    }
    {
        const field = value["baudrate"];
        out["baudrate"] = field;
    }
    {
        const field = value["modbus_timeout"];
        out["modbus_timeout"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/RS485params codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRS485paramsCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec",
    maxWireBytes : 8,
    minWireBytes : 8,
    cartesianMaxWireBytes : 8n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"mode" : 0, "baudrate" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsRS485paramsSize(Ros1Rm_msgsRS485paramsCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRS485paramsCapture(value), n = Ros1Rm_msgsRS485paramsSize(owned), w = new Writer(n);
        Ros1Rm_msgsRS485paramsWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8, 90);
        if(owned.length < 8)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRS485paramsRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRS485paramsSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["mode"], 4, true);
    n = addSize(n, 4);
    integer(value["baudrate"], 4, true);
    n = addSize(n, 4);
    if(n > 8)
        bad(90);
    return n;
}

function Ros1Rm_msgsRS485paramsWrite(value, w)
{
    w.v.setInt32(w.at, value["mode"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["baudrate"], true);
    w.at += 4;
}

function Ros1Rm_msgsRS485paramsRead(r)
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
    return value;
}

function Ros1Rm_msgsRS485paramsCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Read_ModbusRTU codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRead_ModbusRTUCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969",
    maxWireBytes : 16,
    minWireBytes : 16,
    cartesianMaxWireBytes : 16n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "device" : 0, "num" : 0, "type" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsRead_ModbusRTUSize(Ros1Rm_msgsRead_ModbusRTUCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRead_ModbusRTUCapture(value), n = Ros1Rm_msgsRead_ModbusRTUSize(owned), w = new Writer(n);
        Ros1Rm_msgsRead_ModbusRTUWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 16, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRead_ModbusRTURead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRead_ModbusRTUSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    if(n > 16)
        bad(90);
    return n;
}

function Ros1Rm_msgsRead_ModbusRTUWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
}

function Ros1Rm_msgsRead_ModbusRTURead(r)
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
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsRead_ModbusRTUCapture(value)
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
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Read_Register codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRead_RegisterCodec = Object.freeze({
    codecIdentity : "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f",
    maxWireBytes : 13,
    minWireBytes : 13,
    cartesianMaxWireBytes : 13n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port" : 0, "address" : 0, "num" : 0, "device" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsRead_RegisterSize(Ros1Rm_msgsRead_RegisterCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRead_RegisterCapture(value), n = Ros1Rm_msgsRead_RegisterSize(owned), w = new Writer(n);
        Ros1Rm_msgsRead_RegisterWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 13, 90);
        if(owned.length < 13)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRead_RegisterRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRead_RegisterSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port"], 1, false);
    n = addSize(n, 1);
    integer(value["address"], 4, false);
    n = addSize(n, 4);
    integer(value["num"], 4, false);
    n = addSize(n, 4);
    integer(value["device"], 4, false);
    n = addSize(n, 4);
    if(n > 13)
        bad(90);
    return n;
}

function Ros1Rm_msgsRead_RegisterWrite(value, w)
{
    w.v.setUint8(w.at, value["port"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["address"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["num"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["device"], true);
    w.at += 4;
}

function Ros1Rm_msgsRead_RegisterRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["device"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsRead_RegisterCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Read_TCPandRTU codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRead_TCPandRTUCodec = Object.freeze({
    codecIdentity : "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9",
    maxWireBytes : 540,
    minWireBytes : 28,
    cartesianMaxWireBytes : 540n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "num" : 0, "ip" : "", "port" : 0, "master_name" : "", "device" : 0, "type" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsRead_TCPandRTUSize(Ros1Rm_msgsRead_TCPandRTUCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRead_TCPandRTUCapture(value), n = Ros1Rm_msgsRead_TCPandRTUSize(owned), w = new Writer(n);
        Ros1Rm_msgsRead_TCPandRTUWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 540, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRead_TCPandRTURead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRead_TCPandRTUSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    integer(value["num"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    if(n > 540)
        bad(90);
    return n;
}

function Ros1Rm_msgsRead_TCPandRTUWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["num"], true);
    w.at += 4;
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.text(value["master_name"], 256);
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
}

function Ros1Rm_msgsRead_TCPandRTURead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["num"] = decoded;
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
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["device"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsRead_TCPandRTUCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
    }
    {
        const field = value["num"];
        out["num"] = field;
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
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Register_Data codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRegister_DataCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867",
    maxWireBytes : 37,
    minWireBytes : 5,
    cartesianMaxWireBytes : 37n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false, "data" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsRegister_DataSize(Ros1Rm_msgsRegister_DataCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRegister_DataCapture(value), n = Ros1Rm_msgsRegister_DataSize(owned), w = new Writer(n);
        Ros1Rm_msgsRegister_DataWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 37, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRegister_DataRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRegister_DataSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    if(n > 37)
        bad(90);
    return n;
}

function Ros1Rm_msgsRegister_DataWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
}

function Ros1Rm_msgsRegister_DataRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["data"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint16(r.take(2), true);
                value["data"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsRegister_DataCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["state"];
        out["state"] = field;
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

/** Complete ROS1 rm_msgs/Rm_Plus_Base codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRm_Plus_BaseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6",
    maxWireBytes : 1597,
    minWireBytes : 61,
    cartesianMaxWireBytes : 1597n,
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
            "pos_up" : [],
            "pos_low" : [],
            "angle_up" : [],
            "angle_low" : [],
            "speed_up" : [],
            "speed_low" : [],
            "force_up" : [],
            "force_low" : []
        };
    },
    validateValue(value) {
        Ros1Rm_msgsRm_Plus_BaseSize(Ros1Rm_msgsRm_Plus_BaseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRm_Plus_BaseCapture(value), n = Ros1Rm_msgsRm_Plus_BaseSize(owned), w = new Writer(n);
        Ros1Rm_msgsRm_Plus_BaseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1597, 90);
        if(owned.length < 61)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRm_Plus_BaseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRm_Plus_BaseSize(value)
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
    if(!Array.isArray(value["pos_up"]) || value["pos_up"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pos_low"]) || value["pos_low"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle_up"]) || value["angle_up"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["angle_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle_low"]) || value["angle_low"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["angle_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed_up"]) || value["speed_up"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["speed_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed_low"]) || value["speed_low"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["speed_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force_up"]) || value["force_up"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["force_up"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force_low"]) || value["force_low"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["force_low"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 1597)
        bad(90);
    return n;
}

function Ros1Rm_msgsRm_Plus_BaseWrite(value, w)
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
    w.v.setUint32(w.at, value["pos_up"].length, true);
    w.at += 4;
    for(const element of value["pos_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["pos_low"].length, true);
    w.at += 4;
    for(const element of value["pos_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["angle_up"].length, true);
    w.at += 4;
    for(const element of value["angle_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["angle_low"].length, true);
    w.at += 4;
    for(const element of value["angle_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["speed_up"].length, true);
    w.at += 4;
    for(const element of value["speed_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["speed_low"].length, true);
    w.at += 4;
    for(const element of value["speed_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["force_up"].length, true);
    w.at += 4;
    for(const element of value["force_up"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["force_low"].length, true);
    w.at += 4;
    for(const element of value["force_low"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsRm_Plus_BaseRead(r)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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

function Ros1Rm_msgsRm_Plus_BaseCapture(value)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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
        if(!Number.isInteger(count) || count < 0 || count > 16)
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

/** Complete ROS1 rm_msgs/Rm_Plus_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsRm_Plus_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1",
    maxWireBytes : 892,
    minWireBytes : 60,
    cartesianMaxWireBytes : 892n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "sys_state" : 0,
            "sys_err" : 0,
            "dof_state" : [],
            "dof_err" : [],
            "pos" : [],
            "speed" : [],
            "angle" : [],
            "current" : [],
            "normal_force" : [],
            "tangential_force" : [],
            "tangential_force_dir" : [],
            "tsa" : [],
            "tma" : [],
            "touch_data" : [],
            "force" : []
        };
    },
    validateValue(value) {
        Ros1Rm_msgsRm_Plus_StateSize(Ros1Rm_msgsRm_Plus_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsRm_Plus_StateCapture(value), n = Ros1Rm_msgsRm_Plus_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsRm_Plus_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 892, 90);
        if(owned.length < 60)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsRm_Plus_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsRm_Plus_StateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["sys_state"], 4, true);
    n = addSize(n, 4);
    integer(value["sys_err"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["dof_state"]) || value["dof_state"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["dof_state"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["dof_err"]) || value["dof_err"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["dof_err"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["pos"]) || value["pos"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["pos"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["speed"]) || value["speed"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["speed"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["angle"]) || value["angle"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["angle"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["current"]) || value["current"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["current"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["normal_force"]) || value["normal_force"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["normal_force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tangential_force"]) || value["tangential_force"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tangential_force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tangential_force_dir"]) || value["tangential_force_dir"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tangential_force_dir"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tsa"]) || value["tsa"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tsa"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["tma"]) || value["tma"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["tma"])
    {
        integer(element, 4, false);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["touch_data"]) || value["touch_data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["touch_data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(!Array.isArray(value["force"]) || value["force"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["force"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    if(n > 892)
        bad(90);
    return n;
}

function Ros1Rm_msgsRm_Plus_StateWrite(value, w)
{
    w.v.setInt32(w.at, value["sys_state"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["sys_err"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["dof_state"].length, true);
    w.at += 4;
    for(const element of value["dof_state"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["dof_err"].length, true);
    w.at += 4;
    for(const element of value["dof_err"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["pos"].length, true);
    w.at += 4;
    for(const element of value["pos"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["speed"].length, true);
    w.at += 4;
    for(const element of value["speed"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["angle"].length, true);
    w.at += 4;
    for(const element of value["angle"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["current"].length, true);
    w.at += 4;
    for(const element of value["current"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["normal_force"].length, true);
    w.at += 4;
    for(const element of value["normal_force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["tangential_force"].length, true);
    w.at += 4;
    for(const element of value["tangential_force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["tangential_force_dir"].length, true);
    w.at += 4;
    for(const element of value["tangential_force_dir"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["tsa"].length, true);
    w.at += 4;
    for(const element of value["tsa"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["tma"].length, true);
    w.at += 4;
    for(const element of value["tma"])
    {
        w.v.setUint32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["touch_data"].length, true);
    w.at += 4;
    for(const element of value["touch_data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setUint32(w.at, value["force"].length, true);
    w.at += 4;
    for(const element of value["force"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
}

function Ros1Rm_msgsRm_Plus_StateRead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sys_state"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["sys_err"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
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

function Ros1Rm_msgsRm_Plus_StateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["sys_state"];
        out["sys_state"] = field;
    }
    {
        const field = value["sys_err"];
        out["sys_err"] = field;
    }
    {
        const field = value["dof_state"];
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
        out["dof_state"] = values;
    }
    {
        const field = value["dof_err"];
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
        out["dof_err"] = values;
    }
    {
        const field = value["pos"];
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
        out["pos"] = values;
    }
    {
        const field = value["speed"];
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
        out["speed"] = values;
    }
    {
        const field = value["angle"];
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
        out["angle"] = values;
    }
    {
        const field = value["current"];
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
        out["current"] = values;
    }
    {
        const field = value["normal_force"];
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
        out["normal_force"] = values;
    }
    {
        const field = value["tangential_force"];
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
        out["tangential_force"] = values;
    }
    {
        const field = value["tangential_force_dir"];
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
        out["tangential_force_dir"] = values;
    }
    {
        const field = value["tsa"];
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
        out["tsa"] = values;
    }
    {
        const field = value["tma"];
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
        out["tma"] = values;
    }
    {
        const field = value["touch_data"];
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
        out["touch_data"] = values;
    }
    {
        const field = value["force"];
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
        out["force"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Servo_GetAngle codec; maxima are not actual lengths. */
export const Ros1Rm_msgsServo_GetAngleCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"servo_id" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsServo_GetAngleSize(Ros1Rm_msgsServo_GetAngleCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsServo_GetAngleCapture(value), n = Ros1Rm_msgsServo_GetAngleSize(owned), w = new Writer(n);
        Ros1Rm_msgsServo_GetAngleWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsServo_GetAngleRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsServo_GetAngleSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["servo_id"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsServo_GetAngleWrite(value, w)
{
    w.v.setUint16(w.at, value["servo_id"], true);
    w.at += 2;
}

function Ros1Rm_msgsServo_GetAngleRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["servo_id"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsServo_GetAngleCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["servo_id"];
        out["servo_id"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Servo_Move codec; maxima are not actual lengths. */
export const Ros1Rm_msgsServo_MoveCodec = Object.freeze({
    codecIdentity : "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"servo_id" : 0, "angle" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsServo_MoveSize(Ros1Rm_msgsServo_MoveCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsServo_MoveCapture(value), n = Ros1Rm_msgsServo_MoveSize(owned), w = new Writer(n);
        Ros1Rm_msgsServo_MoveWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsServo_MoveRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsServo_MoveSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["servo_id"], 2, false);
    n = addSize(n, 2);
    integer(value["angle"], 2, false);
    n = addSize(n, 2);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsServo_MoveWrite(value, w)
{
    w.v.setUint16(w.at, value["servo_id"], true);
    w.at += 2;
    w.v.setUint16(w.at, value["angle"], true);
    w.at += 2;
}

function Ros1Rm_msgsServo_MoveRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["servo_id"] = decoded;
    }
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["angle"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsServo_MoveCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["servo_id"];
        out["servo_id"] = field;
    }
    {
        const field = value["angle"];
        out["angle"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Set_Force_Position codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSet_Force_PositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87",
    maxWireBytes : 5,
    minWireBytes : 5,
    cartesianMaxWireBytes : 5n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"sensor" : 0, "mode" : 0, "direction" : 0, "N" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsSet_Force_PositionSize(Ros1Rm_msgsSet_Force_PositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSet_Force_PositionCapture(value), n = Ros1Rm_msgsSet_Force_PositionSize(owned), w = new Writer(n);
        Ros1Rm_msgsSet_Force_PositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 5, 90);
        if(owned.length < 5)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSet_Force_PositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSet_Force_PositionSize(value)
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
    integer(value["N"], 2, true);
    n = addSize(n, 2);
    if(n > 5)
        bad(90);
    return n;
}

function Ros1Rm_msgsSet_Force_PositionWrite(value, w)
{
    w.v.setUint8(w.at, value["sensor"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["mode"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["direction"], true);
    w.at += 1;
    w.v.setInt16(w.at, value["N"], true);
    w.at += 2;
}

function Ros1Rm_msgsSet_Force_PositionRead(r)
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
        value["N"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsSet_Force_PositionCapture(value)
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
        const field = value["N"];
        out["N"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Set_Modbus_Mode codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSet_Modbus_ModeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e",
    maxWireBytes : 272,
    minWireBytes : 16,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port" : 0, "baudrate" : 0, "timeout" : 0, "ip" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsSet_Modbus_ModeSize(Ros1Rm_msgsSet_Modbus_ModeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSet_Modbus_ModeCapture(value), n = Ros1Rm_msgsSet_Modbus_ModeSize(owned), w = new Writer(n);
        Ros1Rm_msgsSet_Modbus_ModeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSet_Modbus_ModeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSet_Modbus_ModeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port"], 4, false);
    n = addSize(n, 4);
    integer(value["baudrate"], 4, false);
    n = addSize(n, 4);
    integer(value["timeout"], 4, false);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Rm_msgsSet_Modbus_ModeWrite(value, w)
{
    w.v.setUint32(w.at, value["port"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["baudrate"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["timeout"], true);
    w.at += 4;
    w.text(value["ip"], 256);
}

function Ros1Rm_msgsSet_Modbus_ModeRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["baudrate"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["timeout"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsSet_Modbus_ModeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["baudrate"];
        out["baudrate"] = field;
    }
    {
        const field = value["timeout"];
        out["timeout"] = field;
    }
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Set_Realtime_Push codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSet_Realtime_PushCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375",
    maxWireBytes : 276,
    minWireBytes : 20,
    cartesianMaxWireBytes : 276n,
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
            "joint_acc_enable" : false,
            "joint_speed_enable" : false,
            "lift_state_enable" : false,
            "tail_end_enable" : false,
            "rm_plus_base_enable" : false,
            "rm_plus_state_enable" : false
        };
    },
    validateValue(value) {
        Ros1Rm_msgsSet_Realtime_PushSize(Ros1Rm_msgsSet_Realtime_PushCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSet_Realtime_PushCapture(value), n = Ros1Rm_msgsSet_Realtime_PushSize(owned), w = new Writer(n);
        Ros1Rm_msgsSet_Realtime_PushWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 276, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSet_Realtime_PushRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSet_Realtime_PushSize(value)
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
    if(typeof value["joint_acc_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["joint_speed_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["lift_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["tail_end_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["rm_plus_base_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["rm_plus_state_enable"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 276)
        bad(90);
    return n;
}

function Ros1Rm_msgsSet_Realtime_PushWrite(value, w)
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
    w.v.setUint8(w.at, value["joint_acc_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["joint_speed_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["lift_state_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["tail_end_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["rm_plus_base_enable"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["rm_plus_state_enable"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsSet_Realtime_PushRead(r)
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
        value["joint_acc_enable"] = decoded !== 0;
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
        value["tail_end_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["rm_plus_base_enable"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["rm_plus_state_enable"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsSet_Realtime_PushCapture(value)
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
        const field = value["joint_acc_enable"];
        out["joint_acc_enable"] = field;
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
        const field = value["tail_end_enable"];
        out["tail_end_enable"] = field;
    }
    {
        const field = value["rm_plus_base_enable"];
        out["rm_plus_base_enable"] = field;
    }
    {
        const field = value["rm_plus_state_enable"];
        out["rm_plus_state_enable"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Six_Force codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSix_ForceCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720",
    maxWireBytes : 24,
    minWireBytes : 24,
    cartesianMaxWireBytes : 24n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"force_Fx" : 0, "force_Fy" : 0, "force_Fz" : 0, "force_Mx" : 0, "force_My" : 0, "force_Mz" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsSix_ForceSize(Ros1Rm_msgsSix_ForceCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSix_ForceCapture(value), n = Ros1Rm_msgsSix_ForceSize(owned), w = new Writer(n);
        Ros1Rm_msgsSix_ForceWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 24, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSix_ForceRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSix_ForceSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["force_Fx"] !== "number" || !Number.isFinite(value["force_Fx"]) || !Number.isFinite(Math.fround(value["force_Fx"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_Fy"] !== "number" || !Number.isFinite(value["force_Fy"]) || !Number.isFinite(Math.fround(value["force_Fy"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_Fz"] !== "number" || !Number.isFinite(value["force_Fz"]) || !Number.isFinite(Math.fround(value["force_Fz"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_Mx"] !== "number" || !Number.isFinite(value["force_Mx"]) || !Number.isFinite(Math.fround(value["force_Mx"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_My"] !== "number" || !Number.isFinite(value["force_My"]) || !Number.isFinite(Math.fround(value["force_My"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["force_Mz"] !== "number" || !Number.isFinite(value["force_Mz"]) || !Number.isFinite(Math.fround(value["force_Mz"])))
        bad();
    n = addSize(n, 4);
    if(n > 24)
        bad(90);
    return n;
}

function Ros1Rm_msgsSix_ForceWrite(value, w)
{
    w.v.setFloat32(w.at, value["force_Fx"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_Fy"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_Fz"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_Mx"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_My"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["force_Mz"], true);
    w.at += 4;
}

function Ros1Rm_msgsSix_ForceRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_Fx"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_Fy"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_Fz"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_Mx"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_My"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["force_Mz"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsSix_ForceCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["force_Fx"];
        out["force_Fx"] = field;
    }
    {
        const field = value["force_Fy"];
        out["force_Fy"] = field;
    }
    {
        const field = value["force_Fz"];
        out["force_Fz"] = field;
    }
    {
        const field = value["force_Mx"];
        out["force_Mx"] = field;
    }
    {
        const field = value["force_My"];
        out["force_My"] = field;
    }
    {
        const field = value["force_Mz"];
        out["force_Mz"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Socket_Command codec; maxima are not actual lengths. */
export const Ros1Rm_msgsSocket_CommandCodec = Object.freeze({
    codecIdentity : "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsSocket_CommandSize(Ros1Rm_msgsSocket_CommandCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsSocket_CommandCapture(value), n = Ros1Rm_msgsSocket_CommandSize(owned), w = new Writer(n);
        Ros1Rm_msgsSocket_CommandWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsSocket_CommandRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsSocket_CommandSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["command"], 2, false);
    n = addSize(n, 2);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsSocket_CommandWrite(value, w)
{
    w.v.setUint16(w.at, value["command"], true);
    w.at += 2;
}

function Ros1Rm_msgsSocket_CommandRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint16(r.take(2), true);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsSocket_CommandCapture(value)
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

/** Complete ROS1 rm_msgs/Start_Multi_Drag_Teach codec; maxima are not actual lengths. */
export const Ros1Rm_msgsStart_Multi_Drag_TeachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8",
    maxWireBytes : 32,
    minWireBytes : 32,
    cartesianMaxWireBytes : 32n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"free_axes" : Array.from({length : 6}, () => (0)), "frame" : 0, "singular_wall" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsStart_Multi_Drag_TeachSize(Ros1Rm_msgsStart_Multi_Drag_TeachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsStart_Multi_Drag_TeachCapture(value), n = Ros1Rm_msgsStart_Multi_Drag_TeachSize(owned), w = new Writer(n);
        Ros1Rm_msgsStart_Multi_Drag_TeachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 32, 90);
        if(owned.length < 32)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsStart_Multi_Drag_TeachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsStart_Multi_Drag_TeachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["free_axes"]) || value["free_axes"].length !== 6)
        bad();
    for(const element of value["free_axes"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    integer(value["frame"], 4, true);
    n = addSize(n, 4);
    integer(value["singular_wall"], 4, true);
    n = addSize(n, 4);
    if(n > 32)
        bad(90);
    return n;
}

function Ros1Rm_msgsStart_Multi_Drag_TeachWrite(value, w)
{
    for(const element of value["free_axes"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setInt32(w.at, value["frame"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["singular_wall"], true);
    w.at += 4;
}

function Ros1Rm_msgsStart_Multi_Drag_TeachRead(r)
{
    const value = {};
    {
        {
            const count = 6;
            if(count > 6)
                bad();
            value["free_axes"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt32(r.take(4), true);
                value["free_axes"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["frame"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["singular_wall"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsStart_Multi_Drag_TeachCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["free_axes"];
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
        out["free_axes"] = values;
    }
    {
        const field = value["frame"];
        out["frame"] = field;
    }
    {
        const field = value["singular_wall"];
        out["singular_wall"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Stop codec; maxima are not actual lengths. */
export const Ros1Rm_msgsStopCodec = Object.freeze({
    codecIdentity : "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsStopSize(Ros1Rm_msgsStopCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsStopCapture(value), n = Ros1Rm_msgsStopSize(owned), w = new Writer(n);
        Ros1Rm_msgsStopWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsStopRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsStopSize(value)
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

function Ros1Rm_msgsStopWrite(value, w)
{
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsStopRead(r)
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

function Ros1Rm_msgsStopCapture(value)
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

/** Complete ROS1 rm_msgs/Stop_Teach codec; maxima are not actual lengths. */
export const Ros1Rm_msgsStop_TeachCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e",
    maxWireBytes : 260,
    minWireBytes : 4,
    cartesianMaxWireBytes : 260n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"command" : ""};
    },
    validateValue(value) {
        Ros1Rm_msgsStop_TeachSize(Ros1Rm_msgsStop_TeachCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsStop_TeachCapture(value), n = Ros1Rm_msgsStop_TeachSize(owned), w = new Writer(n);
        Ros1Rm_msgsStop_TeachWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 260, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsStop_TeachRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsStop_TeachSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["command"], 256).length);
    if(n > 260)
        bad(90);
    return n;
}

function Ros1Rm_msgsStop_TeachWrite(value, w)
{
    w.text(value["command"], 256);
}

function Ros1Rm_msgsStop_TeachRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["command"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsStop_TeachCapture(value)
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

/** Complete ROS1 rm_msgs/Tool_Analog_Output codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTool_Analog_OutputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"voltage" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsTool_Analog_OutputSize(Ros1Rm_msgsTool_Analog_OutputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTool_Analog_OutputCapture(value), n = Ros1Rm_msgsTool_Analog_OutputSize(owned), w = new Writer(n);
        Ros1Rm_msgsTool_Analog_OutputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTool_Analog_OutputRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTool_Analog_OutputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["voltage"] !== "number" || !Number.isFinite(value["voltage"]) || !Number.isFinite(Math.fround(value["voltage"])))
        bad();
    n = addSize(n, 4);
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsTool_Analog_OutputWrite(value, w)
{
    w.v.setFloat32(w.at, value["voltage"], true);
    w.at += 4;
}

function Ros1Rm_msgsTool_Analog_OutputRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["voltage"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsTool_Analog_OutputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["voltage"];
        out["voltage"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Tool_Digital_Output codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTool_Digital_OutputCodec = Object.freeze({
    codecIdentity : "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e",
    maxWireBytes : 2,
    minWireBytes : 2,
    cartesianMaxWireBytes : 2n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"num" : 0, "state" : false};
    },
    validateValue(value) {
        Ros1Rm_msgsTool_Digital_OutputSize(Ros1Rm_msgsTool_Digital_OutputCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTool_Digital_OutputCapture(value), n = Ros1Rm_msgsTool_Digital_OutputSize(owned), w = new Writer(n);
        Ros1Rm_msgsTool_Digital_OutputWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 2, 90);
        if(owned.length < 2)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTool_Digital_OutputRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTool_Digital_OutputSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["num"], 1, false);
    n = addSize(n, 1);
    if(typeof value["state"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 2)
        bad(90);
    return n;
}

function Ros1Rm_msgsTool_Digital_OutputWrite(value, w)
{
    w.v.setUint8(w.at, value["num"], true);
    w.at += 1;
    w.v.setUint8(w.at, value["state"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Rm_msgsTool_Digital_OutputRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["num"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["state"] = decoded !== 0;
    }
    return value;
}

function Ros1Rm_msgsTool_Digital_OutputCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["num"];
        out["num"] = field;
    }
    {
        const field = value["state"];
        out["state"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Tool_IO_State codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTool_IO_StateCodec = Object.freeze({
    codecIdentity : "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84",
    maxWireBytes : 4,
    minWireBytes : 4,
    cartesianMaxWireBytes : 4n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"Tool_IO_Mode" : Array.from({length : 2}, () => (0)), "Tool_IO_State" : Array.from({length : 2}, () => (0))};
    },
    validateValue(value) {
        Ros1Rm_msgsTool_IO_StateSize(Ros1Rm_msgsTool_IO_StateCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTool_IO_StateCapture(value), n = Ros1Rm_msgsTool_IO_StateSize(owned), w = new Writer(n);
        Ros1Rm_msgsTool_IO_StateWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 4, 90);
        if(owned.length < 4)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTool_IO_StateRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTool_IO_StateSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["Tool_IO_Mode"]) || value["Tool_IO_Mode"].length !== 2)
        bad();
    for(const element of value["Tool_IO_Mode"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["Tool_IO_State"]) || value["Tool_IO_State"].length !== 2)
        bad();
    for(const element of value["Tool_IO_State"])
    {
        integer(element, 1, true);
        n = addSize(n, 1);
    }
    if(n > 4)
        bad(90);
    return n;
}

function Ros1Rm_msgsTool_IO_StateWrite(value, w)
{
    for(const element of value["Tool_IO_Mode"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
    for(const element of value["Tool_IO_State"])
    {
        w.v.setInt8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Rm_msgsTool_IO_StateRead(r)
{
    const value = {};
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["Tool_IO_Mode"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["Tool_IO_Mode"].push(decoded);
            }
        }
    }
    {
        {
            const count = 2;
            if(count > 2)
                bad();
            value["Tool_IO_State"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getInt8(r.take(1), true);
                value["Tool_IO_State"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsTool_IO_StateCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["Tool_IO_Mode"];
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
        out["Tool_IO_Mode"] = values;
    }
    {
        const field = value["Tool_IO_State"];
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
        out["Tool_IO_State"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Trajectoryinfo codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTrajectoryinfoCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd",
    maxWireBytes : 524,
    minWireBytes : 12,
    cartesianMaxWireBytes : 524n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"name" : "", "create_time" : "", "point_num" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsTrajectoryinfoSize(Ros1Rm_msgsTrajectoryinfoCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTrajectoryinfoCapture(value), n = Ros1Rm_msgsTrajectoryinfoSize(owned), w = new Writer(n);
        Ros1Rm_msgsTrajectoryinfoWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 524, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTrajectoryinfoRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTrajectoryinfoSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["name"], 256).length);
    n = addSize(n, 4 + textBytes(value["create_time"], 256).length);
    integer(value["point_num"], 4, true);
    n = addSize(n, 4);
    if(n > 524)
        bad(90);
    return n;
}

function Ros1Rm_msgsTrajectoryinfoWrite(value, w)
{
    w.text(value["name"], 256);
    w.text(value["create_time"], 256);
    w.v.setInt32(w.at, value["point_num"], true);
    w.at += 4;
}

function Ros1Rm_msgsTrajectoryinfoRead(r)
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
    return value;
}

function Ros1Rm_msgsTrajectoryinfoCapture(value)
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
    return out;
}

/** Complete ROS1 rm_msgs/Trajectorylist codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTrajectorylistCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9",
    maxWireBytes : 8660,
    minWireBytes : 20,
    cartesianMaxWireBytes : 8660n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"page_num" : 0, "page_size" : 0, "total_size" : 0, "vague_search" : "", "tra_list" : []};
    },
    validateValue(value) {
        Ros1Rm_msgsTrajectorylistSize(Ros1Rm_msgsTrajectorylistCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTrajectorylistCapture(value), n = Ros1Rm_msgsTrajectorylistSize(owned), w = new Writer(n);
        Ros1Rm_msgsTrajectorylistWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 8660, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTrajectorylistRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTrajectorylistSize(value)
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
        n = addSize(n, Ros1Rm_msgsTrajectoryinfoSize(element));
    }
    if(n > 8660)
        bad(90);
    return n;
}

function Ros1Rm_msgsTrajectorylistWrite(value, w)
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
        Ros1Rm_msgsTrajectoryinfoWrite(element, w);
    }
}

function Ros1Rm_msgsTrajectorylistRead(r)
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
                const decoded = Ros1Rm_msgsTrajectoryinfoRead(r);
                value["tra_list"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Rm_msgsTrajectorylistCapture(value)
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
            values[i] = Ros1Rm_msgsTrajectoryinfoCapture(element);
        }
        out["tra_list"] = values;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Turtle_Driver codec; maxima are not actual lengths. */
export const Ros1Rm_msgsTurtle_DriverCodec = Object.freeze({
    codecIdentity : "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe",
    maxWireBytes : 532,
    minWireBytes : 20,
    cartesianMaxWireBytes : 532n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"message_type" : "", "robot_mac_address" : "", "vx" : 0, "vy" : 0, "vtheta" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsTurtle_DriverSize(Ros1Rm_msgsTurtle_DriverCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsTurtle_DriverCapture(value), n = Ros1Rm_msgsTurtle_DriverSize(owned), w = new Writer(n);
        Ros1Rm_msgsTurtle_DriverWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 532, 90);
        if(owned.length < 20)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsTurtle_DriverRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsTurtle_DriverSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["message_type"], 256).length);
    n = addSize(n, 4 + textBytes(value["robot_mac_address"], 256).length);
    if(typeof value["vx"] !== "number" || !Number.isFinite(value["vx"]) || !Number.isFinite(Math.fround(value["vx"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["vy"] !== "number" || !Number.isFinite(value["vy"]) || !Number.isFinite(Math.fround(value["vy"])))
        bad();
    n = addSize(n, 4);
    if(typeof value["vtheta"] !== "number" || !Number.isFinite(value["vtheta"]) || !Number.isFinite(Math.fround(value["vtheta"])))
        bad();
    n = addSize(n, 4);
    if(n > 532)
        bad(90);
    return n;
}

function Ros1Rm_msgsTurtle_DriverWrite(value, w)
{
    w.text(value["message_type"], 256);
    w.text(value["robot_mac_address"], 256);
    w.v.setFloat32(w.at, value["vx"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["vy"], true);
    w.at += 4;
    w.v.setFloat32(w.at, value["vtheta"], true);
    w.at += 4;
}

function Ros1Rm_msgsTurtle_DriverRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["message_type"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["robot_mac_address"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vx"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vy"] = decoded;
    }
    {
        const decoded = r.v.getFloat32(r.take(4), true);
        if(!Number.isFinite(decoded))
            bad();
        value["vtheta"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsTurtle_DriverCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["message_type"];
        out["message_type"] = field;
    }
    {
        const field = value["robot_mac_address"];
        out["robot_mac_address"] = field;
    }
    {
        const field = value["vx"];
        out["vx"] = field;
    }
    {
        const field = value["vy"];
        out["vy"] = field;
    }
    {
        const field = value["vtheta"];
        out["vtheta"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/UpdateTCPmasterparam codec; maxima are not actual lengths. */
export const Ros1Rm_msgsUpdateTCPmasterparamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872",
    maxWireBytes : 784,
    minWireBytes : 16,
    cartesianMaxWireBytes : 784n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"master_name" : "", "new_name" : "", "ip" : "", "port" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsUpdateTCPmasterparamSize(Ros1Rm_msgsUpdateTCPmasterparamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsUpdateTCPmasterparamCapture(value), n = Ros1Rm_msgsUpdateTCPmasterparamSize(owned), w = new Writer(n);
        Ros1Rm_msgsUpdateTCPmasterparamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 784, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsUpdateTCPmasterparamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsUpdateTCPmasterparamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["new_name"], 256).length);
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    if(n > 784)
        bad(90);
    return n;
}

function Ros1Rm_msgsUpdateTCPmasterparamWrite(value, w)
{
    w.text(value["master_name"], 256);
    w.text(value["new_name"], 256);
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
}

function Ros1Rm_msgsUpdateTCPmasterparamRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["new_name"] = decoded;
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

function Ros1Rm_msgsUpdateTCPmasterparamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["new_name"];
        out["new_name"] = field;
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

/** Complete ROS1 rm_msgs/Write_ModbusRTU codec; maxima are not actual lengths. */
export const Ros1Rm_msgsWrite_ModbusRTUCodec = Object.freeze({
    codecIdentity : "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8",
    maxWireBytes : 80,
    minWireBytes : 16,
    cartesianMaxWireBytes : 80n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "data" : [], "type" : 0, "device" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsWrite_ModbusRTUSize(Ros1Rm_msgsWrite_ModbusRTUCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsWrite_ModbusRTUCapture(value), n = Ros1Rm_msgsWrite_ModbusRTUSize(owned), w = new Writer(n);
        Ros1Rm_msgsWrite_ModbusRTUWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 80, 90);
        if(owned.length < 16)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsWrite_ModbusRTURead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsWrite_ModbusRTUSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    if(n > 80)
        bad(90);
    return n;
}

function Ros1Rm_msgsWrite_ModbusRTUWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
}

function Ros1Rm_msgsWrite_ModbusRTURead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
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
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["device"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsWrite_ModbusRTUCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
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
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Write_Register codec; maxima are not actual lengths. */
export const Ros1Rm_msgsWrite_RegisterCodec = Object.freeze({
    codecIdentity : "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251",
    maxWireBytes : 49,
    minWireBytes : 17,
    cartesianMaxWireBytes : 49n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"port" : 0, "address" : 0, "num" : 0, "data" : [], "device" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsWrite_RegisterSize(Ros1Rm_msgsWrite_RegisterCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsWrite_RegisterCapture(value), n = Ros1Rm_msgsWrite_RegisterSize(owned), w = new Writer(n);
        Ros1Rm_msgsWrite_RegisterWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 49, 90);
        if(owned.length < 17)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsWrite_RegisterRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsWrite_RegisterSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["port"], 1, false);
    n = addSize(n, 1);
    integer(value["address"], 4, false);
    n = addSize(n, 4);
    integer(value["num"], 4, false);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 2, false);
        n = addSize(n, 2);
    }
    integer(value["device"], 4, false);
    n = addSize(n, 4);
    if(n > 49)
        bad(90);
    return n;
}

function Ros1Rm_msgsWrite_RegisterWrite(value, w)
{
    w.v.setUint8(w.at, value["port"], true);
    w.at += 1;
    w.v.setUint32(w.at, value["address"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["num"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setUint16(w.at, element, true);
        w.at += 2;
    }
    w.v.setUint32(w.at, value["device"], true);
    w.at += 4;
}

function Ros1Rm_msgsWrite_RegisterRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["address"] = decoded;
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
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
                const decoded = r.v.getUint16(r.take(2), true);
                value["data"].push(decoded);
            }
        }
    }
    {
        const decoded = r.v.getUint32(r.take(4), true);
        value["device"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsWrite_RegisterCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["address"];
        out["address"] = field;
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
    {
        const field = value["device"];
        out["device"] = field;
    }
    return out;
}

/** Complete ROS1 rm_msgs/Write_TCPandRTU codec; maxima are not actual lengths. */
export const Ros1Rm_msgsWrite_TCPandRTUCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a",
    maxWireBytes : 604,
    minWireBytes : 28,
    cartesianMaxWireBytes : 604n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"address" : 0, "data" : [], "ip" : "", "port" : 0, "master_name" : "", "type" : 0, "device" : 0};
    },
    validateValue(value) {
        Ros1Rm_msgsWrite_TCPandRTUSize(Ros1Rm_msgsWrite_TCPandRTUCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Rm_msgsWrite_TCPandRTUCapture(value), n = Ros1Rm_msgsWrite_TCPandRTUSize(owned), w = new Writer(n);
        Ros1Rm_msgsWrite_TCPandRTUWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 604, 90);
        if(owned.length < 28)
            bad();
        const r = new Reader(owned), value = Ros1Rm_msgsWrite_TCPandRTURead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Rm_msgsWrite_TCPandRTUSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    integer(value["address"], 4, true);
    n = addSize(n, 4);
    if(!Array.isArray(value["data"]) || value["data"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["data"])
    {
        integer(element, 4, true);
        n = addSize(n, 4);
    }
    n = addSize(n, 4 + textBytes(value["ip"], 256).length);
    integer(value["port"], 4, true);
    n = addSize(n, 4);
    n = addSize(n, 4 + textBytes(value["master_name"], 256).length);
    integer(value["type"], 4, true);
    n = addSize(n, 4);
    integer(value["device"], 4, true);
    n = addSize(n, 4);
    if(n > 604)
        bad(90);
    return n;
}

function Ros1Rm_msgsWrite_TCPandRTUWrite(value, w)
{
    w.v.setInt32(w.at, value["address"], true);
    w.at += 4;
    w.v.setUint32(w.at, value["data"].length, true);
    w.at += 4;
    for(const element of value["data"])
    {
        w.v.setInt32(w.at, element, true);
        w.at += 4;
    }
    w.text(value["ip"], 256);
    w.v.setInt32(w.at, value["port"], true);
    w.at += 4;
    w.text(value["master_name"], 256);
    w.v.setInt32(w.at, value["type"], true);
    w.at += 4;
    w.v.setInt32(w.at, value["device"], true);
    w.at += 4;
}

function Ros1Rm_msgsWrite_TCPandRTURead(r)
{
    const value = {};
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["address"] = decoded;
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
    {
        const decoded = r.text(256);
        value["ip"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["port"] = decoded;
    }
    {
        const decoded = r.text(256);
        value["master_name"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["type"] = decoded;
    }
    {
        const decoded = r.v.getInt32(r.take(4), true);
        value["device"] = decoded;
    }
    return value;
}

function Ros1Rm_msgsWrite_TCPandRTUCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["address"];
        out["address"] = field;
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
    {
        const field = value["ip"];
        out["ip"] = field;
    }
    {
        const field = value["port"];
        out["port"] = field;
    }
    {
        const field = value["master_name"];
        out["master_name"] = field;
    }
    {
        const field = value["type"];
        out["type"] = field;
    }
    {
        const field = value["device"];
        out["device"] = field;
    }
    return out;
}
