// @file bounded_records.mjs
// @brief Full leju js codecs and original record metadata.
// @details Complete leju ros1_main_packaged_ik values in js. 17 original records retain 55 fields and 15 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/leju/en_US/catalog/.
/**
 * Generated bounded-v2 canonical codecs. No ROS, filesystem or network imports.
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

/** Complete ROS1 motion_capture_ik/armHandPose codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikArmHandPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08",
    maxWireBytes : 136,
    minWireBytes : 136,
    cartesianMaxWireBytes : 136n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos_xyz" : Array.from({length : 3}, () => (0)),
            "quat_xyzw" : Array.from({length : 4}, () => (0)),
            "elbow_pos_xyz" : Array.from({length : 3}, () => (0)),
            "joint_angles" : Array.from({length : 7}, () => (0))
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikArmHandPoseSize(Ros1Motion_capture_ikArmHandPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikArmHandPoseCapture(value), n = Ros1Motion_capture_ikArmHandPoseSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikArmHandPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 136, 90);
        if(owned.length < 136)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikArmHandPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikArmHandPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos_xyz"]) || value["pos_xyz"].length !== 3)
        bad();
    for(const element of value["pos_xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["quat_xyzw"]) || value["quat_xyzw"].length !== 4)
        bad();
    for(const element of value["quat_xyzw"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["elbow_pos_xyz"]) || value["elbow_pos_xyz"].length !== 3)
        bad();
    for(const element of value["elbow_pos_xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["joint_angles"]) || value["joint_angles"].length !== 7)
        bad();
    for(const element of value["joint_angles"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 136)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikArmHandPoseWrite(value, w)
{
    for(const element of value["pos_xyz"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["quat_xyzw"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["elbow_pos_xyz"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["joint_angles"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Motion_capture_ikArmHandPoseRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["pos_xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos_xyz"].push(decoded);
            }
        }
    }
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["quat_xyzw"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["quat_xyzw"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["elbow_pos_xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["elbow_pos_xyz"].push(decoded);
            }
        }
    }
    {
        {
            const count = 7;
            if(count > 7)
                bad();
            value["joint_angles"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_angles"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Motion_capture_ikArmHandPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos_xyz"];
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
        out["pos_xyz"] = values;
    }
    {
        const field = value["quat_xyzw"];
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
        out["quat_xyzw"] = values;
    }
    {
        const field = value["elbow_pos_xyz"];
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
        out["elbow_pos_xyz"] = values;
    }
    {
        const field = value["joint_angles"];
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
        out["joint_angles"] = values;
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/armHandPoseFree codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikArmHandPoseFreeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf",
    maxWireBytes : 212,
    minWireBytes : 84,
    cartesianMaxWireBytes : 212n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "pos_xyz" : Array.from({length : 3}, () => (0)),
            "quat_xyzw" : Array.from({length : 4}, () => (0)),
            "elbow_pos_xyz" : Array.from({length : 3}, () => (0)),
            "joint_angles" : []
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikArmHandPoseFreeSize(Ros1Motion_capture_ikArmHandPoseFreeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikArmHandPoseFreeCapture(value), n = Ros1Motion_capture_ikArmHandPoseFreeSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikArmHandPoseFreeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 212, 90);
        if(owned.length < 84)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikArmHandPoseFreeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikArmHandPoseFreeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["pos_xyz"]) || value["pos_xyz"].length !== 3)
        bad();
    for(const element of value["pos_xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["quat_xyzw"]) || value["quat_xyzw"].length !== 4)
        bad();
    for(const element of value["quat_xyzw"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["elbow_pos_xyz"]) || value["elbow_pos_xyz"].length !== 3)
        bad();
    for(const element of value["elbow_pos_xyz"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["joint_angles"]) || value["joint_angles"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["joint_angles"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 212)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikArmHandPoseFreeWrite(value, w)
{
    for(const element of value["pos_xyz"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["quat_xyzw"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    for(const element of value["elbow_pos_xyz"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["joint_angles"].length, true);
    w.at += 4;
    for(const element of value["joint_angles"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Motion_capture_ikArmHandPoseFreeRead(r)
{
    const value = {};
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["pos_xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["pos_xyz"].push(decoded);
            }
        }
    }
    {
        {
            const count = 4;
            if(count > 4)
                bad();
            value["quat_xyzw"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["quat_xyzw"].push(decoded);
            }
        }
    }
    {
        {
            const count = 3;
            if(count > 3)
                bad();
            value["elbow_pos_xyz"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["elbow_pos_xyz"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["joint_angles"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["joint_angles"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Motion_capture_ikArmHandPoseFreeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["pos_xyz"];
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
        out["pos_xyz"] = values;
    }
    {
        const field = value["quat_xyzw"];
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
        out["quat_xyzw"] = values;
    }
    {
        const field = value["elbow_pos_xyz"];
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
        out["elbow_pos_xyz"] = values;
    }
    {
        const field = value["joint_angles"];
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
        out["joint_angles"] = values;
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/changeArmCtrlModeRequest codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec = Object.freeze({
    codecIdentity : "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"control_mode" : false};
    },
    validateValue(value) {
        Ros1Motion_capture_ikChangeArmCtrlModeRequestSize(Ros1Motion_capture_ikChangeArmCtrlModeRequestCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikChangeArmCtrlModeRequestCapture(value), n = Ros1Motion_capture_ikChangeArmCtrlModeRequestSize(owned),
              w = new Writer(n);
        Ros1Motion_capture_ikChangeArmCtrlModeRequestWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikChangeArmCtrlModeRequestRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikChangeArmCtrlModeRequestSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["control_mode"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikChangeArmCtrlModeRequestWrite(value, w)
{
    w.v.setUint8(w.at, value["control_mode"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Motion_capture_ikChangeArmCtrlModeRequestRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["control_mode"] = decoded !== 0;
    }
    return value;
}

function Ros1Motion_capture_ikChangeArmCtrlModeRequestCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["control_mode"];
        out["control_mode"] = field;
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/changeArmCtrlModeResponse codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac",
    maxWireBytes : 1,
    minWireBytes : 1,
    cartesianMaxWireBytes : 1n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"result" : false};
    },
    validateValue(value) {
        Ros1Motion_capture_ikChangeArmCtrlModeResponseSize(Ros1Motion_capture_ikChangeArmCtrlModeResponseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikChangeArmCtrlModeResponseCapture(value), n = Ros1Motion_capture_ikChangeArmCtrlModeResponseSize(owned),
              w = new Writer(n);
        Ros1Motion_capture_ikChangeArmCtrlModeResponseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 1, 90);
        if(owned.length < 1)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikChangeArmCtrlModeResponseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikChangeArmCtrlModeResponseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["result"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(n > 1)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikChangeArmCtrlModeResponseWrite(value, w)
{
    w.v.setUint8(w.at, value["result"] ? 1 : 0, true);
    w.at += 1;
}

function Ros1Motion_capture_ikChangeArmCtrlModeResponseRead(r)
{
    const value = {};
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["result"] = decoded !== 0;
    }
    return value;
}

function Ros1Motion_capture_ikChangeArmCtrlModeResponseCapture(value)
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

/** Complete ROS1 motion_capture_ik/handPose codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikHandPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f",
    maxWireBytes : 48,
    minWireBytes : 48,
    cartesianMaxWireBytes : 48n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"x" : 0, "y" : 0, "z" : 0, "roll" : 0, "pitch" : 0, "yaw" : 0};
    },
    validateValue(value) {
        Ros1Motion_capture_ikHandPoseSize(Ros1Motion_capture_ikHandPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikHandPoseCapture(value), n = Ros1Motion_capture_ikHandPoseSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikHandPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 48, 90);
        if(owned.length < 48)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikHandPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikHandPoseSize(value)
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
    if(typeof value["roll"] !== "number" || !Number.isFinite(value["roll"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["pitch"] !== "number" || !Number.isFinite(value["pitch"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["yaw"] !== "number" || !Number.isFinite(value["yaw"]))
        bad();
    n = addSize(n, 8);
    if(n > 48)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikHandPoseWrite(value, w)
{
    w.v.setFloat64(w.at, value["x"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["y"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["z"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["roll"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["pitch"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["yaw"], true);
    w.at += 8;
}

function Ros1Motion_capture_ikHandPoseRead(r)
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
        value["roll"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pitch"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["yaw"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikHandPoseCapture(value)
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

/** Complete ROS1 motion_capture_ik/ikSolveError codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikIkSolveErrorCodec = Object.freeze({
    codecIdentity : "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94",
    maxWireBytes : 356,
    minWireBytes : 100,
    cartesianMaxWireBytes : 356n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "ik_type" : "",
            "left_pose_error" : Ros1Motion_capture_ikHandPoseCodec.defaultValue(),
            "right_pose_error" : Ros1Motion_capture_ikHandPoseCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikIkSolveErrorSize(Ros1Motion_capture_ikIkSolveErrorCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikIkSolveErrorCapture(value), n = Ros1Motion_capture_ikIkSolveErrorSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikIkSolveErrorWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 356, 90);
        if(owned.length < 100)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikIkSolveErrorRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikIkSolveErrorSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, 4 + textBytes(value["ik_type"], 256).length);
    n = addSize(n, Ros1Motion_capture_ikHandPoseSize(value["left_pose_error"]));
    n = addSize(n, Ros1Motion_capture_ikHandPoseSize(value["right_pose_error"]));
    if(n > 356)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikIkSolveErrorWrite(value, w)
{
    w.text(value["ik_type"], 256);
    Ros1Motion_capture_ikHandPoseWrite(value["left_pose_error"], w);
    Ros1Motion_capture_ikHandPoseWrite(value["right_pose_error"], w);
}

function Ros1Motion_capture_ikIkSolveErrorRead(r)
{
    const value = {};
    {
        const decoded = r.text(256);
        value["ik_type"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikHandPoseRead(r);
        value["left_pose_error"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikHandPoseRead(r);
        value["right_pose_error"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikIkSolveErrorCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["ik_type"];
        out["ik_type"] = field;
    }
    {
        const field = value["left_pose_error"];
        out["left_pose_error"] = Ros1Motion_capture_ikHandPoseCapture(field);
    }
    {
        const field = value["right_pose_error"];
        out["right_pose_error"] = Ros1Motion_capture_ikHandPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/ikSolveParam codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikIkSolveParamCodec = Object.freeze({
    codecIdentity : "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981",
    maxWireBytes : 56,
    minWireBytes : 56,
    cartesianMaxWireBytes : 56n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "major_optimality_tol" : 0,
            "major_feasibility_tol" : 0,
            "minor_feasibility_tol" : 0,
            "major_iterations_limit" : 0,
            "oritation_constraint_tol" : 0,
            "pos_constraint_tol" : 0,
            "pos_cost_weight" : 0
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikIkSolveParamSize(Ros1Motion_capture_ikIkSolveParamCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikIkSolveParamCapture(value), n = Ros1Motion_capture_ikIkSolveParamSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikIkSolveParamWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 56, 90);
        if(owned.length < 56)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikIkSolveParamRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikIkSolveParamSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(typeof value["major_optimality_tol"] !== "number" || !Number.isFinite(value["major_optimality_tol"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["major_feasibility_tol"] !== "number" || !Number.isFinite(value["major_feasibility_tol"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["minor_feasibility_tol"] !== "number" || !Number.isFinite(value["minor_feasibility_tol"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["major_iterations_limit"] !== "number" || !Number.isFinite(value["major_iterations_limit"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["oritation_constraint_tol"] !== "number" || !Number.isFinite(value["oritation_constraint_tol"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["pos_constraint_tol"] !== "number" || !Number.isFinite(value["pos_constraint_tol"]))
        bad();
    n = addSize(n, 8);
    if(typeof value["pos_cost_weight"] !== "number" || !Number.isFinite(value["pos_cost_weight"]))
        bad();
    n = addSize(n, 8);
    if(n > 56)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikIkSolveParamWrite(value, w)
{
    w.v.setFloat64(w.at, value["major_optimality_tol"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["major_feasibility_tol"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["minor_feasibility_tol"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["major_iterations_limit"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["oritation_constraint_tol"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["pos_constraint_tol"], true);
    w.at += 8;
    w.v.setFloat64(w.at, value["pos_cost_weight"], true);
    w.at += 8;
}

function Ros1Motion_capture_ikIkSolveParamRead(r)
{
    const value = {};
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["major_optimality_tol"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["major_feasibility_tol"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["minor_feasibility_tol"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["major_iterations_limit"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["oritation_constraint_tol"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pos_constraint_tol"] = decoded;
    }
    {
        const decoded = r.v.getFloat64(r.take(8), true);
        if(!Number.isFinite(decoded))
            bad();
        value["pos_cost_weight"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikIkSolveParamCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["major_optimality_tol"];
        out["major_optimality_tol"] = field;
    }
    {
        const field = value["major_feasibility_tol"];
        out["major_feasibility_tol"] = field;
    }
    {
        const field = value["minor_feasibility_tol"];
        out["minor_feasibility_tol"] = field;
    }
    {
        const field = value["major_iterations_limit"];
        out["major_iterations_limit"] = field;
    }
    {
        const field = value["oritation_constraint_tol"];
        out["oritation_constraint_tol"] = field;
    }
    {
        const field = value["pos_constraint_tol"];
        out["pos_constraint_tol"] = field;
    }
    {
        const field = value["pos_cost_weight"];
        out["pos_cost_weight"] = field;
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/recordArmHandPose codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikRecordArmHandPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a",
    maxWireBytes : 272,
    minWireBytes : 272,
    cartesianMaxWireBytes : 272n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"left_pose" : Ros1Motion_capture_ikArmHandPoseCodec.defaultValue(), "right_pose" : Ros1Motion_capture_ikArmHandPoseCodec.defaultValue()};
    },
    validateValue(value) {
        Ros1Motion_capture_ikRecordArmHandPoseSize(Ros1Motion_capture_ikRecordArmHandPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikRecordArmHandPoseCapture(value), n = Ros1Motion_capture_ikRecordArmHandPoseSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikRecordArmHandPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 272, 90);
        if(owned.length < 272)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikRecordArmHandPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikRecordArmHandPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseSize(value["left_pose"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseSize(value["right_pose"]));
    if(n > 272)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikRecordArmHandPoseWrite(value, w)
{
    Ros1Motion_capture_ikArmHandPoseWrite(value["left_pose"], w);
    Ros1Motion_capture_ikArmHandPoseWrite(value["right_pose"], w);
}

function Ros1Motion_capture_ikRecordArmHandPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseRead(r);
        value["left_pose"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseRead(r);
        value["right_pose"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikRecordArmHandPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["left_pose"];
        out["left_pose"] = Ros1Motion_capture_ikArmHandPoseCapture(field);
    }
    {
        const field = value["right_pose"];
        out["right_pose"] = Ros1Motion_capture_ikArmHandPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/recordArmHandPoseFree codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikRecordArmHandPoseFreeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811",
    maxWireBytes : 424,
    minWireBytes : 168,
    cartesianMaxWireBytes : 424n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "left_pose" : Ros1Motion_capture_ikArmHandPoseFreeCodec.defaultValue(),
            "right_pose" : Ros1Motion_capture_ikArmHandPoseFreeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikRecordArmHandPoseFreeSize(Ros1Motion_capture_ikRecordArmHandPoseFreeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikRecordArmHandPoseFreeCapture(value), n = Ros1Motion_capture_ikRecordArmHandPoseFreeSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikRecordArmHandPoseFreeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 424, 90);
        if(owned.length < 168)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikRecordArmHandPoseFreeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikRecordArmHandPoseFreeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseFreeSize(value["left_pose"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseFreeSize(value["right_pose"]));
    if(n > 424)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikRecordArmHandPoseFreeWrite(value, w)
{
    Ros1Motion_capture_ikArmHandPoseFreeWrite(value["left_pose"], w);
    Ros1Motion_capture_ikArmHandPoseFreeWrite(value["right_pose"], w);
}

function Ros1Motion_capture_ikRecordArmHandPoseFreeRead(r)
{
    const value = {};
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseFreeRead(r);
        value["left_pose"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseFreeRead(r);
        value["right_pose"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikRecordArmHandPoseFreeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["left_pose"];
        out["left_pose"] = Ros1Motion_capture_ikArmHandPoseFreeCapture(field);
    }
    {
        const field = value["right_pose"];
        out["right_pose"] = Ros1Motion_capture_ikArmHandPoseFreeCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/robotArmQVVD codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikRobotArmQVVDCodec = Object.freeze({
    codecIdentity : "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb",
    maxWireBytes : 396,
    minWireBytes : 12,
    cartesianMaxWireBytes : 396n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"q" : [], "v" : [], "vd" : []};
    },
    validateValue(value) {
        Ros1Motion_capture_ikRobotArmQVVDSize(Ros1Motion_capture_ikRobotArmQVVDCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikRobotArmQVVDCapture(value), n = Ros1Motion_capture_ikRobotArmQVVDSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikRobotArmQVVDWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 396, 90);
        if(owned.length < 12)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikRobotArmQVVDRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikRobotArmQVVDSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    if(!Array.isArray(value["q"]) || value["q"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["q"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["v"]) || value["v"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["v"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(!Array.isArray(value["vd"]) || value["vd"].length > 16)
        bad();
    n = addSize(n, 4);
    for(const element of value["vd"])
    {
        if(typeof element !== "number" || !Number.isFinite(element))
            bad();
        n = addSize(n, 8);
    }
    if(n > 396)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikRobotArmQVVDWrite(value, w)
{
    w.v.setUint32(w.at, value["q"].length, true);
    w.at += 4;
    for(const element of value["q"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["v"].length, true);
    w.at += 4;
    for(const element of value["v"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
    w.v.setUint32(w.at, value["vd"].length, true);
    w.at += 4;
    for(const element of value["vd"])
    {
        w.v.setFloat64(w.at, element, true);
        w.at += 8;
    }
}

function Ros1Motion_capture_ikRobotArmQVVDRead(r)
{
    const value = {};
    {
        {
            const count = r.u32();
            if(count > 16)
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
            const count = r.u32();
            if(count > 16)
                bad();
            value["v"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["v"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 16)
                bad();
            value["vd"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getFloat64(r.take(8), true);
                if(!Number.isFinite(decoded))
                    bad();
                value["vd"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Motion_capture_ikRobotArmQVVDCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["q"];
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
        out["q"] = values;
    }
    {
        const field = value["v"];
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
        out["v"] = values;
    }
    {
        const field = value["vd"];
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
        out["vd"] = values;
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

/** Complete ROS1 motion_capture_ik/robotHandPosition codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikRobotHandPositionCodec = Object.freeze({
    codecIdentity : "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa",
    maxWireBytes : 792,
    minWireBytes : 24,
    cartesianMaxWireBytes : 792n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {"header" : Ros1Std_msgsHeaderCodec.defaultValue(), "left_hand_position" : [], "right_hand_position" : []};
    },
    validateValue(value) {
        Ros1Motion_capture_ikRobotHandPositionSize(Ros1Motion_capture_ikRobotHandPositionCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikRobotHandPositionCapture(value), n = Ros1Motion_capture_ikRobotHandPositionSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikRobotHandPositionWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 792, 90);
        if(owned.length < 24)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikRobotHandPositionRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikRobotHandPositionSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    if(!Array.isArray(value["left_hand_position"]) || value["left_hand_position"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["left_hand_position"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(!Array.isArray(value["right_hand_position"]) || value["right_hand_position"].length > 256)
        bad();
    n = addSize(n, 4);
    for(const element of value["right_hand_position"])
    {
        integer(element, 1, false);
        n = addSize(n, 1);
    }
    if(n > 792)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikRobotHandPositionWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    w.v.setUint32(w.at, value["left_hand_position"].length, true);
    w.at += 4;
    for(const element of value["left_hand_position"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
    w.v.setUint32(w.at, value["right_hand_position"].length, true);
    w.at += 4;
    for(const element of value["right_hand_position"])
    {
        w.v.setUint8(w.at, element, true);
        w.at += 1;
    }
}

function Ros1Motion_capture_ikRobotHandPositionRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["left_hand_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["left_hand_position"].push(decoded);
            }
        }
    }
    {
        {
            const count = r.u32();
            if(count > 256)
                bad();
            value["right_hand_position"] = [];
            for(let i = 0; i < count; ++i)
            {
                const decoded = r.v.getUint8(r.take(1), true);
                value["right_hand_position"].push(decoded);
            }
        }
    }
    return value;
}

function Ros1Motion_capture_ikRobotHandPositionCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["left_hand_position"];
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
        out["left_hand_position"] = values;
    }
    {
        const field = value["right_hand_position"];
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
        out["right_hand_position"] = values;
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/twoArmHandPose codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikTwoArmHandPoseCodec = Object.freeze({
    codecIdentity : "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181",
    maxWireBytes : 544,
    minWireBytes : 288,
    cartesianMaxWireBytes : 544n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "left_pose" : Ros1Motion_capture_ikArmHandPoseCodec.defaultValue(),
            "right_pose" : Ros1Motion_capture_ikArmHandPoseCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikTwoArmHandPoseSize(Ros1Motion_capture_ikTwoArmHandPoseCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikTwoArmHandPoseCapture(value), n = Ros1Motion_capture_ikTwoArmHandPoseSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikTwoArmHandPoseWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 544, 90);
        if(owned.length < 288)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikTwoArmHandPoseRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikTwoArmHandPoseSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseSize(value["left_pose"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseSize(value["right_pose"]));
    if(n > 544)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikTwoArmHandPoseWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Motion_capture_ikArmHandPoseWrite(value["left_pose"], w);
    Ros1Motion_capture_ikArmHandPoseWrite(value["right_pose"], w);
}

function Ros1Motion_capture_ikTwoArmHandPoseRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseRead(r);
        value["left_pose"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseRead(r);
        value["right_pose"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikTwoArmHandPoseCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["left_pose"];
        out["left_pose"] = Ros1Motion_capture_ikArmHandPoseCapture(field);
    }
    {
        const field = value["right_pose"];
        out["right_pose"] = Ros1Motion_capture_ikArmHandPoseCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/twoArmHandPoseCmd codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikTwoArmHandPoseCmdCodec = Object.freeze({
    codecIdentity : "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc",
    maxWireBytes : 602,
    minWireBytes : 346,
    cartesianMaxWireBytes : 602n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "hand_poses" : Ros1Motion_capture_ikTwoArmHandPoseCodec.defaultValue(),
            "use_custom_ik_param" : false,
            "joint_angles_as_q0" : false,
            "ik_param" : Ros1Motion_capture_ikIkSolveParamCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikTwoArmHandPoseCmdSize(Ros1Motion_capture_ikTwoArmHandPoseCmdCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikTwoArmHandPoseCmdCapture(value), n = Ros1Motion_capture_ikTwoArmHandPoseCmdSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikTwoArmHandPoseCmdWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 602, 90);
        if(owned.length < 346)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikTwoArmHandPoseCmdRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikTwoArmHandPoseCmdSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Motion_capture_ikTwoArmHandPoseSize(value["hand_poses"]));
    if(typeof value["use_custom_ik_param"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["joint_angles_as_q0"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros1Motion_capture_ikIkSolveParamSize(value["ik_param"]));
    if(n > 602)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdWrite(value, w)
{
    Ros1Motion_capture_ikTwoArmHandPoseWrite(value["hand_poses"], w);
    w.v.setUint8(w.at, value["use_custom_ik_param"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["joint_angles_as_q0"] ? 1 : 0, true);
    w.at += 1;
    Ros1Motion_capture_ikIkSolveParamWrite(value["ik_param"], w);
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdRead(r)
{
    const value = {};
    {
        const decoded = Ros1Motion_capture_ikTwoArmHandPoseRead(r);
        value["hand_poses"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["use_custom_ik_param"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["joint_angles_as_q0"] = decoded !== 0;
    }
    {
        const decoded = Ros1Motion_capture_ikIkSolveParamRead(r);
        value["ik_param"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_poses"];
        out["hand_poses"] = Ros1Motion_capture_ikTwoArmHandPoseCapture(field);
    }
    {
        const field = value["use_custom_ik_param"];
        out["use_custom_ik_param"] = field;
    }
    {
        const field = value["joint_angles_as_q0"];
        out["joint_angles_as_q0"] = field;
    }
    {
        const field = value["ik_param"];
        out["ik_param"] = Ros1Motion_capture_ikIkSolveParamCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/twoArmHandPoseFree codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikTwoArmHandPoseFreeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c",
    maxWireBytes : 696,
    minWireBytes : 184,
    cartesianMaxWireBytes : 696n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "header" : Ros1Std_msgsHeaderCodec.defaultValue(),
            "left_pose" : Ros1Motion_capture_ikArmHandPoseFreeCodec.defaultValue(),
            "right_pose" : Ros1Motion_capture_ikArmHandPoseFreeCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikTwoArmHandPoseFreeSize(Ros1Motion_capture_ikTwoArmHandPoseFreeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikTwoArmHandPoseFreeCapture(value), n = Ros1Motion_capture_ikTwoArmHandPoseFreeSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikTwoArmHandPoseFreeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 696, 90);
        if(owned.length < 184)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikTwoArmHandPoseFreeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikTwoArmHandPoseFreeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Std_msgsHeaderSize(value["header"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseFreeSize(value["left_pose"]));
    n = addSize(n, Ros1Motion_capture_ikArmHandPoseFreeSize(value["right_pose"]));
    if(n > 696)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikTwoArmHandPoseFreeWrite(value, w)
{
    Ros1Std_msgsHeaderWrite(value["header"], w);
    Ros1Motion_capture_ikArmHandPoseFreeWrite(value["left_pose"], w);
    Ros1Motion_capture_ikArmHandPoseFreeWrite(value["right_pose"], w);
}

function Ros1Motion_capture_ikTwoArmHandPoseFreeRead(r)
{
    const value = {};
    {
        const decoded = Ros1Std_msgsHeaderRead(r);
        value["header"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseFreeRead(r);
        value["left_pose"] = decoded;
    }
    {
        const decoded = Ros1Motion_capture_ikArmHandPoseFreeRead(r);
        value["right_pose"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikTwoArmHandPoseFreeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["header"];
        out["header"] = Ros1Std_msgsHeaderCapture(field);
    }
    {
        const field = value["left_pose"];
        out["left_pose"] = Ros1Motion_capture_ikArmHandPoseFreeCapture(field);
    }
    {
        const field = value["right_pose"];
        out["right_pose"] = Ros1Motion_capture_ikArmHandPoseFreeCapture(field);
    }
    return out;
}

/** Complete ROS1 motion_capture_ik/twoArmHandPoseCmdFree codec; maxima are not actual lengths. */
export const Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec = Object.freeze({
    codecIdentity : "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773",
    maxWireBytes : 754,
    minWireBytes : 242,
    cartesianMaxWireBytes : 754n,
    aggregateWireBytes : 0,
    constants : Object.freeze({}),
    defaultValue() {
        return {
            "hand_poses" : Ros1Motion_capture_ikTwoArmHandPoseFreeCodec.defaultValue(),
            "use_custom_ik_param" : false,
            "joint_angles_as_q0" : false,
            "ik_param" : Ros1Motion_capture_ikIkSolveParamCodec.defaultValue()
        };
    },
    validateValue(value) {
        Ros1Motion_capture_ikTwoArmHandPoseCmdFreeSize(Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCapture(value));
        return true;
    },
    encode(value) {
        const owned = Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCapture(value), n = Ros1Motion_capture_ikTwoArmHandPoseCmdFreeSize(owned), w = new Writer(n);
        Ros1Motion_capture_ikTwoArmHandPoseCmdFreeWrite(owned, w);
        if(w.at !== n)
            bad();
        return w.b;
    },
    decode(bytes) {
        const owned = copyRaw(bytes, 754, 90);
        if(owned.length < 242)
            bad();
        const r = new Reader(owned), value = Ros1Motion_capture_ikTwoArmHandPoseCmdFreeRead(r);
        if(r.at !== owned.length)
            bad();
        return value;
    },
    valid(bytes) {
        try
        {
            this.decode(bytes);
            return true;
        }
        catch
        {
            return false;
        }
    }
});

function Ros1Motion_capture_ikTwoArmHandPoseCmdFreeSize(value)
{
    if(value === null || typeof value !== "object")
        bad();
    let n = 0;
    n = addSize(n, Ros1Motion_capture_ikTwoArmHandPoseFreeSize(value["hand_poses"]));
    if(typeof value["use_custom_ik_param"] !== "boolean")
        bad();
    n = addSize(n, 1);
    if(typeof value["joint_angles_as_q0"] !== "boolean")
        bad();
    n = addSize(n, 1);
    n = addSize(n, Ros1Motion_capture_ikIkSolveParamSize(value["ik_param"]));
    if(n > 754)
        bad(90);
    return n;
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdFreeWrite(value, w)
{
    Ros1Motion_capture_ikTwoArmHandPoseFreeWrite(value["hand_poses"], w);
    w.v.setUint8(w.at, value["use_custom_ik_param"] ? 1 : 0, true);
    w.at += 1;
    w.v.setUint8(w.at, value["joint_angles_as_q0"] ? 1 : 0, true);
    w.at += 1;
    Ros1Motion_capture_ikIkSolveParamWrite(value["ik_param"], w);
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdFreeRead(r)
{
    const value = {};
    {
        const decoded = Ros1Motion_capture_ikTwoArmHandPoseFreeRead(r);
        value["hand_poses"] = decoded;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["use_custom_ik_param"] = decoded !== 0;
    }
    {
        const decoded = r.v.getUint8(r.take(1), true);
        if(decoded > 1)
            bad();
        value["joint_angles_as_q0"] = decoded !== 0;
    }
    {
        const decoded = Ros1Motion_capture_ikIkSolveParamRead(r);
        value["ik_param"] = decoded;
    }
    return value;
}

function Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCapture(value)
{
    if(value === null || typeof value !== "object")
        bad();
    const out = Object.create(null);
    {
        const field = value["hand_poses"];
        out["hand_poses"] = Ros1Motion_capture_ikTwoArmHandPoseFreeCapture(field);
    }
    {
        const field = value["use_custom_ik_param"];
        out["use_custom_ik_param"] = field;
    }
    {
        const field = value["joint_angles_as_q0"];
        out["joint_angles_as_q0"] = field;
    }
    {
        const field = value["ik_param"];
        out["ik_param"] = Ros1Motion_capture_ikIkSolveParamCapture(field);
    }
    return out;
}
